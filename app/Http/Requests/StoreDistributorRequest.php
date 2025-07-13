<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreDistributorRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            'name' => 'required|string|min:3|max:255',
            'branch' => 'required|string|min:3|max:255',
            'gst' => [
                'required',
                'string',
                'size:15',
                'regex:/^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$/i'
            ],
            'contact_person' => 'required|string|min:3|max:255',
            'mobile_no' => [
                'required',
                'regex:/^[6-9]\d{9,14}$/',
                'unique:companies,mobile_no'
            ],
            'email_id' => [
                'required',
                'email:rfc,dns',
                'max:255',
            ],
            'standard_fees' => 'required|numeric',
            'travelling_fees_upto' => 'required|numeric',
            'travelling_addtion' => 'required|numeric',
        ];
    }

    public function messages(): array
    {
        return [
            'name.required' => 'The name field is required.',
            'name.min' => 'The name field must be at least 3 characters.',
            'name.max' => 'The name field must not exceed 255 characters.',
            'branch.required' => 'The branch field is required.',
            'branch.min' => 'The branch field must be at least 3 characters.',
            'branch.max' => 'The branch field must not exceed 255 characters.',
            'gst.required' => 'GST number is required.',
            'gst.size' => 'GST number must be exactly 15 characters.',
            'gst.regex' => 'Please enter a valid GST number.',
            'contact_person.required' => 'The contact_person field is required.',
            'contact_person.min' => 'The contact_person field must be at least 3 characters.',
            'contact_person.max' => 'The contact_person field must not exceed 255 characters.',
            'mobile_no.required' => 'Mobile number is required.',
            'mobile_no.regex' => 'Enter a valid mobile number (10–15 digits, starting with 6–9).',
            'mobile_no.unique' => 'This mobile number is already in use.',
            'email_id.required' => 'Email address is required.',
            'email_id.email' => 'Enter a valid email address.',
            'email_id.max' => 'Email address must not exceed 255 characters.',
            'standard_fees.required' => 'The standard_fees field is required.',
            'travelling_fees_upto.required' => 'The travelling_fees_upto field is required.',
            'travelling_addtion.required' => 'The travelling_addtion field is required.',
        ];
    }
}
