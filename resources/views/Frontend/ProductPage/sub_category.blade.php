@extends('frontend.master')
@section('mainpage')
@section('title')
{{ session()->get('language')=='bangla'?$sub_category_one->subcategory_name_bn : $sub_category_one->subcategory_name_en }}
@endsection
<!-- <style>
  .sidebar {
    margin-top: 50px;
  }
</style> -->
<label for="cart_check" style="z-index: 10;position: fixed;display: block;">
    <section class="cart-view bg-white shadow rounded" id="cart_section">
        <div class="icon text-center">
            <span>
                <!-- <i class="fas fa-shopping-cart fa-2x"></i> -->
                <img src="{{ asset('frontend/logopng05.png') }}" alt="" width="30px" loading="lazy">
            </span>
        </div>
        <div class="text-center text-dark font-weight-bold" id="total_items_div" style="background-color: red;">
            <span style="color: white;" id="cartQty">0</span>
            <span style="color: white;">
                @if (session()->get('language')=='bangla')
                পন্য
                @else
                Items
                @endif
            </span>
        </div>
        <div class="text-center text-dark font-weight-bold">
        <span class="total-price"> <span class="sign">৳</span>
                <span class="value" id="cartSubTotal">0</span> </span>
        </div>
    </section>
</label>
<a href="{{ route('mycart') }}" class="notification">
  <span><img src="{{asset('frontend/cartb.png')}}" alt="" width="30px" loading="lazy"></span>
  <span  class="badge" style="color: white;" id="mobileQty">0</span>
</a>
<div class="content_one" id="frontSlider" style="top: 50px;position: relative;">
</div>
<div class="content_one" style="min-height: 1000px; padding-top: 80px;">
<div class="container">
    <div style="display: flex;"> <a href="{{ url('/')}}" style="text-decoration: none;">@if (session()->get('language')=='bangla')
        <h1>প্রচ্ছদ</h1>
        @else
       <h1>Home</h1> 
        @endif </a> <h1> /</h1>
        <a href="{{ route('productPage.category', [ 'mainCategory_id'=>$sub_category_one->category->id, 'mainCategory_name'=>$sub_category_one->category->category_name_en] )}}" style="text-decoration: none;">  <h1> {{ session()->get('language')=='bangla'?$sub_category_one->category->category_name_bn : $sub_category_one->category->category_name_en }} </h1> </a>
        <h1>/ {{ session()->get('language')=='bangla'?$sub_category_one->subcategory_name_bn : $sub_category_one->subcategory_name_en }} </h1> 
    </div> 

    <div class="row">
      @foreach ($sub_sub_category_one as $sub_sub)
        <a href="{{ route('productPage.subsubcategory', ['subSubCategory_id'=>$sub_sub->id, 'subSubCategory_name'=>$sub_sub->subsubcategory_name_en]) }}" type="button" class="btn btn-light btn-sm mx-1" style="width: fit-content;">{{ session()->get('language')=='bangla'? $sub_sub->subsubcategory_name_bn : $sub_sub->subsubcategory_name_en }}</a>
      @endforeach
    </div>



    <div class="row" style=" border: 1px solid #eee; margin-top: 25px">
      @foreach ($product as $product)
      <!-- <div class="mb-3"> -->
        <div class="card m-1" style=" position: initial;max-width: 250px;">
          <div class="card-body" >
            <img src="{{ URL::to('storage/products/thambnail', $product->product_thambnail) }}" alt="" style="text-align:center; margin: auto; width: 150px; height: 150px; display: block;" loading="lazy">
            <a href="{{ url('product/details/'.$product->id)}}"></a>
            <h5 class="card-title" style=" text-align:center;">{{ session()->get('language')=='bangla'? Illuminate\Support\Str::limit($product->product_name_bn,50): Illuminate\Support\Str::limit($product->product_name_en,50)  }}</h5>
            <p class="card-text" style="text-align:center;"> {{ $product->product_qty>10 ? "Stock available": "Stock Limited" }}</p>
            <p class="card-text" style="text-align:center;">
                @if (isset($product->discount_price))
                <div class="row">
                  <div class="col-md d-flex justify-content-end">
                  <span style="color: red;">৳&nbsp;{{$product->discount_price}} </span>
                  </div>
                  <div class="col-md d-flex justify-content-start">
                  <span style="text-decoration: line-through;">৳&nbsp;{{$product->selling_price}} </span>
                  </div>
                </div>
                @else
                <span style="color: red;">৳&nbsp;{{$product->selling_price}} </span>
                @endif                  
                </p>

            <div class="btn-group cart_group" style="display: flex;">
              <button class="btn btn-danger cart_button" type="button" title="Wishlist" id="{{ $product->id }}" onclick="addToWishList(this.id)"><i class="fa-sharp fa-solid fa-heart"></i></button>
              @php($flag = "NotFound")
              @foreach ($carts as $key => $value)
              @if ($value->name == $product->product_name_en && $value->qty>0 )
              <div id="{{ $product->id }}" class="btn-group cart_group" style="display: flex; display:contents">
                <button type="submit" class="btn btn-warning btn-sm cart_decrease" id="{{ $value->rowId }}" onclick="cartDecrement(this.id)">-</button>
                <input type="text" value="{{ $value->qty }}" min="1" max="100" disabled="" style="width:25px;">
                <button type="submit" class="btn btn-success btn-sm cart_increase" id="{{ $value->rowId }}"  onclick="cartIncrement(this.id)">+</button>

              </div>
              @php($flag = "found")
              @break
              @endif
              @endforeach

              @if ($flag == "NotFound")
              <div  id="{{ $product->id }}" class="btn-group cart_group" style="display: flex; display:contents">
              <button type="button" class="btn btn-danger add_cart" title="Add Cart" style="font-size: 12px;" id="{{ $product->id }}" onclick="add_product_to_cart(this.id)"  style="font-size: 10px;">
                ADD TO CART
              </button>
              </div>
              @endif

              <div class="btn-group cart_group" style="display: flex; display:none"></div>
              <button class="btn btn-danger cart_button"  id="{{ $product->id }}" data-bs-toggle="modal" data-bs-target="#pdoductDetailModal" onclick="show_product_detail(this.id)"><i class="fa-solid fa-eye"></i></button>
            </div>
          </div>
        </div>
      <!-- </div> -->
      @endforeach
    </div>
    </div>
    </div>

