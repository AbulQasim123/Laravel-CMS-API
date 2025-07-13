<?php

namespace App\Jobs;

use App\Models\Article;
use Illuminate\Support\Str;
use Illuminate\Foundation\Queue\Queueable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class GenerateSlugJob implements ShouldQueue
{
    use InteractsWithQueue, Queueable;
    /**
     * Create a new job instance.
     */
    public function __construct(public Article $article) {}

    public function handle()
    {
        $slug = Str::slug($this->article->title);
        $this->article->update(['slug' => $slug]);
    }
}
