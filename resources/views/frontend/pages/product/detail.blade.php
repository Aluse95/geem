@extends('frontend.layouts.default')

@php
  $title = $detail->json_params->title->{$locale} ?? $detail->title;
  $brief = $detail->json_params->brief->{$locale} ?? null;
  $price = $detail->json_params->price ?? null;
  $price_old = $detail->json_params->price_old ?? null;
  $content = $detail->json_params->content->{$locale} ?? null;
  $image = $detail->image != '' ? $detail->image : null;
  $image_thumb = $detail->image_thumb != '' ? $detail->image_thumb : null;
  $date = date('H:i d/m/Y', strtotime($detail->created_at));
  $color = $detail->json_params->color ?? '';
  // For taxonomy
  $taxonomy_json_params = json_decode($detail->taxonomy_json_params);
  $taxonomy_title = $taxonomy_json_params->title->{$locale} ?? $detail->taxonomy_title;
  $image_background = $web_information->image->background_breadcrumbs ?? ($taxonomy->json_params->image_background ?? '');
  $taxonomy_alias = Str::slug($taxonomy_title);
  $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['product'], $taxonomy_alias, $detail->taxonomy_id);
  
  $seo_title = $detail->json_params->seo_title ?? $title;
  $seo_keyword = $detail->json_params->seo_keyword ?? null;
  $seo_description = $detail->json_params->seo_description ?? $brief;
  $seo_image = $image ?? ($image_thumb ?? null);
@endphp

