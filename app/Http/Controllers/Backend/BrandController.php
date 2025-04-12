<?php

namespace App\Http\Controllers\Backend;

use App\Models\Brand;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;

class BrandController extends Controller
{
    public function BrandView()
    {
        $brands = Brand::latest()->get();
        return view('backend.brand.brand_view', compact('brands'));
    }


    public function BrandStore(Request $request)
    {
        $request->validate([
            'brand_name_en' => 'required|max:100',
            'brand_name_bn' => 'required|max:100',
            'brand_image' => 'image|mimes:jpeg,png,gif,webp|max:500|required',
        ], [
            'brand_name_en.required' => 'Input Brand English Name',
            'brand_name_bn.required' => 'Input Brand Bangla Name',
        ]);

        $filename = null;
        if ($request->hasFile('brand_image')) {
            $manager = new ImageManager(new Driver());
            $brand_image = $request->file('brand_image');
            $filename = time() . '.' . $brand_image->getClientOriginalExtension();
            $destinationPath = storage_path('app/public/brand');
            $img = $manager->read($request->file('brand_image'));
            $img->resize(500, 500, function ($constraint) {
                $constraint->aspectRatio();
            })->save($destinationPath . '/' . $filename);
            Storage::putFileAs('public/brand', $brand_image, $filename);
        }

        Brand::create([
            'brand_name_en' => $request->brand_name_en,
            'brand_name_bn' => $request->brand_name_bn,
            'brand_slug_en' => strtolower(str_replace(' ', '-', $request->brand_name_en)),
            'brand_slug_bn' => str_replace(' ', '-', $request->brand_name_bn),
            'brand_image'   => $filename,
        ]);

        $notification = array(
            'message' => 'Brand Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }

    public function BrandEdit($id)
    {
        $brand = Brand::findOrFail($id);
        return view('backend.brand.brand_edit', compact('brand'));
    }

    public function BrandUpdate(Request $request, $id)
    {
        $request->validate([
            'brand_name_en' => 'required|max:100',
            'brand_name_bn' => 'required|max:100',
            'brand_image' => 'image|mimes:jpeg,png,gif,webp|max:500',
        ], [
            'brand_name_en.required' => 'Input Brand English Name',
            'brand_name_bn.required' => 'Input Brand Bangla Name',
        ]);
        $brand = Brand::find($id);

        $brand->brand_image;
        if (isset($request->brand_image)) {
            $image = $request->file('brand_image');
            $filename = time() . '.' . $request->file('brand_image')->getClientOriginalExtension();
            Storage::putFileAs('public/brand', $request->file('brand_image'), $filename);
            $manager = new ImageManager(new Driver());
            $destinationPath = storage_path('app/public/brand');
            $img = $manager->read($image);
            $img = $img->resize(500, 500,)->save($destinationPath . '/' . $filename);
            //remove old image
            if ($brand->brand_image) {
                $old_filename = public_path("storage\brand\\" . $brand->brand_image);
                if (file_exists($old_filename) != false) {
                    unlink($old_filename);
                }
            }
            $brand->brand_image = $filename;
        }

        $brand->brand_name_en = $request->input('brand_name_en');
        $brand->brand_name_bn = $request->input('brand_name_bn');
        $brand->brand_slug_en = strtolower(str_replace(' ', '-', $request->brand_name_en));
        $brand->brand_slug_bn = str_replace(' ', '-', $request->brand_name_bn);
        $brand->update();
        if ($brand) {
            $notification = array(
                'message' => 'Brand Updated Successfully',
                'alert-type' => 'info'
            );
            return redirect()->route('all.brand')->with($notification);
        } else {
            return redirect()->back()->with('fail', 'Brand Updated Failed');
        }
    }

    public function BrandDelete($id)
    {
        $brand = Brand::findOrFail($id);
        $path = public_path("storage\brand\\" . $brand->brand_image);
        if (File::exists($path)) {
            File::delete($path);
        }
        $brand->delete();
        if ($brand) {
            $notification = array(
                'message' => 'Brand Deleted Successfully',
                'alert-type' => 'info'
            );
            return redirect()->back()->with($notification);
        } else {
            return redirect()->back()->with('fail', 'Brand Deleted Failed');
        }
    }

    public function BrandInactive($id)
    {
        Brand::findOrFail($id)->update(['status' => 0]);

        $notification = array(
            'message' => 'Brand Inactive Successfully',
            'alert-type' => 'info'
        );
        return redirect()->back()->with($notification);
    }



    public function BrandActive($id)
    {
        Brand::findOrFail($id)->update(['status' => 1]);

        $notification = array(
            'message' => 'Brand Active Successfully',
            'alert-type' => 'info'
        );
        return redirect()->back()->with($notification);
    }
}
