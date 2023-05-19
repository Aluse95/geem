@if ($block)
  @php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $content = $block->json_params->content->{$locale} ?? $block->content;
    $image = $block->image != '' ? $block->image : '';
    $image_background = $block->image_background ?? 'images/bg.jpg';
    $url_link = $block->url_link != '' ? $block->url_link : '';
    $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
    $style = isset($block->json_params->style) && $block->json_params->style == 'slider-caption-right' ? 'd-none' : '';

    // Filter all blocks by parent_id
    $block_childs = $blocks->filter(function ($item, $key) use ($block) {
      return $item->parent_id == $block->id;
    });
  @endphp

  <div id="teammate" class="section bg-transparent my-0 pt-4 pb-6">
    <div class="container">
      <div class="heading-block">
        <h2 class="font-title">{{ $title }}</h2>
      </div>
      <div class="teammate-content d-flex flex-column gap-5 pt-4">
        @if ($block_childs)
          @foreach ($block_childs as $item)
            @php
              $title_child = $item->json_params->title->{$locale} ?? $item->title;
              $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
              $content_child = $item->json_params->content->{$locale} ?? $item->content;
              $image_child = $item->image != '' ? $item->image : null;
              $url_link = $item->url_link != '' ? $item->url_link : 'javascript:void(0)';
              $url_link_title = $item->json_params->url_link_title->{$locale} ?? $item->url_link_title;
              $row = $item->iorder == 2 ? 'flex-row-reverse' : '';
            @endphp

            <div class="row {{ $row }}">
              <div class="col-lg-5 col-md-5 col-sm-12">
                <div class="teammate-content-text">
                  <h3>{{ $title_child }}</h3>
                  <p>
                    {{ $brief_child }}
                  </p>
                </div>
              </div>
              <div class="col-lg-7 col-md-7 col-sm-12">
                <div class="teammate-content-img">
                  <img
                    src="{{ $image_child }}"
                    alt="{{ $title_child }}"
                  />
                </div>
              </div>
            </div>
          @endforeach
        @endif
      </div>
    </div>
  </div>
@endif