@section('content')
  <section style="background-image: url('{{ $image_background }}'); background-size: cover;" id="page-title">
    <div class="container clearfix text-center">
      <h1>{{ $taxonomy_title }}</h1>
      <span class="elipsis1">{{ $title }}</span>
    </div>
  </section>
  <section id="content">
    <div class="content-wrap" style="overflow: visible">
      <div class="container clearfix">
        <div class="single-product">
          <div class="product">
            <div class="row gutter-40">
              <div class="col-md-6">
                <div class="product-image">
                  <div class="slide" data-thumb="{{ $image }}">
                    <a href="#"data-lightbox="gallery-item">
                      <img style="height: 645px" id="image-color" src="{{ $image }}"alt="Pink Printed Dress"/>
                    </a>
                  </div>
                  <div class="sale-flash badge bg-danger p-2">SALE!</div>
                </div>
              </div>
              <div class="col-md-6 product-desc">
                <h4 class="display-6">{{ $title }}</h4>
                <div class="d-flex align-items-center justify-content-between">
                  <div class="product-price">
                    <del>{{ isset($price_old) && $price_old > 0 ? number_format($price_old, 0, ',', '.') . ' đ' : "" }}</del>
                    <ins>{{ isset($price) && $price > 0 ? number_format($price, 0, ',', '.') . ' đ' : __('Contact') }}</ins>
                  </div>
                  <div class="product-rating">
                    @if($vote)
                      @php
                        $full = floor($vote);
                        $empty = 5 - $full;
                        $half = $vote - $full;
                        if($half > 0.4) {
                          $empty--;
                        }
                      @endphp
                      @for ($i=0; $i < $full ; $i++)
                        <i class="icon-star3" style="color: rgb(195, 255, 0)"></i>
                      @endfor
                      @if ($half > 0.4)
                        <i class="icon-star-half-full" style="color: rgb(195, 255, 0)"></i>
                      @endif
                      @if ($empty)
                        @for ($i = 0; $i < $empty; $i++)
                          <i class="icon-star-empty"></i>
                        @endfor
                      @endif
                    @else
                      @for ($i = 0; $i < 5; $i++)
                        <i class="icon-star-empty"></i>
                      @endfor
                    @endif
                  </div>
                </div>
                <div class="line"></div>
                <h3 class="mt-4">Thông tin sản phẩm</h3>
                @if ($color)
                  <div class="d-flex align-items-center">
                    <h4 class="mb-0">Màu sắc</h4>
                    <select name="color" id="color_product" class="form-control select2" style="width: 30%; margin-left: 30px">
                      <option value="{{ $image }}">@lang('Please select')</option>
                      @foreach ($color as $key => $item)
                        @if ($item->name != '')
                          <option value="{{ $item->value }}" class="select-color">
                            {{ $item->name }}
                          </option>
                        @endif
                      @endforeach
                    </select>
                  </div>
                @endif
                <h4 class="my-4">Số lượng</h4>
                <form
                  class="cart mb-0 d-flex justify-content-between align-items-center"
                  method="post"
                  enctype="multipart/form-data"
                >
                  <div class="quantity clearfix">
                    <input type="button" value="-" class="minus" />
                    <input
                      type="number"
                      step="1"
                      min="1"
                      name="quantity"
                      value="1"
                      title="Qty"
                      class="qty"
                      id="quantity"
                    />
                    <input type="button" value="+" class="plus" />
                  </div>
                  <button type="button" data-id="{{ $detail->id }}" class="add-to-cart button m-0 add-to-cart">
                    @lang('Add to cart')
                  </button>
                  
                </form>

                <div class="line"></div>
                {{-- <div class="over" style="max-height:500px ; overflow-y: auto;">
                  {!! $content !!}
                </div> --}}
                <div
                  class="si-share border-0 d-flex justify-content-between align-items-center mt-4"
                >
                  <span>Share:</span>
                  <div>
                    <a href="http://www.facebook.com/sharer/sharer.php?u={{ Request::fullUrl() }}"
                      class="social-icon si-borderless si-facebook">
                      <i class="icon-facebook"></i>
                      <i class="icon-facebook"></i>
                    </a>
                    <a href="https://twitter.com/intent/tweet?url={{ Request::fullUrl() }}"
                      class="social-icon si-borderless si-twitter">
                      <i class="icon-twitter"></i>
                      <i class="icon-twitter"></i>
                    </a>
                    <a href="https://www.instagram.com/cws/share?url={{ Request::fullUrl() }}"
                      class="social-icon si-borderless si-instagram">
                      <i class="icon-instagram"></i>
                      <i class="icon-instagram"></i>
                    </a>
                  </div>
                </div>
              </div>

              <div  class="modal fade"id="reviewFormModal"role="dialog"aria-labelledby="reviewFormModalLabel"aria-hidden="true"tabindex="-1">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h4 class="modal-title text-center" id="reviewFormModalLabel">
                        Form review
                      </h4>
                      <button
                        type="button"
                        class="btn-close btn-sm"
                        data-bs-dismiss="modal"
                        aria-hidden="true"
                      ></button>
                    </div>
                    <div class="modal-body">
                      <form class="row mb-0" action="{{ route('frontend.review') }}" method="post">
                        @csrf
                        <div class="col-6 mb-3">
                          <label for="template_reviewform_name"
                            >Tên <small>*</small></label>
                          <div class="input-group">
                            <div class="input-group-text">
                              <i class="icon-user"></i>
                            </div>
                            <input required type="text" id="template_reviewform_name" name="name"
                            value="{{ old('template_reviewform_name') }}"class="form-control required"/>
                          </div>
                        </div>
                        <div class="col-6 mb-3">
                          <label for="template_reviewform_email"
                            >Email <small>*</small></label
                          >
                          <div class="input-group">
                            <div class="input-group-text">@</div>
                            <input required type="email" id="template_reviewform_email" name="email"
                            value="{{ old('template_reviewform_email') }}" class="required email form-control"/>
                          </div>
                        </div>

                        <div class="w-100"></div>

                        <div class="col-12 mb-3">
                          <label for="template_reviewform_rating"
                            >Đánh giá</label
                          >
                          <select
                            id="template_reviewform_rating"
                            name="vote"
                            class="form-select"
                          >
                            <option value="">-- Lựa chọn --</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                          </select>
                        </div>

                        <div class="w-100"></div>

                        <div class="col-12 mb-3">
                          <label for="template_reviewform_comment"
                            >Nội dung <small>*</small></label
                          >
                          <textarea required 
                            class="required form-control"
                            id="template_reviewform_comment"
                            name="content"
                            rows="6"
                            cols="30"
                          >{{ old('template_reviewform_comment') }}</textarea>
                        </div>
                        <input type="hidden" name="product_id" value="{{ $detail->id }}">
                        <div class="col-12">
                          <button class="button button-3d m-0"
                            type="submit">
                            Submit Review
                          </button>
                        </div>
                      </form>
                    </div>
                    <div class="modal-footer">
                      <button
                        type="button"
                        class="btn btn-secondary"
                        data-bs-dismiss="modal"
                      >
                        Đóng
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-12 col-12">
                <!-- Product Single - Meta End -->

                <div class="tabs clearfix my-5 mb-0" id="tab-1">
                  <ul class="tab-nav clearfix">
                    <li>
                      <a href="#tabs-1"
                        ><span class="d-none d-md-inline-block">
                          @lang('Description')</span
                        ></a
                      >
                    </li>
                    <li>
                      <a href="#tabs-2"
                        ><span class="d-none d-md-inline-block">
                          @lang('Additional Information')</span
                        ></a
                      >
                    </li>
                    <li>
                      <a href="#tabs-3"
                        ><span class="d-none d-md-inline-block">
                          Reviews ({{ count($review) }})
                        </span>
                      </a>
                    </li>
                  </ul>

                  <div  class="tab-container ">
                    <div class="tab-content clearfix" id="tabs-1">
                      <p>
                        {{ $brief }}
                      </p>
                    </div>
                    <div class="tab-content clearfix" id="tabs-2">
                      {!! $content !!}
                    </div>
                    <div class="tab-content clearfix" id="tabs-3">
                      <div id="reviews" class="clearfix">
                        <div style="max-height: 300px;overflow-y: auto;" class="over">
                          <ol class="commentlist clearfix">
                            @if(($review))
                              @foreach($review as $review)
                                <li class="comment even thread-even depth-1"id="li-comment-1">
                                  <div id="comment-1"class="comment-wrap clearfix">
                                    <div class="comment-meta">
                                      <div class="comment-author vcard">
                                        <span class="comment-avatar clearfix">
                                          <img alt="Image"src="https://0.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=60" height="60"width="60"/>
                                        </span>
                                      </div>
                                    </div>
                                    <div class="comment-content clearfix">
                                      <div style="font-weight: bold;" class="comment-author ">
                                        {{ $review->name }}
                                        <span class="d-flex">
                                          <a>{{ $review->created_at }}</a>
                                          @if (Auth::user() && Auth::user()->user_type == 'admin' )
                                            <span style="margin-left: 10px; color:#333">
                                              <a href="{{ route('admin.remove.review',['id' => $review->id]) }}">Xóa</a>
                                            </span>
                                          @endif
                                        </span>
                                      </div>
                                      <p>
                                        {{ $review->content }}
                                      </p>
                                      <div class="review-comment-ratings">
                                        @if($review->vote && $review->vote >0)
                                          @for ($i=0; $i <  $review->vote ; $i++)
                                            <i class="icon-star3" style="color: rgb(195, 255, 0)"></i>
                                          @endfor
                                        @endif
                                      </div>
                                    </div>
                                    <div class="clear"></div>
                                  </div>
                                </li>
                              @endforeach
                            @endif
                          </ol>
                        </div>
                        <a
                          href="#"
                          data-bs-toggle="modal"
                          data-bs-target="#reviewFormModal"
                          class="button m-0 float-end"
                          >Thêm Review</a
                        >
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="line"></div>
        @if (isset($relatedPosts) && count($relatedPosts) > 0)
        <div class="w-100">
              <h4 class="text-uppercase fw-light font-weight-bold">@lang('Related Products')</h4>

              <div
                class="owl-carousel product-carousel carousel-widget"
                data-margin="30"
                data-pagi="false"
                data-autoplay="5000"
                data-items-xs="1"
                data-items-md="2"
                data-items-lg="3"
                data-items-xl="4"
              >
              @foreach ($relatedPosts as $item)
              @php
                $title_item = $item->json_params->title->{$locale} ?? $item->title;
                $brief = $item->json_params->brief->{$locale} ?? $item->brief;
                $image = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
                $date = date('d/m/Y', strtotime($item->created_at));
                // Viet ham xu ly lay slug
                $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['product'], $item->alias ?? $title_item, $item->id, 'detail', $item->taxonomy_title);
                $price = $item->json_params->price ?? null;
                  $price_old = $item->json_params->price_old ?? null;
              @endphp
                <div class="oc-item">
                  <div class="product">
                    <div class="product-image">
                      <a href="{{ $alias }}"
                        ><img style="height: 308px;" 
                          src="{{ $image }}"
                          alt="{{ $title_item }}"
                      /></a>
                      <a href="{{ $alias }}"
                        ><img style="height: 308px;" 
                          src="{{ $image }}"
                          alt="{{ $title_item }}"
                      /></a>
                      <div class="bg-overlay">
                        <div
                          class="bg-overlay-content align-items-end justify-content-between"
                          data-hover-animate="fadeIn"
                          data-hover-speed="400"
                        >
                          <a style="border-radius: 50% !important;" href="javascript:void(0)" title="@lang('Add to cart')" data-id="{{ $item->id }}" data-quantity="1" class="add-to-cart btn me-2"
                            ><i class="icon-shopping-cart"></i
                          ></a>
                        </div>
                        <div class="bg-overlay-bg bg-transparent"></div>
                      </div>
                    </div>
                    <div class="product-desc center">
                      <div class="product-title">
                        <h3><a href="{{ $alias }}">{{ $title_item }}</a></h3>
                      </div>
                      <div class="product-price"><del>{{ isset($price_old) && $price_old > 0 ? number_format($price_old, 0, ',', '.') . ' đ' : "" }}</del> <ins>{{ isset($price) && $price > 0 ? number_format($price, 0, ',', '.') . ' VNĐ' : __('Contact') }}</ins>
                      </div>
                      <div class="product-rating">
                        <i class="icon-star3"></i>
                        <i class="icon-star3"></i>
                        <i class="icon-star3"></i>
                        <i class="icon-star3"></i>
                        <i class="icon-star-half-full"></i>
                      </div>
                    </div>
                  </div>
                </div>
              @endforeach
              </div>
            </div>
        @endif
      </div>
    </div>
  </section>
@endsection
@push('script')
<script>
  $('#color_product').on('change', function() {
    let val = $(this).val();
    $("#image-color").attr("src",val);
  })
</script>
@endpush