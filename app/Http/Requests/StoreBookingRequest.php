<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreBookingRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            'ref_no' => 'required',
            'req_date' => 'required',
            'bank_ref_no' => 'required',
            'institution_product' => 'required',
            // 'direct_selling_agent' => 'required',
            'company_id' => 'required',
            'company_branch_id' => 'required',
            'vehicle_no' => 'required',
            'borrower' => 'required',
            'address' => 'required',
            'pincode' => 'required|numeric|digits:6',
            'contact_person' => 'required',
            'contact_no' => 'required|regex:/^[6-9]\d{9,14}$/',
            'inspection_place' => 'required',
            'remark' => 'required',
            'remark_statuses' => 'required',
            'account_status' => 'required',
        ];
    }

    public function messages(): array
    {
        return [
            'ref_no.required' => 'The ref_no field is required.',
            'req_date.required' => 'The req_date field is required.',
            'bank_ref_no.required' => 'The bank_ref_no field is required.',
            'institution_product.required' => 'The institution_product field is required.',
            // 'direct_selling_agent.required' => 'The direct_selling_agent field is required.',
            'vehicle_no.required' => 'The vehicle No field is required.',
            'company_id.required' => 'The company id field is required.',
            'company_branch_id.required' => 'The company branch_id field is required.',
            'borrower.required' => 'The borrower field is required.',
            'address.required' => 'The address field is required.',
            'pincode.required' => 'The pincode field is required.',
            'contact_person.required' => 'The contact_person field is required.',
            'contact_no.required' => 'Mobile number is required.',
            'contact_no.regex' => 'Enter a valid mobile number (10–15 digits, starting with 6–9).',
            'inspection_place.required' => 'The inspection_place field is required.',
            'remark.required' => 'The remark field is required.',
            'remark_statuses.required' => 'The Remark status field is required.',
            'account_status.required' => 'The Account status field is required.',
        ];
    }
}
