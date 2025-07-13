<?php

namespace App\Livewire;

use App\Models\AnotherUser;
use Livewire\Component;
use Livewire\WithPagination;
use Livewire\Attributes\{
    Title,
    Layout,
};

#[Layout('admin.layouts.app')]
#[Title('Inspectors')]

class User extends Component
{

    use WithPagination;
    protected $listeners = ['deleteMake' => 'delete'];
    public $search = '';
    public $searchState = '';
    public $searchLocation = '';
    public $perPage = 10;

    protected $queryString = [
        'search' => ['except' => ''],
        'searchState' => ['except' => ''],
        'searchLocation' => ['except' => ''],
        'perPage' => ['except' => 10]
    ];

    public function mount()
    {
        usleep(500000);
    }

    public function updatedSearch()
    {
        $this->resetPage();
    }

    public function updatedPerPage()
    {
        $this->resetPage();
    }

    public function render()
    {
        $users = AnotherUser::query()
            ->when($this->search, function ($q) {
                $q->where(function ($q2) {
                    $q2->where('first_name', 'like', "%{$this->search}%")
                        ->orWhere('last_name', 'like', "%{$this->search}%");
                });
            })
            ->when($this->searchState, fn($q) => $q->where('state', 'like', "%{$this->searchState}%"))
            ->when($this->searchLocation, fn($q) => $q->where('location', 'like', "%{$this->searchLocation}%"))
            ->latest()
            ->paginate($this->perPage);
        return view('livewire.user', ['users' => $users]);
    }

    public function delete($id)
    {
        try {
            AnotherUser::findOrFail($id)->delete();

            $this->dispatch(
                'data-deleted',
                title: 'Success',
                message: 'User Deleted successfully.',
                redirectUrl: route('user.list')
            );
        } catch (\Throwable $e) {
            $this->dispatch(
                'data-error',
                title: 'Error',
                message: $e->getMessage()
            );
        }
    }
}
