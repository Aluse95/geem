<?php if($block): ?>
  <?php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $content = $block->json_params->content->{$locale} ?? $block->content;
    $image = $block->image != '' ? $block->image : '';
    $image_background = $block->image_background != '' ? $block->image_background : '';
    $url_link = $block->url_link != '' ? $block->url_link : '';
    $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
    
    // Filter all blocks by parent_id
    $block_childs = $blocks->filter(function ($item, $key) use ($block) {
        return $item->parent_id == $block->id;
    });
    $childs = $block_childs->chunk(3);
    $delay = $delay_2 = -200;
  ?>

  <style>
    #why-choose {
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

  <div id="why-choose" class="section my-0 dark">
    <div class="container clearfix">
      <div class="heading-block">
        <h2 class="font-title"><?php echo e($title); ?></h2>
      </div>

      <div class="row col-mb-50 mb-4 mt-5">
        <div class="col-lg-4 col-md-6">
          <?php if($childs[0]): ?>
            <?php $__currentLoopData = $childs[0]; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <?php
                $title_child = $item->json_params->title->{$locale} ?? $item->title;
                $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
                $content_child = $item->json_params->content->{$locale} ?? $item->content;
                $image_child = $item->image != '' ? $item->image : null;
                $url_link = $item->url_link != '' ? $item->url_link : 'javascript:void(0)';
                $url_link_title = $item->json_params->url_link_title->{$locale} ?? $item->url_link_title;
                $icon = $item->icon != '' ? $item->icon : '';
                $margin = $item->id == $childs[0]->first()->id ? '' : 'mt-5';
                $delay += 200;
              ?>

              <div class="feature-box flex-md-row-reverse text-md-end <?php echo e($margin); ?>"
                data-animate="fadeIn" data-delay="<?php echo e($delay); ?>"
              >
                <div class="fbox-icon">
                  <a href="#"><i class="<?php echo e($icon); ?>"></i></a>
                </div>
                <div class="fbox-content">
                  <h3><?php echo e($title_child); ?></h3>
                  <p>
                    <?php echo e($brief_child); ?>

                  </p>
                </div>
              </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          <?php endif; ?>
        </div>

        <div class="col-lg-4 d-md-none d-lg-flex align-items-center justify-content-center text-center px-6">
          <img src="<?php echo e($image); ?>" alt="<?php echo e($title); ?>" />
        </div>

        <div class="col-lg-4 col-md-6">
          <?php if($childs[1]): ?>
            <?php $__currentLoopData = $childs[1]; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <?php
                $title_child = $item->json_params->title->{$locale} ?? $item->title;
                $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
                $content_child = $item->json_params->content->{$locale} ?? $item->content;
                $image_child = $item->image != '' ? $item->image : null;
                $url_link = $item->url_link != '' ? $item->url_link : 'javascript:void(0)';
                $url_link_title = $item->json_params->url_link_title->{$locale} ?? $item->url_link_title;
                $icon = $item->icon != '' ? $item->icon : '';
                $margin_2 = $item->id == $childs[1]->first()->id ? '' : 'mt-5';
                $delay_2 += 200;
              ?>

              <div class="feature-box <?php echo e($margin_2); ?>"
                data-animate="fadeIn" data-delay="<?php echo e($delay_2); ?>"
              >
                <div class="fbox-icon">
                  <a href="#"><i class="<?php echo e($icon); ?>"></i></a>
                </div>
                <div class="fbox-content">
                  <h3><?php echo e($title_child); ?></h3>
                  <p>
                    <?php echo e($brief_child); ?>

                  </p>
                </div>
              </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          <?php endif; ?>
        </div>
      </div>
    </div>
  </div>
<?php endif; ?>

<?php /**PATH D:\xampp\htdocs\geem\resources\views/frontend/blocks/custom/styles/why_choose.blade.php ENDPATH**/ ?>