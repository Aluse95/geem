<footer id="footer" class="dark">
  <div class="container">
    <div class="footer-widgets-wrap">
      <div class="row col-mb-50">
        <div class="col-lg-6">
          <div
            class="widget clearfix d-flex flex-column justify-content-between align-items-center h-100"
          >
            <img
              src="<?php echo e($web_information->image->logo_footer ?? ''); ?>"
              alt="Image"
              class="footer-logo"
            />

            <div class="mt-4">
              <?php if(isset($web_information->social->facebook) && $web_information->social->facebook != ''): ?>
                <a
                  href="<?php echo e($web_information->social->facebook); ?>"
                  class="social-icon si-small si-rounded si-facebook"
                >
                  <i class="icon-facebook"></i>
                  <i class="icon-facebook"></i>
                </a>
              <?php endif; ?>

              <?php if(isset($web_information->social->twitter) && $web_information->social->twitter != ''): ?>
                <a
                  href="<?php echo e($web_information->social->twitter); ?>"
                  class="social-icon si-small si-rounded si-twitter"
                >
                  <i class="icon-twitter"></i>
                  <i class="icon-twitter"></i>
                </a>
              <?php endif; ?>

              <?php if(isset($web_information->social->youtube) && $web_information->social->youtube != ''): ?>
                <a
                  href="<?php echo e($web_information->social->youtube); ?>"
                  class="social-icon si-small si-rounded si-youtube"
                >
                  <i class="icon-youtube"></i>
                  <i class="icon-youtube"></i>
                </a>
              <?php endif; ?>

              <?php if(isset($web_information->social->instagram) && $web_information->social->instagram != ''): ?>
                <a
                  href="<?php echo e($web_information->social->instagram); ?>"
                  class="social-icon si-small si-rounded si-instagram"
                >
                  <i class="icon-instagram"></i>
                  <i class="icon-instagram"></i>
                </a>
              <?php endif; ?>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-lg-2">
          <div class="widget clearfix">
            <?php if(isset($menu)): ?>
              <?php
                $footer_menu = $menu->filter(function ($item, $key) {
                    return $item->menu_type == 'footer' && ($item->parent_id == null || $item->parent_id == 0);
                });
                
                $content = '';
                foreach ($footer_menu as $main_menu) {
                  $url = $title = '';
                  $title = isset($main_menu->json_params->title->{$locale}) && $main_menu->json_params->title->{$locale} != '' ? $main_menu->json_params->title->{$locale} : $main_menu->name;

                  $content .= '<h4>' . $title . '</h4>';
                  $content .= '<ul class="widget_links mb-0">';
                  foreach ($menu as $item) {
                    if ($item->parent_id == $main_menu->id) {
                      $title = isset($item->json_params->title->{$locale}) && $item->json_params->title->{$locale} != '' ? $item->json_params->title->{$locale} : $item->name;
                      $url = $item->url_link;
                      $active = $url == url()->current() ? 'active' : '';
          
                      $content .= '<li><a href="' . $url . '">' . $title . '</a>';
                      $content .= '</li>';
                    }
                  }
                  $content .= '</ul>';
                }
                echo $content;
              ?>
            <?php endif; ?>
          </div>
        </div>

        <div class="col-sm-6 col-lg-4">
          <div class="footer-information">
            <address class="mb-0">
              <abbr
                title="Headquarters"
                style="display: inline-block; margin-bottom: 7px"
                ><strong>Địa chỉ:</strong></abbr
              ><br />
              <?php echo e($web_information->information->address ?? ''); ?>

            </address>

            <abbr title="Phone Number"><strong>Điện thoại:</strong></abbr
            ><?php echo e($web_information->information->phone ?? ''); ?><br />
            <abbr title="Email Address"><strong>Email:</strong></abbr>
            <?php echo e($web_information->information->email ?? ''); ?>

          </div>
        </div>
      </div>
    </div>
  </div>

  <div id="copyrights">
    <div class="container">
      <div class="w-100 text-center">
        Copyrights &copy; 2023 FHM Việt Nam.
      </div>
    </div>
  </div>
</footer><?php /**PATH D:\xampp\htdocs\geem\resources\views/frontend/blocks/footer/styles/default.blade.php ENDPATH**/ ?>