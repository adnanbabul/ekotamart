<?php

namespace App\Http\Controllers\Backend;

use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;


class CategoryController extends Controller
{
    public function CategoryView()
    {
        $category = Category::latest()->get();
        return view('backend.category.category_view', compact('category'));
    }


    public function CategoryStore(Request $request)
    {
        $request->validate([
            'category_name_en' => 'required|max:100',
            'category_name_bn' => 'required|max:100',
            'category_icon' => 'image|mimes:jpeg,png,gif,webp|max:500|required',
        ], [
            'category_name_en.required' => 'Input Category English Name',
            'category_name_bn.required' => 'Input Category Bangla Name',
        ]);

        // $filename = null;
        //     if (isset($request->category_icon)) {
        //         $category_icon = $request->file('category_icon');
        //         $filename = time().'.'.$request->file('category_icon')->getClientOriginalExtension();
        //         // .'.'.$request->file('category_icon')->getClientOriginalName();
        //         Storage::putFileAs('public/category_icon', $request->file('category_icon'), $filename);
        //         // $destinationPath = public_path('category_icon_vision');
        //         $destinationPath =  storage_path('app/public/category_icon');
        //         // exit;
        //         // $manager = new Image(['driver' => 'imagick']);
        //         $img = Image::make($category_icon->path());
        //         $img->resize(500, 500, function ($constraint) {
        //             $constraint->aspectRatio();
        //         })->save($destinationPath.'/'.$filename);
        //     }

        $filename = null;
        if ($request->hasFile('category_icon')) {
            $manager = new ImageManager(new Driver());
            $category_icon = $request->file('category_icon');
            $filename = time() . '.' . $category_icon->getClientOriginalExtension();
            $destinationPath = storage_path('app/public/category_icon');
            $img = $manager->read($request->file('category_icon'));
            $img->resize(500, 500, function ($constraint) {
                $constraint->aspectRatio();
            })->save($destinationPath . '/' . $filename);
            Storage::putFileAs('public/category_icon', $category_icon, $filename);
        }

        Category::insert([
            'category_name_en' => $request->category_name_en,
            'category_name_bn' => $request->category_name_bn,
            'category_slug_en' => strtolower(str_replace(' ', '-', $request->category_name_en)),
            'category_slug_bn' => str_replace(' ', '-', $request->category_name_bn),
            'category_icon'    => $filename,

        ]);

        $notification = array(
            'message' => 'Category Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }


    public function CategoryEdit($id)
    {
        $category = Category::findOrFail($id);
        return view('backend.category.category_edit', compact('category'));
    }


    public function CategoryUpdate(Request $request, $id)
    {

        $request->validate([
            'category_name_en' => 'required|max:100',
            'category_name_bn' => 'required|max:100',
            'category_icon' => 'image|mimes:jpeg,png,gif,webp|max:500',
        ], [
            'category_name_en.required' => 'Input Category English Name',
            'category_name_bn.required' => 'Input Category Bangla Name',
        ]);

        $category = Category::find($id);

        // $category->category_icon;
        // // $filename = null;
        // if (isset($request->category_icon)) {
        //     $image = $request->file('category_icon');
        //     $filename = time() . '.' . $request->file('category_icon')->getClientOriginalExtension();
        //     Storage::putFileAs('public/category_icon', $request->file('category_icon'), $filename);
        //     // echo
        //     $destinationPath =  storage_path('app/public/category_icon');
        //     // exit;
        //     $img = Image::make($image->path());
        //     $img->resize(500, 500, function ($constraint) {
        //         $constraint->aspectRatio();
        //     })->save($destinationPath . '/' . $filename);

        //     //remove old image
        //     if ($category->category_icon) {
        //         $old_filename = public_path("storage\category_icon\\" . $category->category_icon);
        //         if (file_exists($old_filename) != false) {
        //             unlink($old_filename);
        //         }
        //     }

        //     $category->category_icon = $filename;
        // }

        $category->category_icon;
        if (isset($request->category_icon)) {
            $image = $request->file('category_icon');
            $filename = time() . '.' . $request->file('category_icon')->getClientOriginalExtension();
            Storage::putFileAs('public/category_icon', $request->file('category_icon'), $filename);
            $manager = new ImageManager(new Driver());
            $destinationPath = storage_path('app/public/category_icon');
            $img = $manager->read($image);
            $img = $img->resize(500, 500,)->save($destinationPath . '/' . $filename);
            //remove old image
            if ($category->category_icon) {
                $old_filename = public_path("storage\category_icon\\" . $category->category_icon);
                if (file_exists($old_filename) != false) {
                    unlink($old_filename);
                }
            }
            $category->category_icon = $filename;
        }

        $category->category_name_en = $request->input('category_name_en');
        $category->category_name_bn = $request->input('category_name_bn');
        $category->category_slug_en = strtolower(str_replace(' ', '-', $request->brand_name_en));
        $category->category_slug_bn = str_replace(' ', '-', $request->brand_name_bn);
        // dd($news);
        $category->update();
        if ($category) {
            $notification = array(
                'message' => 'Category Updated Successfully',
                'alert-type' => 'info'
            );
            return redirect()->route('all.category')->with($notification);
        } else {
            return redirect()->back()->with('fail', 'Category Updated Failed');
        }
    }


    public function CategoryDelete($id)
    {
        $category = Category::findOrFail($id);
        $path = public_path("storage\category_icon\\" . $category->category_icon);
        if (File::exists($path)) {
            File::delete($path);
        }
        $category->delete();
        if ($category) {
            $notification = array(
                'message' => 'Category Deleted Successfully',
                'alert-type' => 'info'
            );
            return redirect()->back()->with($notification);
        } else {
            return redirect()->back()->with('fail', 'Category Deleted Failed');
        }
    }



    public function CategoryInactive($id)
    {
        Category::findOrFail($id)->update(['status' => 0]);

        $notification = array(
            'message' => 'Category Inactive Successfully',
            'alert-type' => 'info'
        );
        return redirect()->back()->with($notification);
    }



    public function CategoryActive($id)
    {
        Category::findOrFail($id)->update(['status' => 1]);

        $notification = array(
            'message' => 'Category Active Successfully',
            'alert-type' => 'info'
        );
        return redirect()->back()->with($notification);
    }
}
