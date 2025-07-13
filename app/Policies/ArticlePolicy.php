<?php

namespace App\Policies;

use App\Models\Article;
use App\Models\User;
use Illuminate\Auth\Access\Response;

class ArticlePolicy
{

    public function viewAny(User $user): bool
    {
        return false;
    }

    public function view(User $user, Article $article): bool
    {
        return $user->hasRole('Admin') || $user->id === $article->author_id;
    }

    public function create(User $user): bool
    {
        return false;
    }

    public function update(User $user, Article $article): bool
    {
        return $user->hasRole('Admin') || $user->id === $article->author_id;
    }

    public function delete(User $user, Article $article): bool
    {
        // if ($user->hasRole('Admin')) {
        //     return true; // Admin can delete any article
        // }

        // Author can only delete their own article AND not admin's
        // return $user->hasRole('Author') &&
        //     $user->id === $article->author_id &&
        //     !$article->author->hasRole('Admin');

        return $user->hasRole('Admin') || $user->id === $article->author_id;
    }

    public function restore(User $user, Article $article): bool
    {
        return false;
    }

    public function forceDelete(User $user, Article $article): bool
    {
        return false;
    }
}