</div>
@include('frontend.body.cartbar')
@endsection

@push('custom-scripts')
<script type="text/javascript">
  function ShowSlider() {
    $.ajax({
      type: 'GET',
      url: '/slider/subcategory/show/{{ $sub_category_one->id }}',
      dataType: 'json',
      success: function(response) {
        var frontSlider = ""
        
        frontSlider += `<div class="img-slider" style=" width: auto;z-index: 1;margin-top: 0px;">`
        $.each(response.sliders, function(key, value) {
          frontSlider += `<div class="image_slide` +
            (key == 0 ? " active" : " ") +
            `">`

            +`<img src="/storage/category_wise_slider/${value.category_slider_img}" alt="">`
             
      +`
</div>`
        });
        frontSlider += `<div class="navigation">`
        $.each(response.sliders, function(key, value) {
          frontSlider += `<div class="image_btn` +
            (key == 0 ? " active" : " ") +
            `"></div>`
        });

        frontSlider += `</div>
  </div>`
if(response.sliders.length > 0){
  $('#frontSlider').html(frontSlider);
}
       

        var slides = document.querySelectorAll('.image_slide');
        var btns = document.querySelectorAll('.image_btn');
        let currentSlide = 0;

        // Javascript for image slider manual navigation
        var manualNav = function(manual) {
          slides.forEach((slide) => {
            slide.classList.remove('active');

            btns.forEach((btn) => {
              btn.classList.remove('active');
            });
          });

          slides[manual].classList.add('active');
          btns[manual].classList.add('active');
        }

        btns.forEach((btn, i) => {
          btn.addEventListener("click", () => {
            manualNav(i);
            currentSlide = i;
          });
        });

        // Javascript for image slider autoplay navigation
        var repeat = function(activeClass) {
          let active = document.getElementsByClassName('active');
          let i = 1;

          var repeater = () => {
            setTimeout(function() {
              [...active].forEach((activeSlide) => {
                activeSlide.classList.remove('active');
              });

              slides[i].classList.add('active');
              btns[i].classList.add('active');
              i++;

              if (slides.length == i) {
                i = 0;
              }
              if (i >= slides.length) {
                return;
              }
              repeater();
            }, 10000);
          }
          repeater();
        }
        repeat();
      }
    })

  }
  ShowSlider();
</script>
<script>
  var subcategoryElement = document.getElementById("subc_{{ session()->get('language')=='bangla'?$sub_category_one->subcategory_name_bn : $sub_category_one->subcategory_name_en }}");
  subcategoryElement.style.backgroundColor = "crimson";
  var x = document.getElementById("sub_category_{{$sub_category_one->category->id}}");
  x.style.display = "block"
</script>
@endpush