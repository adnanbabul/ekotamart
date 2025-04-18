@extends('admin.admin_master')
@section('admin')

      <!-- Content Wrapper. Contains page content -->
    <div class="container-full">
      <!-- Content Header (Page header) -->
      <!-- Main content -->
      <section class="content">
        <div class="row">

        <div class="col-8">
           <div class="box">
              <div class="box-header with-border">
                <h3 class="box-title">Home Slider List <span class="badge badge-pill badge-danger">{{ count($sliders) }}</span></h3>
              </div>
              <!-- /.box-header -->
              <div class="box-body head-text">
                  <div class="table-responsive">
                    <table id="example1" class="table table-bordered table-striped">
                      <thead class="head-text">
                          <tr>
                              <th>SL.</th>
                              <th style="width: 500px;">Slider Image</th>
                              <th>Category</th>
                              <th>Title</th>
                              <th>Decription</th>
                              <th>Status</th>
                              <th>Action</th>
                          </tr>
                      </thead>
                      <tbody class="head-text">
                        @foreach ($sliders as $key => $item)
                          <tr>
                                <td>{{ $key + 1 }}</td>
                                <td style="width: 500px;">
                                    @if ($item->slider_img == '' || $item->slider_img == null)
                                        <img loading="lazy" src="{{ asset('upload/no_image.jpg') }}" style="height: 50px; width:500px; max-width: 150px !important;" alt="No Image">
                                    @else
                                        <img loading="lazy" src="{{ URL::to('storage/slider', $item->slider_img) }}" style="height: 50px; width:500px; max-width: 150px !important;">
                                    @endif
                                </td>
                                <td>{{ $item['category'] == null ? "" : $item['category']['category_name_en'] }}</td>
                                <td>
                                    @if ($item->title == NULL)
                                      <span class="badge badge-pill badge-danger">No Title</span>
                                    @else
                                      {{ $item->title }}
                                    @endif
                                </td>
                                <td>{{ $item->description }}</td>
                                <td>
                                    @if ($item->status == 1)
                                      <span class="badge badge-pill badge-success">Active</span>
                                    @else
                                      <span class="badge badge-pill badge-danger">InActive</span>
                                    @endif
                                </td>
                                <td width="20%">
                                    {{-- ///////// Status Section Active In-active ///////// --}}
                                    @if ($item->status == 1)
                                      <a href="{{ route('slider.inactive',$item->id) }}" class="btn btn-danger btn-sm" title="Inactive Now"><i class="fa fa-arrow-down"></i></a>
                                    @else
                                      <a href="{{ route('slider.active',$item->id) }}" class="btn btn-success btn-sm" title="Active Now"><i class="fa fa-arrow-up"></i></a>
                                    @endif

                                    <a href="{{ route('slider.edit',$item->id) }}" class="btn btn-info btn-sm" title="Edit Data"><i class="fa fa-pencil"></i></a>
                                    <a href="{{ route('slider.delete',$item->id) }}" class="btn btn-danger btn-sm delete_data" title="Delete Data"><i class="fa fa-trash"></i></a>
                                </td>
                          </tr>
                        @endforeach
                      </tbody>
                    </table>
                  </div>
              </div>
              <!-- /.box-body -->
            </div>
            <!-- /.box -->         
          </div>
          <!-- /.col -->



          <!---------------- Add Slider Page -------------->



            <div class="col-4">
                <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Add Home Slider</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="table-responsive">
                        <form method="post" action="{{ route('slider.store') }}" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <h5 class="head-text">Slider Title<span class="text-danger"></span></h5>
                                <div class="controls">
                                    <input type="text" name="title" class="form-control" placeholder="Slider title">
                                </div>
                            </div>

                            <div class="form-group">
                                <h5 class="head-text">Slider Decription<span class="text-danger"></span></h5>
                                <div class="controls">
                                    <input type="text" name="description" class="form-control" placeholder="Slider decription">
                                </div>
                            </div>

                            <div class="form-group">
                                <h5 class="head-text">Slider Image<span class="text-danger">*</span></h5>
                                <div class="controls">
                                    <input type="file" name="slider_img" class="form-control" id="upload_file">
                                    <span class="text-danger" id="msg_v"> @error ('slider_img') {{ $message }} @enderror </span>
                                </div>

                                <div class="col-md-6 mt-5">
                                    <img loading="lazy" id="show_image"  src="{{ (!empty($sliders->slider_img))?
                                    URL::to('storage/slider', $sliders->slider_img) : url('upload/no_image.jpg') }}" style="width:70px; height:70px;" alt="Brand Image">
                                </div>
                            </div>

                            <div class="form-group">
                                <h5 class="head-text">Category Select <span class="text-danger"></span></h5>
                                <div class="controls">
                                    <select name="category_id" class="form-control">
                                        <option value="" selected ="">Select Category</option>
                                        @foreach($categories as $category)
                                        <option value="{{ $category->id }}">{{ $category->category_name_en }}</option>
                                        @endforeach
									</select>
                                    @error ('category_id')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror    
                                </div>
                            </div>

                            {{-- <div class="form-group">
                                <h5 class="head-text">SubCategory Select <span class="text-danger">*</span></h5>
                                <div class="controls">
                                    <select name="subcategory_id" class="form-control">
                                    <option value="" selected ="">Select SubCategory</option>
                        
                                    </select>
                                    @error ('subcategory_id')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror    
                                </div>
                            </div>

                            <div class="form-group">
                                <h5 class="head-text">Sub SubCategory Select <span class="text-danger">*</span></h5>
                                <div class="controls">
                                    <select name="subsubcategory_id" class="form-control">
                                        <option value="" selected ="">Select SubSubCategory</option>
                                    </select>
                                    @error ('subsubcategory_id')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror    
                                </div>
                            </div> --}}

                            <div class="text-xs-right">
                                <input type="submit" class="btn btn-rounded btn-info float-right mb-5" value="Add New">
                            </div>
                       </form>
                    </div>
                </div>
                <!-- /.box-body -->
                </div>
                <!-- /.box -->         
            </div>

        </div>
        <!-- /.row -->
      </section>
      <!-- /.content -->
    
    </div>



    @push('js')

        {{-- Image validation Js --}}
        <script>
            image_validation("#upload_file", "#show_image", "#msg_v", '1000', "Product size can't larger than 1 MB")
        </script>

        <script>
            $(document).ready(function() {
                $('select[name=category_id]').on('change', function() {
                    var category_id = $(this).val();
                    if (category_id) {
                        $.ajax({
                            url: "{{  url('/category/subcategory/ajax') }}/"+category_id,
                            type: "GET",
                            dataType: "json",
                            success:function(data) {
                                var d =$('select[name="subcategory_id"]').empty();
                                    $.each(data, function(key, value) {
                                        $('select[name="subcategory_id"]').append('<option value="'+ value.id +'">' + value.subcategory_name_en + '</option>');
                                    });
                            },
                        });
                    }else {
                        alert('danger');
                    }
                });
                $('select[name=subcategory_id]').on('change', function() {
                    var subcategory_id = $(this).val();
                    if (subcategory_id) {
                        $.ajax({
                            url: "{{  url('/category/sub-subcategory/ajax') }}/"+subcategory_id,
                            type: "GET",
                            dataType: "json",
                            success:function(data) {
                                $('select[name="subsubcategory_id"]').html('');
                                var d =$('select[name="subsubcategory_id"]').empty();
                                $('select[name="subsubcategory_id"]').append('<option selected value=""  >Select None</option>');
                                    $.each(data, function(key, value) {
                                        $('select[name="subsubcategory_id"]').append('<option  value="'+ value.id +'">' + value.subsubcategory_name_en + '</option>');
                                    });
                            },
                        });
                    }
                    // else {
                    //     alert('danger');
                    // }
                });
            });
        </script>

    @endpush


@endsection
