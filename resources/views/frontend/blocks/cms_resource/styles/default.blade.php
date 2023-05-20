@if ($block)
  @php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $url_link = $block->url_link != '' ? $block->url_link : '';
    $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
    $taxonomy = App\Models\CmsTaxonomy::where('taxonomy', 'resource')->first();
    $params['status'] = App\Consts::POST_STATUS['active'];
    $params['is_featured'] = true;
    $params['is_type'] = App\Consts::POST_TYPE['resource'];
    
    $rows = App\Http\Services\ContentService::getCmsPost($params)->where('taxonomy_id', $taxonomy->id )->take(4)->get();
  @endphp

  <div id="project-architect" class="section dark my-0">
    <div class="container">
      <div class="heading-block">
        <h2 class="font-title">{{ $title }}</h2>
      </div>
      <div class="row mt-5 col-mb-30">
        @foreach ($rows as $item)
          @php
            $title = $item->json_params->title->{$locale} ?? $item->title;
            $brief = $item->json_params->brief->{$locale} ?? $item->brief;
            $image = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
            $date = date('H:i d/m/Y', strtotime($item->created_at));
            // Viet ham xu ly lay slug
            $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['service'], $item->taxonomy_title, $item->taxonomy_id);
            $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['service'], $title, $item->id, 'detail', $item->taxonomy_title);
          @endphp

          <div class="col-lg-3 col-md-6 col-12">
            <a href="{{ $alias }}">
              <div class="project-architect-item">
                <div class="project-architect-item-img">
                  <img src="{{ $image }}" alt="{{ $title }}" />
                </div>
                <div class="project-architect-item-content">
                  <h3>{{ $title }}</h3>
                </div>
              </div>
            </a>
          </div>
        @endforeach

        <div class="col-lg-12 mt-3 d-flex justify-content-center">
          <a href="{{ $url_link }}"
            class="button button-border button-dark button-large topmargin-sm font-title"
            >{{ $url_link_title }}</a
          >
        </div>
      </div>
    </div>
  </div>
@endif
