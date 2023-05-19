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
    $first = $block_childs->first();
    $last = $block_childs->last()
  ?>

  <div id="company" class="pt-5">
    <div class="container">
      <div class="company-text">
        <h2>
          <?php echo e($brief); ?>

        </h2>
      </div>
      <div class="company-img-container">
        <div class="row">
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
              
              <?php if($item->id == $first->id): ?>
              <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="company-img">
                  <img src="<?php echo e($image_child); ?>" alt="<?php echo e($title_child); ?>" />
                </div>
              </div>
              <?php endif; ?>
              <?php if($item->id == $last->id): ?>
              <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="row h-100">
                  <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="company-img">
                      <img src="<?php echo e($image_child); ?>" alt="<?php echo e($title_child); ?>" />
                    </div>
                  </div>

                  <?php if($item->sub > 0): ?>
                    <?php
                      $childs = $blocks->filter(function ($val, $key) use ($item) {
                          return $val->parent_id == $item->id;
                      });
                    ?>

                    <?php if($childs): ?>
                      <?php $__currentLoopData = $childs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php
                          $title_child = $item->json_params->title->{$locale} ?? $item->title;
                          $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
                          $content_child = $item->json_params->content->{$locale} ?? $item->content;
                          $image_child = $item->image != '' ? $item->image : null;
                        ?>

                        <div class="col-lg-6 col-md-6 col-sm-12">
                          <div class="company-img">
                            <img src="<?php echo e($image_child); ?>" alt="<?php echo e($title_child); ?>" />
                          </div>
                        </div>
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endif; ?>
                  <?php endif; ?>
                </div>
              </div>
              <?php endif; ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          <?php endif; ?>
        </div>
      </div>
    </div>
  </div>
<?php endif; ?>
<?php /**PATH D:\xampp\htdocs\geem\resources\views/frontend/blocks/introduce/styles/company.blade.php ENDPATH**/ ?>