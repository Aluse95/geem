@if ($block)
  @php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $content = $block->json_params->content->{$locale} ?? $block->content;
    $image = $block->image ?? '';
    $image_background = $block->image_background ?? 'images/lux12.jpg';
    $url_link = $block->url_link ?? '';
    $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
    
    // Filter all blocks by parent_id
    $block_childs = $blocks->filter(function ($item, $key) use ($block) {
        return $item->parent_id == $block->id;
    });
  @endphp

  <style>
    #about-us {
      background: linear-gradient(
          90deg,
          rgba(0, 0, 0, 0.7035189075630253) 0%,
          rgba(0, 0, 0, 0.7035189075630253) 100%
        ),
        url({{ $image_background }});
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
    }
  </style>

  <div id="about-us" class="section dark my-0">
    <div class="container">
      <div class="heading-block">
        <h2 class="font-title">{{ $title }}</h2>
      </div>
      <p class="text-center">
        {{ $brief }}
      </p>
      <div class="row mt-5 col-mb-30">
        @if ($block_childs)
          @foreach ($block_childs as $item)
            @php
              $title_child = $item->json_params->title->{$locale} ?? $item->title;
              $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
              $content_child = $item->json_params->content->{$locale} ?? $item->content;
              $image_child = $item->image != '' ? $item->image : null;
              $url_link = $item->url_link != '' ? $item->url_link : 'javascript:void(0)';
              $url_link_title = $item->json_params->url_link_title->{$locale} ?? $item->url_link_title;
            @endphp

            <div class="col-sm-6 col-lg-4">
              <div class="feature-box fbox-center fbox-dark fbox-plain">
                <div class="fbox-icon">
                  <i class="i-circled icon-certificate"></i>
                </div>
                <div class="fbox-content">
                  <p>
                    {{ $brief_child }}
                  </p>
                </div>
              </div>
            </div>
          @endforeach
        @endif
      </div>
    </div>
  </div>
@endif

