<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreUserRequest extends FormRequest
{

    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            'first_name' => 'required|min:3|max:255',
            'last_name' => 'required|min:3|max:255',
            'profile' => 'nullable',
            'mobile' => [
                'required',
                'regex:/^[6-9]\d{9,14}$/',
            ],
            // 'email' => 'required|unique:another_users,email',
            'state' => 'required',
            // 'inspection_count' => 'nullable',
            'location' => 'required',
            'status' => 'required',
        ];
    }

    public function messages(): array
    {
        return [
            'first_name.required' => 'The first name field is required.',
            'first_name.min' => 'The first name field must be at least 3 characters.',
            'first_name.max' => 'The first name field must not exceed 255 characters.',
            'last_name.required' => 'The last name field is required.',
            'last_name.min' => 'The last name field must be at least 3 characters.',
            'last_name.max' => 'The last name field must not exceed 255 characters.',
            // 'profile.required' => 'The profile field is required.',
            'mobile.required' => 'Mobile number is required.',
            'mobile.regex' => 'Enter a valid mobile number (10–15 digits, starting with 6–9).',
            // 'email.required' => 'The email field is required.',
            'state.required' => 'The state field is required.',
            // 'inspection_count.required' => 'The inspection_count field is required.',
            'location.required' => 'The location field is required.',
            'status.required' => 'The account status field is required.',
        ];
    }
}
