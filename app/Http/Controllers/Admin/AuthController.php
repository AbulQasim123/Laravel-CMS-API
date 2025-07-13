<?php

namespace App\Http\Controllers\Admin;

use Exception;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    // Login
    public function loadLogin()
    {
        if (Auth::user()) {
            return redirect()->route('dashboard');
        }
        return view('livewire.login');
    }

    // Post Login
    public function postLogin(Request $request)
    {
        if ($request->ajax()) {
            try {
                $rules = [
                    'email' => 'required|string|email|exists:users',
                    'password' => 'required|string'
                ];
                $messages = [
                    'email.required' => 'Email is required.',
                    'email.email' => 'Email must be a valid email address.',
                    'email.exists' => 'Email does not exist.',
                    'password.required' => 'Password is required.'
                ];
                $validator = Validator::make($request->all(), $rules, $messages);
                if ($validator->fails()) {
                    return response()->json([
                        'status' => false,
                        'errors' => $validator->errors(),
                    ]);
                }

                $userCredential = $request->only('email', 'password');
                if (Auth::attempt($userCredential)) {
                    return response()->json([
                        'status' => true,
                        'message' => 'Successfully logged in.',
                        'redirect_url' => route('dashboard'),
                    ]);
                } else {
                    return response()->json([
                        'status' => false,
                        'errors' => 'Username or Password is incorrect.'
                    ], 422);
                }
            } catch (Exception $e) {
                return response()->json([
                    'status' => false,
                    'errors' => 'Something went wrong. Please try again.'
                ], 500);
            }
        }
    }

    // Dashboard
    public function dashboard()
    {
        if (!Auth::user()) {
            return redirect()->route('load.login');
        }
        return redirect()->route('dashboard');
        // return view('admin.dashboard', compact('data'));
    }

    // Profile
    public function profile()
    {
        $user = Auth::user();
        if (!$user) {
            return redirect()->route('load.login');
        }
        return view('admin.setting-pages.profile', compact('user'));
    }

    // Update Profile
    public function updateProfile(Request $request)
    {
        if ($request->ajax()) {
            try {
                $rules = [
                    'name' => 'required|string|min:2',
                    'email' => 'required|string|email|max:100',
                    'password' => 'nullable|string|min:6',
                ];
                $messages = [
                    'name.required' => 'Name is required.',
                    'email.required' => 'Email is required.',
                    'email.email' => 'Email must be a valid email address.',
                    'password.required' => 'Password is required.',
                    'password.min' => 'Password must be at least 6 characters.',
                ];
                $validator = Validator::make($request->all(), $rules, $messages);
                if ($validator->fails()) {
                    return response()->json([
                        'status' => false,
                        'errors' => $validator->errors(),
                    ]);
                }
                $user = User::find(id: Auth::user()->id);
                $user->name = $request->name;
                $user->email = $request->email;
                if ($request->password) {
                    $user->password = Hash::make($request->password);
                }
                $user->save();
                return response()->json([
                    'status' => true,
                    'message' => 'User profile updated successfully.',
                    'redirect_url' => route('profile'),
                ]);
            } catch (Exception $e) {
                return response()->json([
                    'status' => false,
                    'errors' => 'Something went wrong. Please try again.'
                ], 500);
            }
        }
    }

    // Logout
    public function logout(Request $request)
    {
        $request->session()->flush();
        Auth::logout();
        return redirect()->route('load.login');
    }
}
