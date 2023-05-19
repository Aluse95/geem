@if ($block)
  @php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $background = $block->image_background != '' ? $block->image_background : url('assets/img/banner.jpg');
    $url_link = $block->url_link != '' ? $block->url_link : '';
    $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
    
    $params['status'] = App\Consts::POST_STATUS['active'];
    $params['is_featured'] = true;
    $params['is_type'] = App\Consts::POST_TYPE['post'];
    
    $rows = App\Http\Services\ContentService::getCmsPost($params)
        ->limit(5)
        ->get();
    $first = $rows->first();
    $posts = $rows->splice(1);
  @endphp

  <div id="blog" class="section bg-transparent my-0">
    <div class="container">
      <div class="heading-block">
        <h2 class="font-title">{{ $title }}</h2>
      </div>
      <div class="row mt-5">
        <div class="col-lg-6 col-md-6 col-12">
          @php
            $title_1 = $first->json_params->title->{$locale} ?? $first->title;
            $brief_1 = $first->json_params->brief->{$locale} ?? $first->brief;
            $image_1 = $first->image_thumb != '' ? $first->image_thumb : ($first->image != '' ? $first->image : null);
            // $date = date('H:i d/m/Y', strtotime($first->created_at));
            $date_1 = date('d', strtotime($first->created_at));
            $month_1 = date('M', strtotime($first->created_at));
            $year_1 = date('Y', strtotime($first->created_at));
            // Viet ham xu ly lay slug
            $alias_category_1 = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $first->taxonomy_alias ?? $first->taxonomy_title, $first->taxonomy_id);
            $alias_1 = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $first->alias ?? $title, $first->id, 'detail', $first->taxonomy_title);
          @endphp
          <a href="{{ $alias_1 }}">
            <div class="blog-item large">
              <div class="blog-item-img">
                <img src="{{ $image_1 }}" alt="{{ $title_1 }}" />
              </div>
              <div class="blog-item-content">
                <h3>{{ $title_1 }}</h3>
                <p>
                  {{ Str::limit($brief_1, 120) }}
                </p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-6 col-md-6 col-12">
          <div class="row col-mb-30">
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

              <div class="col-lg-6 col-md-6 col-12">
                <a href="{{ $alias }}">
                  <div class="blog-item">
                    <div class="blog-item-img">
                      <img src="{{ $image }}" alt="{{ $title }}" />
                    </div>
                    <div class="blog-item-content">
                      <h3>{{ $title }}</h3>
                      <p>
                        {{ Str::limit($brief, 60) }}
                      </p>
                    </div>
                  </div>
                </a>
              </div>
            @endforeach
          </div>
        </div>
      </div>
    </div>
  </div>
@endif
