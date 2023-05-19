<?php if($block): ?>
  <?php
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
  ?>

  <div id="teammate" class="section bg-transparent my-0 pt-4 pb-6">
    <div class="container">
      <div class="heading-block">
        <h2 class="font-title"><?php echo e($title); ?></h2>
      </div>
      <div class="teammate-content d-flex flex-column gap-5 pt-4">
        <?php if($block_childs): ?>
          <?php $__currentLoopData = $block_childs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php
              $title_child = $item->json_params->title->{$locale} ?? $item->title;
              $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
              $content_child = $item->json_params->content->{$locale} ?? $item->content;
              $image_child = $item->image != '' ? $item->image : null;
              $url_link = $item->url_link != '' ? $item->url_link : 'javascript:void(0)';
              $url_link_title = $item->json_params->url_link_title->{$locale} ?? $item->url_link_title;
              $row = $item->iorder == 2 ? 'flex-row-reverse' : '';
            ?>

            <div class="row <?php echo e($row); ?>">
              <div class="col-lg-5 col-md-5 col-sm-12">
                <div class="teammate-content-text">
                  <h3><?php echo e($title_child); ?></h3>
                  <p>
                    <?php echo e($brief_child); ?>

                  </p>
                </div>
              </div>
              <div class="col-lg-7 col-md-7 col-sm-12">
                <div class="teammate-content-img">
                  <img
                    src="<?php echo e($image_child); ?>"
                    alt="<?php echo e($title_child); ?>"
                  />
                </div>
              </div>
            </div>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <?php endif; ?>
      </div>
    </div>
  </div>
<?php endif; ?>
<?php /**PATH D:\xampp\htdocs\geem\resources\views/frontend/blocks/introduce/styles/teammate.blade.php ENDPATH**/ ?>