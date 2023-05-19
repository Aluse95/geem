

<?php
  $title = $detail->json_params->title->{$locale} ?? $detail->title;
  $brief = $detail->json_params->brief->{$locale} ?? null;
  $content = $detail->json_params->content->{$locale} ?? null;
  $image = $detail->image != '' ? $detail->image : null;
  $image_thumb = $detail->image_thumb != '' ? $detail->image_thumb : null;
  $date = date('H:i d/m/Y', strtotime($detail->created_at));
  
  // For taxonomy
  $taxonomy_json_params = json_decode($detail->taxonomy_json_params);
  $taxonomy_title = $taxonomy_json_params->title->{$locale} ?? $detail->taxonomy_title;
  $image_background = $taxonomy_json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? null);
  $taxonomy_alias = Str::slug($taxonomy_title);
  $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $taxonomy_alias, $detail->taxonomy_id);
  
  $seo_title = $detail->json_params->seo_title ?? $title;
  $seo_keyword = $detail->json_params->seo_keyword ?? null;
  $seo_description = $detail->json_params->seo_description ?? $brief;
  $seo_image = $image ?? ($image_thumb ?? null);
  
  // schema information
  $datePublished = date('Y-m-d', strtotime($detail->created_at));
  $dateModified = date('Y-m-d', strtotime($detail->updated_at));
?>

<?php $__env->startSection('content'); ?>
  
  <section
    id="page-title"
    class="page-title-parallax page-title-dark include-header"
    style="
      padding: 150px 0 50px;
      background-image: url('<?php echo e($image_background); ?>');
      background-size: cover;
      background-position: center center;
    "
    data-bottom-top="background-position:0px 400px;"
    data-top-bottom="background-position:0px -500px;"
    
  >
    <div class="heading-block">
      <h2 class="font-title text-center text-white"><?php echo e($title); ?></h2>
    </div>
  </section>

  <section id="content">
    <div class="content-wrap">
      <div class="container clearfix">
        <div class="row gutter-40 col-mb-80">
          <div class="postcontent col-lg-9">
            <div class="single-post mb-0">
              <div class="entry clearfix">
                <div class="entry-content mt-0" id="content-detail">

                  <?php echo $content ?? ''; ?>

                  <div class="clear"></div>
                  <div class="si-share border-0 d-flex justify-content-between align-items-center">
                    <span><?php echo app('translator')->get('Share this post'); ?>:</span>
                    <div>
                      <a href="http://www.facebook.com/sharer/sharer.php?u=<?php echo e(Request::fullUrl()); ?>"
                        class="social-icon si-borderless si-facebook">
                        <i class="icon-facebook"></i>
                        <i class="icon-facebook"></i>
                      </a>
                      <a href="https://twitter.com/intent/tweet?url=<?php echo e(Request::fullUrl()); ?>"
                        class="social-icon si-borderless si-twitter">
                        <i class="icon-twitter"></i>
                        <i class="icon-twitter"></i>
                      </a>
                      <a href="https://www.instagram.com/cws/share?url=<?php echo e(Request::fullUrl()); ?>"
                        class="social-icon si-borderless si-instagram">
                        <i class="icon-instagram"></i>
                        <i class="icon-instagram"></i>
                      </a>
                    </div>
                  </div>
                </div>
              </div>

              <?php if(isset($relatedPosts) && count($relatedPosts) > 0): ?>
                <h4 class="title-widget text-uppercase"><?php echo app('translator')->get('Related Posts'); ?></h4>
                <div class="related-posts row posts-md col-mb-30">
                  <?php $__currentLoopData = $relatedPosts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php
                      $title = $item->json_params->title->{$locale} ?? $item->title;
                      $brief = $item->json_params->brief->{$locale} ?? $item->brief;
                      $image = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
                      $date = date('d/m/Y', strtotime($item->created_at));
                      // Viet ham xu ly lay slug
                      $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item->taxonomy_alias ?? $item->taxonomy_title, $item->taxonomy_id);
                      $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item->alias ?? $title, $item->id, 'detail', $item->taxonomy_title);
                    ?>
                    <div class="entry col-12 col-md-6">
                      <div class="grid-inner row align-items-center gutter-20">
                        <div class="col-4 col-xl-5">
                          <div class="entry-image">
                            <a href="<?php echo e($alias); ?>"><img src="<?php echo e($image); ?>" alt="Blog Single"></a>
                          </div>
                        </div>
                        <div class="col-8 col-xl-7">
                          <div class="entry-title title-xs nott">
                            <h3><a href="<?php echo e($alias); ?>"><?php echo e(Str::limit($title, 70)); ?></a></h3>
                          </div>
                          <div class="entry-content d-none d-xl-block">
                            <?php echo e(Str::limit($brief, 100)); ?>

                          </div>
                        </div>
                      </div>
                    </div>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
              <?php endif; ?>
            </div>
          </div>
          <?php echo $__env->make('frontend.components.sidebar.post', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
      </div>
    </div>
  </section>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\xampp\htdocs\geem\resources\views/frontend/pages/service/detail.blade.php ENDPATH**/ ?>