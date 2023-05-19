<?php if($block): ?>
  <?php
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
  ?>

  <div id="blog" class="section bg-transparent my-0">
    <div class="container">
      <div class="heading-block">
        <h2 class="font-title"><?php echo e($title); ?></h2>
      </div>
      <div class="row mt-5">
        <div class="col-lg-6 col-md-6 col-12">
          <?php
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
          ?>
          <a href="<?php echo e($alias_1); ?>">
            <div class="blog-item large">
              <div class="blog-item-img">
                <img src="<?php echo e($image_1); ?>" alt="<?php echo e($title_1); ?>" />
              </div>
              <div class="blog-item-content">
                <h3><?php echo e($title_1); ?></h3>
                <p>
                  <?php echo e(Str::limit($brief_1, 120)); ?>

                </p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-6 col-md-6 col-12">
          <div class="row col-mb-30">
            <?php $__currentLoopData = $posts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <?php
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
              ?>

              <div class="col-lg-6 col-md-6 col-12">
                <a href="<?php echo e($alias); ?>">
                  <div class="blog-item">
                    <div class="blog-item-img">
                      <img src="<?php echo e($image); ?>" alt="<?php echo e($title); ?>" />
                    </div>
                    <div class="blog-item-content">
                      <h3><?php echo e($title); ?></h3>
                      <p>
                        <?php echo e(Str::limit($brief, 60)); ?>

                      </p>
                    </div>
                  </div>
                </a>
              </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          </div>
        </div>
      </div>
    </div>
  </div>
<?php endif; ?>
<?php /**PATH D:\xampp\htdocs\geem\resources\views/frontend/blocks/cms_post/styles/default.blade.php ENDPATH**/ ?>