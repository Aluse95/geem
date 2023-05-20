@extends('frontend.layouts.default')

@php
  $page_title = $taxonomy->title ?? ($page->title ?? $page->name);
  $image_background = $taxonomy->json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? 'images/banner.png');
  
  $title = $taxonomy->json_params->title->{$locale} ?? ($taxonomy->title ?? null);
  $image = $taxonomy->json_params->image ?? 'images/bg.jpg';
  $seo_title = $taxonomy->json_params->seo_title ?? $title;
  $seo_keyword = $taxonomy->json_params->seo_keyword ?? null;
  $seo_description = $taxonomy->json_params->seo_description ?? null;
  $seo_image = $image ?? null;
  $str_alias = '.html?id=';
@endphp

@push('style')
<style>
  #form {
    background: linear-gradient(
      90deg,
      rgba(0, 0, 0, 0.7035189075630253) 0%,
      rgba(0, 0, 0, 0.7035189075630253) 100%
    ),
    url('{{ $image }}');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
  }
  #form input {
    margin-bottom: 10px;
  }
</style>
@endpush

@section('content')

  <section
    id="page-title"
    class="page-title-parallax page-title-dark include-header"
    style="
      padding: 150px 0 50px;
      background-image: url('{{ $image_background }}');
      background-size: cover;
      background-position: center center;
    "
    data-bottom-top="background-position:0px 400px;"
    data-top-bottom="background-position:0px -500px;"
  >
  <div class="heading-block">
    <h2 class="font-title text-center text-white">{{ $title }}</h2>
  </div>
  </section>

  <section id="content">
    <div class="content-wrap pb-0 pt-5">
      <div id="list-project" class="section bg-transparent my-0 pt-0">
        <div class="container">
          <div class="row col-mb-30 mt-5">
            @foreach ($posts as $item)
              @php
                $title = $item->json_params->title->{$locale} ?? $item->title;
                $brief = $item->json_params->brief->{$locale} ?? $item->brief;
                $image = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
                $date = date('H:i d/m/Y', strtotime($item->created_at));
                // Viet ham xu ly lay alias bai viet
                $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['resource'], $item->taxonomy_alias ?? $item->taxonomy_title, $item->taxonomy_id);
                $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['resource'], $item->alias ?? $title, $item->id, 'detail', $item->taxonomy_title);
              @endphp

              <div class="col-lg-4 col-md-6 col-sm-12">
                <a href="{{ $alias }}">
                  <div class="list-project-item">
                    <div class="list-project-item-img">
                      <img src="{{ $image }}" alt="{{ $title }}" />
                    </div>
                    <div class="list-project-item-content dark">
                      <h3>{{ $title }}</h3>
                    </div>
                  </div>
                </a>
              </div>
            @endforeach
            {{ $posts->withQueryString()->links('frontend.pagination.default') }}
          </div>
        </div>
      </div>

      <div id="form" class="section dark my-0">
        <div class="container">
          <div class="quick-contact-widget dark clearfix">
            <div class="heading-block">
              <h2 class="font-title">@lang('Consultancy contact')</h2>
            </div>
            <div class="form-result"></div>
            <form id="quick-contact-form"
              action="{{ route('frontend.contact.store') }}"
              method="post"
              class="quick-contact-form mb-0 mt-6 form_ajax"
            >
              @csrf
              <div class="form-process">
                <div class="css3-spinner">
                  <div class="css3-spinner-scaler"></div>
                </div>
              </div>
    
              <input type="text" class="required sm-form-control input-block-level not-dark valid"
              id="name" name="name" value="" placeholder="@lang('Fullname')" required />
    
              <input
                type="email"
                class="required sm-form-control email input-block-level not-dark valid"
                id="email"
                name="email"
                value=""
                placeholder="Email"
                required
              />
    
              <input
                type="text"
                class="required sm-form-control input-block-level not-dark valid"
                id="phone"
                name="phone"
                value=""
                placeholder="@lang('phone')"
                required
              />
    
              <textarea
                class="required sm-form-control input-block-level not-dark short-textarea valid"
                id="message"
                type="text"
                name="content"
                rows="5"
                cols="30"
                placeholder="@lang('Message')"
              ></textarea>
    
              <button
                type="submit"
                id="quick-contact-form-submit"
                class="button button-border button-dark topmargin-sm font-title mx-auto d-block"
              >
              @lang('Submit')
              </button>
              <input type="hidden" name="is_type" value="call_request">
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>

@endsection
