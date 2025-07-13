<?php

namespace App\Helpers;

use Carbon\Carbon;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;

class ImageHelper
{
    // Upload image When Creating Data
    public static function handleUploadedImage($file, $path, $delete = null)
    {
        if ($file) {
            if ($delete) {
                if (file_exists(storage_path('app/public/' . $path . '/' . $delete))) {
                    unlink(storage_path('app/public/' . $path . '/' . $delete));
                }
            }

            $timestamp = Carbon::now()->timestamp;
            $random = rand(100000, 999999);
            $uuid = Str::uuid();
            $originalName = $file->getClientOriginalName();
            $sanitizedOriginal = preg_replace('/\s+/', '_', $originalName);
            $name = "{$timestamp}_{$random}_{$uuid}_{$sanitizedOriginal}";

            $file->move(storage_path('app/public/' . $path), $name);
            return $name;
        }
        return null;
    }

    // Delete image When Deleting Data
    public static function handleDeletedImage($data, $field, $delete_path)
    {
        if (!empty($data[$field])) {
            $filename = basename($data[$field]);
            $filePath = storage_path('app/public/' . $delete_path . $filename);
            Log::info('Attempting to delete file at: ' . $filePath);

            if (file_exists($filePath)) {
                unlink($filePath);
                Log::info('File deleted successfully: ' . $filePath);
            } else {
                Log::warning('File not found for deletion: ' . $filePath);
            }
        }
    }
}
