<?php

namespace App\Http\Controllers\Api;

use App\Models\Article;
use Illuminate\Http\Request;
use App\Jobs\GenerateSlugJob;
use App\Jobs\GenerateSummaryJob;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Auth\Access\AuthorizationException;
use App\Http\Resources\ArticlesResource;

class ArticleController extends Controller
{
    use AuthorizesRequests;
    public function index(Request $request)
    {
        try {
            $user = $request->user();
            $query = Article::with('categories', 'author');

            if ($user->hasRole('Author')) {
                $query->where('author_id', $user->id);
            }

            if ($request->has('status')) {
                $query->where('status', $request->status);
            }

            if ($request->has('category')) {
                $query->whereHas('categories', fn($q) => $q->where('name', $request->category));
            }

            if ($request->has('from') && $request->has('to')) {
                $query->whereBetween('published_at', [$request->from, $request->to]);
            }

            $articles = $query->latest()->get();

            if ($user->hasRole('Author') && $articles->isEmpty()) {
                return response()->json([
                    'status' => false,
                    'message' => 'Unauthorized to view this article!'
                ], 403);
            }

            if ($articles->isEmpty()) {
                return response()->json([
                    'status' => false,
                    'message' => 'No articles found'
                ]);
            }

            return response()->json([
                'status' => true,
                'message' => 'Articles fetched successfully',
                'data' => ArticlesResource::collection($articles)
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage(),
            ]);
        }
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'title' => 'required|string',
            'content' => 'required|string',
            'status' => 'required|in:Draft,Published,Archived',
            'published_at' => 'nullable|date',
            'category_ids' => 'sometimes|array',
            'category_ids.*' => 'exists:categories,id',
        ]);

        try {
            $data['author_id'] = $request->user()->id;
            $article = Article::create($data);
            $article->categories()->sync($request->category_ids);

            dispatch(new GenerateSlugJob($article));
            dispatch(new GenerateSummaryJob($article));

            return response()->json([
                'status' => true,
                'message' => 'Article created. AI processing in background.'
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage(),
            ]);
        }
    }

    public function show(Request $request, $id)
    {
        try {
            $user = $request->user();

            $article = Article::with('categories', 'author')->find($id);

            if (!$article) {
                return response()->json([
                    'status' => false,
                    'message' => 'Article not found'
                ], 404);
            }

            if ($user->hasRole('Author') && $user->id !== $article->author_id) {
                return response()->json([
                    'status' => false,
                    'message' => 'Unauthorized to view this article!'
                ], 403);
            }

            //Laravel will auto-check your ArticlePolicy@view
            // $this->authorize('view', $article);

            return response()->json([
                'status' => true,
                'message' => 'Article fetched successfully',
                'data' => new ArticlesResource($article),
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage(),
            ]);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $article = Article::find($id);

            if (!$article) {
                return response()->json([
                    'status' => false,
                    'message' => 'Article not found'
                ], 404);
            }

            $this->authorize('update', $article);

            $data = $request->validate([
                'title' => 'sometimes|string',
                'content' => 'sometimes|string',
                'status' => 'sometimes|in:Draft,Published,Archived',
                'published_at' => 'nullable|date',
                'category_ids' => 'sometimes|array',
                'category_ids.*' => 'exists:categories,id',
            ]);

            $article->update($data);

            if ($request->has('category_ids')) {
                $article->categories()->sync($request->category_ids);
            }

            $article->load('categories', 'author');

            dispatch(new GenerateSlugJob($article));
            dispatch(new GenerateSummaryJob($article));

            return response()->json([
                'status' => true,
                'message' => 'Article updated. AI processing in background.',
                'data' => new ArticlesResource($article)
            ]);
        } catch (AuthorizationException $e) {
            return response()->json([
                'status' => false,
                'message' => 'You are not authorized to update this article'
            ], 403);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage(),
            ]);
        }
    }

    public function destroy($id)
    {
        try {
            $article = Article::find($id);

            if (!$article) {
                return response()->json([
                    'status' => false,
                    'message' => 'Article not found'
                ], 404);
            }

            $this->authorize('delete', $article);

            $article->delete();

            return response()->json([
                'status' => true,
                'message' => 'Article deleted'
            ]);
        } catch (AuthorizationException $e) {
            return response()->json([
                'status' => false,
                'message' => 'You are not authorized to delete this article'
            ], 403);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage(),
            ]);
        }
    }
}
