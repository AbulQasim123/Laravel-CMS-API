<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\Attributes\{
    Title,
    Layout,
};

#[Layout('admin.layouts.app')]
#[Title('Dashboard Page')]
class Dashboard extends Component
{
    public function mount()
    {
        usleep(500000);
    }

    public function render()
    {
        return view('livewire.dashboard');
    }
}
