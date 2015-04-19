<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-8'; ?>
        <?php } ?>

        <div class="<?php echo $class; ?>">
          
          <?php if ($thumb || $images) { ?>
          <ul class="thumbnails">
             <li><h2><?php if($jan==5){echo $mpn;}else{}?></h2></li>
            <?php if ($thumb) { ?>
            <li><a class="thumbnail"   <?php if($jan==4){echo 'style="height:140px;width:120px"';}
            elseif($jan==5){echo 'style="height:100px;width:120px;border-radius:100%"';} else{}?> href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"
                <?php if($jan==4){echo 'style="height:120px;width:120px"';}elseif ($jan==5) {echo 'style="height:80px;width:80px"';}
            else {} ?>
             /></a></li>
            <?php } ?>
            <?php if($jan==4 || $jan==5){}else{ ?>
            <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
            <li class="image-additional"><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
           <?php } ?>
           <?php } ?> 
           <?php } // end of thumb hider?> 
              <?php
              if($jan==4|| $jan==5){
                echo "<div style='padding-left:20px;padding-bottom:10px;'>";
                 if($_SESSION['lang']=='en'){echo"Job Profile: <b>";}
                  elseif ($_SESSION['lang']=='ar') {echo " الملف الوظيفة <b> ";} echo $heading_title;echo "</b>";
                echo "</div>";}else {}  ?>
          
          </ul>
          <?php } ?>
          <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-description" data-toggle="tab"><?php
                if($jan==4){ if($_SESSION['lang']=='en'){echo"About me :";}elseif ($_SESSION['lang']=='ar') {echo "  عني";}}
              elseif($jan==5){if($_SESSION['lang']=='en'){echo"Job Description :";}elseif ($_SESSION['lang']=='ar') {echo " المسمى الوظيفي ";}}
              else { echo $tab_description;}?></a></li>
            <?php if ($attribute_groups) { ?>
            <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
            <?php } ?>
            <?php if ($review_status) { ?>
            <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
            <?php } ?>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
            <?php if ($attribute_groups) { ?>
            <div class="tab-pane" id="tab-specification">
              <table class="table table-bordered">
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                <thead>
                  <tr>
                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                  <tr>
                    <td><?php echo $attribute['name']; ?></td>
                    <td><?php echo $attribute['text']; ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
                <?php } ?>
              </table>
            </div>
            <?php } ?>
            <?php if ($review_status) { ?>
            <div class="tab-pane" id="tab-review">
              <form class="form-horizontal">
                <div id="review"></div>
                <h2><?php echo $text_write; ?></h2>
                <?php if ($review_guest) { ?>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="" id="input-name" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                    <div class="help-block"><?php echo $text_note; ?></div>
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<?php echo $entry_good; ?></div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-captcha"><?php echo $entry_captcha; ?></label>
                    <input type="text" name="captcha" value="" id="input-captcha" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-12"> <img src="index.php?route=tool/captcha" alt="" id="captcha" /> </div>
                </div>
                <div class="buttons">
                  <div class="pull-right">
                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                  </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
            </div>
            <?php } ?>
          </div>
        </div>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-4'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <div class="btn-group">
            <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');"><i class="fa fa-heart"></i></button>
            <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');"><i class="fa fa-exchange"></i></button>
          </div>
         <!-- sucess fail -->
         <div id="alert-sucess" style="display:none;margin: 10px auto auto;background: #fcf8e3!important; border: 1px solid #faebcc;color: #8a6d3b; padding: 10px; position: relative;z-index: 1;">
         <p style="text-align:center;">
         <div style="  float: right!important;"> <a id="hideMessage" style="font-family: 'Open Sans',Arial,sans-serif;font-weight: 700;cursor:pointer" title="Hide">X</a></div>
        You Have Sucessfully Applied to the Job.
        </p>
       </div>
       <div id="alert-sucess2" style="display:none;margin: 10px auto auto;background: #fcf8e3!important; border: 1px solid #faebcc;color: #8a6d3b; padding: 10px; position: relative;z-index: 1;">
         <p style="text-align:center;">
         <div style="  float: right!important;"> <a id="hideMessage2" style="font-family: 'Open Sans',Arial,sans-serif;font-weight: 700;cursor:pointer" title="Hide">X</a></div>
        Candidate shaortlisted and Informed!!
        </p>
       </div>
       <script>
       $('#hideMessage').click(function(){
         $('#alert-sucess').hide();
         });

       $('#hideMessage2').click(function(){
         $('#alert-sucess2').hide();
         });
       </script>
         <!-- end sucess fail -->
          <h3>
            <?php  if($jan==5){ 
            if(isset($_SESSION['SESS_USER_ID_AZ'])){ 
                $DB_HOST  ="localhost";
                  $DB_USER ='nishant'; $DB_PASSWORD    ='123_az'; 
                   $DB_DATABASE    ='az'; $conn = mysql_connect($DB_HOST,$DB_USER,$DB_PASSWORD) or mysql_error(); mysql_select_db($DB_DATABASE, $conn) or die("Something Went Wrong !!");
                       $errmsg_arr = array();
                         $errflag = false;
                         $id=$_SESSION['SESS_USER_ID_AZ'];
                        // echo $id;
                            $queryuser="select * FROM az_user WHERE user_id='$id'";
                            $resultuser=mysql_query($queryuser);
                             $rowuser=mysql_fetch_array($resultuser);
                             

              ?>
            <button  type="button" style="color: #ffffff;text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);background-color: #0158ff;padding: 10px 16px;font-size: 15px;padding: 7.5px 12px;font-size: 12px;border: 1px solid #cccccc;
          border-radius: 4px;display: block;width: 70%;padding-left: 0;padding-right: 0;">
           <span id="applyjob">Apply To the Job</span>
            </button>
            <?php } else { ?>
             <button  type="button" style="color: #ffffff;text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);background-color: #0158ff;padding: 10px 16px;font-size: 15px;padding: 7.5px 12px;font-size: 12px;border: 1px solid #cccccc;
          border-radius: 4px;display: block;width: 70%;padding-left: 0;padding-right: 0;">
           <span>Login to Apply the Job</span>
            </button>
            <?php } ?>

            <script>
            // Apply to jobs script
              $('#applyjob').click(function(){
                var applytoemail="<?php echo $sku;?>";
                var applybyemail="<?php echo $rowuser['email']; ?>";
                var applyname="<?php  echo $rowuser['firstname']; ?>";
                var resume="<?php echo $rowuser['resume']; ?>"

                 $.ajax({url: './catalog/applyjob.php?byemail='+applybyemail + '&toemail=' +applytoemail + '&applyname=' + applyname + '&resume=' +resume,
                     success: function(output) {
                      $('#alert-sucess').show();
                     },
                   error: function (xhr, ajaxOptions, thrownError) {
                   //alert(xhr.status + " "+ thrownError);
                   alert('Something went wrong. Reload the page !!');
                   }}); 
              });

             </script>
            <?php }


            elseif($jan==4){
             if(isset($_SESSION['SESS_USER_ID_AZ'])){
                 $DB_HOST  ="localhost";
                  $DB_USER ='nishant'; $DB_PASSWORD    ='123_az'; 
                   $DB_DATABASE    ='az'; $conn = mysql_connect($DB_HOST,$DB_USER,$DB_PASSWORD) or mysql_error(); mysql_select_db($DB_DATABASE, $conn) or die("Something Went Wrong !!");
                       $errmsg_arr = array();
                         $errflag = false;
                         $id=$_SESSION['SESS_USER_ID_AZ'];
                        // echo $id;
                            $queryuser="select * FROM az_user WHERE user_id='$id'";
                            $resultuser=mysql_query($queryuser);
                             $rowuser=mysql_fetch_array($resultuser);
              ?>
            <button id="shortlistjob" type="button" style="color: #ffffff;text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);background-color: #0158ff;padding: 10px 16px;font-size: 15px;padding: 7.5px 12px;font-size: 12px;border: 1px solid #cccccc;
          border-radius: 4px;display: block;width: 70%;padding-left: 0;padding-right: 0;">
           <span id="">ShortList Candidate</span>
            </button>
            <?php } else {?>
            <button type="button" style="color: #ffffff;text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);background-color: #0158ff;padding: 10px 16px;font-size: 15px;padding: 7.5px 12px;font-size: 12px;border: 1px solid #cccccc;
          border-radius: 4px;display: block;width: 70%;padding-left: 0;padding-right: 0;">
           <span >Login to Select Candidate</span>
            </button>
            <?php  } ?>
            <script>
             // Shortlist candidate script
                $('#shortlistjob').click(function(){
                  var candidateemail="<?php echo $sku;?>";
                var companyemail="<?php echo $rowuser['email']; ?>";
                var companyname="<?php  echo $rowuser['firstname']; ?>";
                var jd="<?php echo $rowuser['resume']; ?>"
                var candidatename="<?php echo $mpn;?>";
                $.ajax({url: './catalog/selectcandidate.php?candidateemail='+candidateemail + '&companyemail=' +companyemail + '&companyname=' + companyname + '&candidatename=' +candidatename + '&companyjd=' +jd,
                     success: function(output) {
                      $('#alert-sucess2').show();
                     },
                   error: function (xhr, ajaxOptions, thrownError) {
                   //alert(xhr.status + " "+ thrownError);
                   alert('Something went wrong. Reload the page !!');
                   }}); 
              });
              
            </script>
           <?php } ?>



            <?php  if($jan==4|| $jan==5){}
            else {echo $heading_title;} ?>
          </h3>
          <ul class="list-unstyled">
            <?php if ($data['meta_title']) { ?>
             <li><?php
              if($_SESSION['lang']=='en'){echo"Urgency :";}elseif ($_SESSION['lang']=='ar') {echo " إلحاح ";} ?> 
              <a ><?php echo $data['tag'];  ?></a></li>
             <?php } ?>
              <!-- motor things -->
            <?php if($jan==2){ ?>
            <?php if ($manufacturer) { ?>
            <li><?php echo $text_manufacturer; ?> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
            <?php } ?>
             <?php if ($manufacturer) { ?>
            <li><?php echo "Model"; ?> <a href="<?php echo $manufacturers; ?>"><?php echo $ean; ?></a></li>
            <?php } ?>
            <?php if ($data['weight']) { ?>
            <li><?php if($_SESSION['lang']=='en'){echo"Make Year: ";}elseif ($_SESSION['lang']=='ar') {echo "سنة صنع ";} ?> <a><?php echo  ($data['weight']+0);  ?></a></li>
             <?php } ?>
             <a ><?php if ($data['upc']) { ?></a >
            <li><?php if($_SESSION['lang']=='en'){echo"Kilometers: ";}elseif ($_SESSION['lang']=='ar') {echo " كم ";} ?> <a ><?php echo $data['upc'];  ?></a></li>
             <?php } ?>
             <?php if ($data['meta_title']) { ?>
             <li><?php if($_SESSION['lang']=='en'){echo" Seller Type: ";}elseif ($_SESSION['lang']=='ar') {echo " نوع البائع ";} ?> <a ><?php echo $data['meta_title'];  ?></a></li>
             <?php } ?>
              <?php } ?>
              <!-- motor thing end -->

            <!-- job part start -->
            <?php if($jan==5){ ?>
             <?php if ($data['weight']) { ?>
            <li><?php if($_SESSION['lang']=='en'){echo" Minimun Experience Required: ";}elseif ($_SESSION['lang']=='ar') {echo " الحد الأدنى من الخبرة المطلوبة ";} ?> 
              <a><?php echo  ($data['weight']+0);  ?><?php if($_SESSION['lang']=='en'){echo"Years: ";}elseif ($_SESSION['lang']=='ar') {echo " عام ";} ?></a></li> <?php } ?>
             <?php }?>
            <?php if($jan==4){ ?>
             <?php if ($data['weight']) { ?>
            <li><?php if($_SESSION['lang']=='en'){echo"Experience : ";}elseif ($_SESSION['lang']=='ar') {echo " تجربة ";} ?> 
              <a><?php echo  ($data['weight']+0);  ?><?php if($_SESSION['lang']=='en'){echo"Years: ";}elseif ($_SESSION['lang']=='ar') {echo " عام ";} ?></a></li> <?php } ?>
             <?php } ?>
             <?php if($jan==4){ ?>
              <li><?php  if($_SESSION['lang']=='en'){echo"Maximum Education :";}elseif ($_SESSION['lang']=='ar') {echo " حي :";} ?>
             <a > <?php echo $data['meta_title']; ?></a ></li>
              <?php } ?>
             <!-- job part end -->
            <?php if($jan==5 || $jan==4){ ?>
            <li><?php  if($_SESSION['lang']=='en'){echo"Email Address :";}elseif ($_SESSION['lang']=='ar') {echo " عنوان البريد الإلكتروني :";} ?>
            <?php }
            else{if($_SESSION['lang']=='en'){echo"Contact Person  :";} elseif ($_SESSION['lang']=='ar') {echo " الشخص الذي يمكن الاتصال به:";}}?>
            <a ><?php echo $sku;?></a ></li>
             <!-- property codes -->
               <?php if($jan==1){ ?>
              <li><?php  if($_SESSION['lang']=='en'){echo"Neighbourhood :";}elseif ($_SESSION['lang']=='ar') {echo " حي :";} ?>
             <a > <?php echo $data['meta_title']; ?></a ></li>
              <?php } ?>
              
              <!-- end property -->
              <?php if($jan==5){?>
              <li><?php if($_SESSION['lang']=='en'){echo"Job Location : ";}elseif ($_SESSION['lang']=='ar') {echo "مكان الوظيفة:";} ?>
                <a > <?php echo $location;?></a ></li>
              <?php } 
              elseif($jan==4) {?><li><?php if($_SESSION['lang']=='en'){echo"Preferred Location  :";} elseif ($_SESSION['lang']=='ar') {echo "  الموقع المفضل:";} ?>
             <a > <?php echo $location;?></a ></li>
              <?php }
                else {?><li>
            <?php  if($_SESSION['lang']=='en'){echo"Location  :";}elseif ($_SESSION['lang']=='ar') {echo " موقع:";} ?>
           <a > <?php echo $location;}?></a ></li>
            
            <li><?php
            if($_SESSION['lang']=='en'){echo"Contact Number:";} elseif ($_SESSION['lang']=='ar') {echo " رقم الاتصال:";}?>
            <a ><?php echo $model; ?></a ></li>
           
           <?php if ($reward) { ?>
            <li><?php //echo $text_reward; ?> <?php //echo $reward; ?></li>
            <?php } ?>
            <li><?php  if($jan==5){}else{
              if($_SESSION['lang']=='en'){echo"Posted By :";}elseif ($_SESSION['lang']=='ar') {echo " أرسلت بواسطة ";} ?>
              <a ><?php echo $mpn;} ?></a ></li>
                <li><?php 
              if($_SESSION['lang']=='en'){echo"Posted on :";}elseif ($_SESSION['lang']=='ar') {echo " نشر على ";} ?>

              <a ><?php echo date("g:ia \- \n l jS F Y", $data['date']); ?></a ></li>
          </ul>
          <?php if ($price) { ?>
          <ul class="list-unstyled">
            <?php if (!$special) { ?>
            <li>
            <?php if($jan==4){ if($_SESSION['lang']=='en'){echo"Salary: ";}elseif ($_SESSION['lang']=='ar') {echo " <b>الراتب المتوقع</b>";}?>
              <a > <?php  echo $price;?></a >
             <?php } elseif ($jan==5) {
               if($_SESSION['lang']=='en'){echo"Maximum Salary Offered per Annum  :";}elseif($_SESSION['lang']=='ar') {echo " أقصى الراتب سنويا";}?>
                <a ><?php echo $price;?></a>
            <?php }
             else
             { if($_SESSION['lang']=='en'){echo"Price  :";}elseif ($_SESSION['lang']=='ar') {echo " السعر ";}?>
                <a><?php echo $price;?></a>

             <?php }?>
           
            </li>
            <?php } else { ?>
            <li><span style="text-decoration: line-through;"><?php //echo $price; ?></span></li>
            <li>
              <h2><?php // echo $special; ?></h2>
            </li>
            <?php } ?>
            <?php if ($tax) { ?>
            <li><?php //echo $text_tax; ?> <?php //echo $tax; ?></li>
            <?php } ?>
            <?php if ($points) { ?>
            <li><?php //echo $text_points; ?> <?php //echo $points; ?></li>
            <?php } ?>
            <?php if ($discounts) { ?>
            <li>
              <hr>
            </li>
            <?php foreach ($discounts as $discount) { ?>
            <li><?php //echo $discount['quantity']; ?><?php //echo $text_discount; ?><?php //echo $discount['price']; ?></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>
          <div id="product" style="display:none;">
            <?php if ($options) { ?>
            <hr>
            <h3><?php echo $text_option; ?></h3>
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'image') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php if ($recurrings) { ?>
            <hr>
            <h3><?php echo $text_payment_recurring ?></h3>
            <div class="form-group required">
              <select name="recurring_id" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($recurrings as $recurring) { ?>
                <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                <?php } ?>
              </select>
              <div class="help-block" id="recurring-description"></div>
            </div>
            <?php } ?>
            <div class="form-group">
              <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
              <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
              <br />
              <!-- <button type="button" id="button-cart" data-loading-text="<?php //echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><?php //echo $button_cart; ?></button>
            -->
            </div>
            <?php if ($minimum > 1) { ?>
            <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php //echo $text_minimum; ?></div>
            <?php } ?>
          </div>
          <?php if ($review_status) { ?>
          <div class="rating">
            <p>
              <?php for ($i = 1; $i <= 5; $i++) { ?>
              <?php if ($rating < $i) { ?>
              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } ?>
              <?php } ?>
              <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a></p>
            <hr>
            <!-- AddThis Button BEGIN -->
            <div class="addthis_toolbox addthis_default_style"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script> 
            <!-- AddThis Button END --> 
          </div>
          <?php } ?>
        </div>
      </div>
      <?php if ($products) { ?>
      <h3><?php echo $text_related; ?></h3>
      <div class="row">
        <?php $i = 0; ?>
        <?php foreach ($products as $product) { ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-lg-6 col-md-6 col-sm-12 col-xs-12'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-lg-4 col-md-4 col-sm-6 col-xs-12'; ?>
        <?php } else { ?>
        <?php $class = 'col-lg-3 col-md-3 col-sm-6 col-xs-12'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <div class="product-thumb transition">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div class="caption">
              <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
              <p><?php echo $product['description']; ?></p>
              <?php if ($product['rating']) { ?>
              <div class="rating">
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                <?php if ($product['rating'] < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
              <?php if ($product['price']) { ?>
              <p class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                <?php } ?>
                <?php if ($product['tax']) { ?>
                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                <?php } ?>
              </p>
              <?php } ?>
            </div>
            <div class="button-group">
              <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span> <i class="fa fa-shopping-cart"></i></button>
              <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
              <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
            </div>
          </div>
        </div>
        <?php if (($column_left && $column_right) && ($i % 2 == 0)) { ?>
        <div class="clearfix visible-md visible-sm"></div>
        <?php } elseif (($column_left || $column_right) && ($i % 3 == 0)) { ?>
        <div class="clearfix visible-md"></div>
        <?php } elseif ($i % 4 == 0) { ?>
        <div class="clearfix visible-md"></div>
        <?php } ?>
        <?php $i++; ?>
        <?php } ?>
      </div>
      <?php } ?>
      <?php if ($tags) { ?>
      <p><?php //echo $text_tags; ?>
        <?php for ($i = 0; $i < count($tags); $i++) { ?>
        <?php if ($i < (count($tags) - 1)) { ?>
        <a href="<?php //echo $tags[$i]['href']; ?>"><?php //echo $tags[$i]['tag']; ?></a>,
        <?php } else { ?>
        <a href="<?php //echo $tags[$i]['href']; ?>"><?php //echo $tags[$i]['tag']; ?></a>
        <?php } ?>
        <?php } ?>
      </p>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
  $.ajax({
    url: 'index.php?route=product/product/getRecurringDescription',
    type: 'post',
    data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
    dataType: 'json',
    beforeSend: function() {
      $('#recurring-description').html('');
    },
    success: function(json) {
      $('.alert, .text-danger').remove();
      
      if (json['success']) {
        $('#recurring-description').html(json['success']);
      }
    }
  });
});
//--></script> 
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
  $.ajax({
    url: 'index.php?route=checkout/cart/add',
    type: 'post',
    data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
    dataType: 'json',
    beforeSend: function() {
      $('#button-cart').button('loading');
    },
    complete: function() {
      $('#button-cart').button('reset');
    },
    success: function(json) {
      $('.alert, .text-danger').remove();
      $('.form-group').removeClass('has-error');

      if (json['error']) {
        if (json['error']['option']) {
          for (i in json['error']['option']) {
            var element = $('#input-option' + i.replace('_', '-'));
            
            if (element.parent().hasClass('input-group')) {
              element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
            } else {
              element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
            }
          }
        }
        
        if (json['error']['recurring']) {
          $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
        }
        
        // Highlight any found errors
        $('.text-danger').parent().addClass('has-error');
      }
      
      if (json['success']) {
        $('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
        
        $('#cart-total').html(json['total']);
        
        $('html, body').animate({ scrollTop: 0 }, 'slow');
        
        $('#cart > ul').load('index.php?route=common/cart/info ul li');
      }
    }
  });
});
//--></script> 
<script type="text/javascript"><!--
$('.date').datetimepicker({
  pickTime: false
});

$('.datetime').datetimepicker({
  pickDate: true,
  pickTime: true
});

$('.time').datetimepicker({
  pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
  var node = this;
  
  $('#form-upload').remove();
  
  $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');
  
  $('#form-upload input[name=\'file\']').trigger('click');
  
  timer = setInterval(function() {
    if ($('#form-upload input[name=\'file\']').val() != '') {
      clearInterval(timer);
      
      $.ajax({
        url: 'index.php?route=tool/upload',
        type: 'post',
        dataType: 'json',
        data: new FormData($('#form-upload')[0]),
        cache: false,
        contentType: false,
        processData: false,
        beforeSend: function() {
          $(node).button('loading');
        },
        complete: function() {
          $(node).button('reset');
        },
        success: function(json) {
          $('.text-danger').remove();
          
          if (json['error']) {
            $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
          }
          
          if (json['success']) {
            alert(json['success']);
            
            $(node).parent().find('input').attr('value', json['code']);
          }
        },
        error: function(xhr, ajaxOptions, thrownError) {
          alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
      });
    }
  }, 500);
});
//--></script> 
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
  $.ajax({
    url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
    type: 'post',
    dataType: 'json',
    data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
    beforeSend: function() {
      $('#button-review').button('loading');
    },
    complete: function() {
      $('#button-review').button('reset');
      $('#captcha').attr('src', 'index.php?route=tool/captcha#'+new Date().getTime());
      $('input[name=\'captcha\']').val('');
    },
    success: function(json) {
      $('.alert-success, .alert-danger').remove();
      
      if (json['error']) {
        $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
      }
      
      if (json['success']) {
        $('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');
        
        $('input[name=\'name\']').val('');
        $('textarea[name=\'text\']').val('');
        $('input[name=\'rating\']:checked').prop('checked', false);
        $('input[name=\'captcha\']').val('');
      }
    }
  });
});

$(document).ready(function() {
  $('.thumbnails').magnificPopup({
    type:'image',
    delegate: 'a',
    gallery: {
      enabled:true
    }
  });
});
//--></script> 
<?php echo $footer; ?>
