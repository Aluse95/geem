@extends('frontend.layouts.default')

@php
  $page_title = $taxonomy->title ?? ($page->title ?? $page->name);
  $seo_title = $page_title . (isset($params['keyword']) && $params['keyword'] != '' ? ': ' . $params['keyword'] : '');
  
  $image_background = $taxonomy->json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? '');
@endphp

@section('content')
  {{-- Print all content by [module - route - page] without blocks content at here --}}

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
      <h2 class="font-title text-center text-white">
        @lang('Search')
        @if (isset($params['keyword']) && $params['keyword'] != '')
          {!! ': ' . $params['keyword'] !!}
        @endif
      </h2>
    </div>
  </section>

  <section id="content">
    <div class="content-wrap">
      <div class="container mb-3">
        <div class="row mb-5 clearfix">
          <div class="postcontent col-lg-9">
            <div class="row">
              @foreach ($posts as $item)
                @php
                  $title = $item->json_params->title->{$locale} ?? $item->title;
                  $brief = $item->json_params->brief->{$locale} ?? $item->brief;
                  $image = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
                  // $date = date('H:i d/m/Y', strtotime($item->created_at));
                  $date = date('d', strtotime($item->created_at));
                  $month = date('M', strtotime($item->created_at));
                  $year = date('Y', strtotime($item->created_at));
                  // Viet ham xu ly lay slug
                  $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item->taxonomy_alias ?? $item->taxonomy_title, $item->taxonomy_id);
                  $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item->alias ?? $title, $item->id, 'detail', $item->taxonomy_title);
                @endphp
                <div class="col-md-6">
                  <article class="entry">
                    <div class="entry-image mb-3">
                      <a href="{{ $alias }}"><img style="height: 500px" src="{{ $image }}" alt="{{ $title }}"></a>
                      <div class="bg-overlay">
                        <div class="bg-overlay-content dark" data-hover-animate="fadeIn" data-hover-speed="500">
                          <a href="{{ $alias }}" class="overlay-trigger-icon bg-light text-dark"
                            data-hover-animate="fadeIn" data-hover-speed="500"><i class="icon-line-ellipsis"></i></a>
                        </div>
                        <div class="bg-overlay-bg dark" data-hover-animate="fadeIn" data-hover-speed="500"></div>
                      </div>
                    </div>
                    <div class="entry-title">
                      <h3><a href="{{ $alias }}">{{ $title }}</a></h3>
                    </div>
                    <div class="entry-meta">
                      <ul>
                        <li><i class="icon-line2-folder"></i><a href="{{ $alias_category }}">
                            {{ $item->taxonomy_title }}</a>
                        </li>
                        <li><i class="icon-calendar-times1"></i> {{ $date }} {{ $month }}
                          {{ $year }}
                        </li>
                      </ul>
                    </div>
                    <div class="entry-content clearfix">
                      <p>{{ Str::limit($brief, 100) }}</p>
                    </div>
                  </article>
                </div>
              @endforeach
              {{ $posts->withQueryString()->links('frontend.pagination.default') }}
            </div>
          </div>
          @include('frontend.components.sidebar.post')
        </div>
      </div>
    </div>
  </section>

  {{-- End content --}}
@endsection
