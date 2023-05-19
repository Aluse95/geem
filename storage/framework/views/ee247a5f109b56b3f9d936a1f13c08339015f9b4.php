<?php if($block): ?>
  <?php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $content = $block->json_params->content->{$locale} ?? $block->content;
    $image = $block->image != '' ? $block->image : null;
    $background = $block->image_background != '' ? $block->image_background : 'images/bg.jpg';
    $url_link = $block->url_link != '' ? $block->url_link : '';
    $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
    
    $block_childs = $blocks->filter(function ($item, $key) use ($block) {
        return $item->parent_id == $block->id;
    });
  ?>

  <style>
    #form {
      background: linear-gradient(
          90deg,
          rgba(0, 0, 0, 0.7035189075630253) 0%,
          rgba(0, 0, 0, 0.7035189075630253) 100%
        ),
        url('<?php echo e($background); ?>');
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
    }
    #form input {
      margin-bottom: 10px;
    }
  </style>

  <div id="form" class="section dark my-0">
    <div class="container">
      <div class="quick-contact-widget dark clearfix">
        <div class="heading-block">
          <h2 class="font-title"><?php echo e($title); ?></h2>
        </div>
        <div class="form-result"></div>
        <form id="quick-contact-form"
          action="<?php echo e(route('frontend.contact.store')); ?>"
          method="post"
          class="quick-contact-form mb-0 mt-6 form_ajax"
        >
          <?php echo csrf_field(); ?>
          <div class="form-process">
            <div class="css3-spinner">
              <div class="css3-spinner-scaler"></div>
            </div>
          </div>

          <input type="text" class="required sm-form-control input-block-level not-dark valid"
          id="name" name="name" value="" placeholder="Họ tên" required />

          <input
            type="email"
            class="required sm-form-control email input-block-level not-dark valid"
            id="email"
            name="email"
            value=""
            placeholder="Email"
            required
          />

          <input
            type="text"
            class="required sm-form-control input-block-level not-dark valid"
            id="phone"
            name="phone"
            value=""
            placeholder="Điện thoại"
            required
          />

          <textarea
            class="required sm-form-control input-block-level not-dark short-textarea valid"
            id="message"
            type="text"
            name="content"
            rows="5"
            cols="30"
            placeholder="Lời nhắn"
          ></textarea>

          <button
            type="submit"
            id="quick-contact-form-submit"
            class="button button-border button-dark topmargin-sm font-title mx-auto d-block"
          >
          <?php echo e($url_link_title); ?>

          </button>
          <input type="hidden" name="is_type" value="call_request">
        </form>
      </div>
    </div>
  </div>
<?php endif; ?>
<?php /**PATH D:\xampp\htdocs\geem\resources\views/frontend/blocks/form/styles/booking.blade.php ENDPATH**/ ?>