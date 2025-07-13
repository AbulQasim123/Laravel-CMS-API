<?php

namespace App\Jobs;

use App\Models\Article;
use Illuminate\Foundation\Queue\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class GenerateSummaryJob implements ShouldQueue
{
    use Queueable;

    /**
     * Create a new job instance.
     */
    use InteractsWithQueue, Queueable;

    public function __construct(public Article $article) {}

    public function handle()
    {
        // Because I don't have any AI Paid API, I'm using a mock data
        $mockSummaries = [
            'This article explores the future of technology.',
            'A deep dive into innovative business strategies.',
            'Learn the secrets behind modern design thinking.',
            'Discover insights from successful entrepreneurs.',
            'Tips and tricks for improving daily productivity.',
            'Unlock the power of collaboration in the workplace.',
            'How to navigate complex technical challenges.',
            'Mastering the art of problem-solving.',
            'Unveiling the hidden gems of the tech industry.',
            'The future of software development in a nutshell.',
            'From coding to cooking: A culinary exploration of technology.',
            'Unlocking the potential of AI in daily life.',
            'How remote work is reshaping modern careers.',
            'Understanding the impact of climate change.',
            'A beginner’s guide to personal finance.',
            'Breaking down complex scientific discoveries.',
            'How to build a minimalist lifestyle.',
            'Trends that are shaping the fashion world.',
            'Essential tips for solo travelers.',
            'The science behind better sleep habits.',
            'Exploring the role of culture in global business.',
            'How sports influence national identity.',
            'A look into parenting in the digital age.',
            'How politics impacts everyday economics.',
            'The evolution of entertainment media.',
            'Real estate trends to watch this year.',
            'Exploring the intersection of art and technology.',
            'How gaming became a billion-dollar industry.',
            'Best practices for a balanced work-life.',
            'Health tips backed by modern science.',
            'How education is adapting to online learning.',
            'Career advice for a competitive job market.',
            'Food trends you need to know this season.',
            'Why sustainability matters more than ever.',
            'Building emotional intelligence at work.',
            'The rise of smart cities and their challenges.',
            'How books continue to inspire modern thinkers.',
            'The economics of streaming services.',
            'What ancient cultures teach us about community.',
            'How fashion influences personal identity.',
            'Technology’s role in global healthcare.',
            'Financial literacy tips for young adults.',
            'The art of storytelling in marketing.',
            'How climate change affects local farming.',
            'A new perspective on mindfulness.',
            'Travel tips for digital nomads.',
            'The impact of AI on human creativity.',
            'Science-backed ways to stay focused.',
            'How small habits lead to big changes.',
            'Lessons learned from historical leaders.'
        ];

        $summary = $mockSummaries[array_rand($mockSummaries)];
        $this->article->update(['summary' => $summary]);
    }
}
