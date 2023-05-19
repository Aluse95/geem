<?php if($block): ?>
  <?php
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
  ?>

  <style>
    #about-us {
      background: linear-gradient(
          90deg,
          rgba(0, 0, 0, 0.7035189075630253) 0%,
          rgba(0, 0, 0, 0.7035189075630253) 100%
        ),
        url(<?php echo e($image_background); ?>);
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
    }
  </style>

  <div id="about-us" class="section dark my-0">
    <div class="container">
      <div class="heading-block">
        <h2 class="font-title"><?php echo e($title); ?></h2>
      </div>
      <p class="text-center">
        <?php echo e($brief); ?>

      </p>
      <div class="row mt-5 col-mb-30">
        <?php if($block_childs): ?>
          <?php $__currentLoopData = $block_childs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php
              $title_child = $item->json_params->title->{$locale} ?? $item->title;
              $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
              $content_child = $item->json_params->content->{$locale} ?? $item->content;
              $image_child = $item->image != '' ? $item->image : null;
              $url_link = $item->url_link != '' ? $item->url_link : 'javascript:void(0)';
              $url_link_title = $item->json_params->url_link_title->{$locale} ?? $item->url_link_title;
            ?>

            <div class="col-sm-6 col-lg-4">
              <div class="feature-box fbox-center fbox-dark fbox-plain">
                <div class="fbox-icon">
                  <i class="i-circled icon-certificate"></i>
                </div>
                <div class="fbox-content">
                  <p>
                    <?php echo e($brief_child); ?>

                  </p>
                </div>
              </div>
            </div>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <?php endif; ?>
      </div>
    </div>
  </div>
<?php endif; ?>

<?php /**PATH D:\xampp\htdocs\geem\resources\views/frontend/blocks/custom/styles/about_us.blade.php ENDPATH**/ ?>