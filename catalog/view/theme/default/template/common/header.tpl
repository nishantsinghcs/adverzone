<?php if(!isset($_SESSION['lang']))
{
  $_SESSION['lang']='ar';
}?>
<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body class="<?php echo $class; ?>">
    <nav id="top" style="height:auto">
      <div class="container">
        <img src="./image/ad.jpg" style="float:left;margin-left:20%;width:60%;height:8%" >
      </div>
    </nav>
<nav id="top">
  <div class="container">
    <?php //echo $currency; ?>
    <?php echo $language; ?>
<!-- Add countries -->
<div class="pull-left">
  <div class="btn-group">
    <button class="btn btn-link dropdown-toggle" data-toggle="dropdown">
            <img src="image/flags/globe.png" alt="English" title="English">
                <span class="hidden-xs hidden-sm hidden-md">Countries</span> <i class="fa fa-caret-down"></i></button>
              <ul class="dropdown-menu">
               <li><a href="http://adverzone.com/"><img src="image/flags/ae.png" alt="arabic" title="arabic">UAE</a></li>
            <li><a href="http://algerie.adverzone.com/"><img src="image/flags/dz.png" alt="English" title="English">Algeria</a></li>
            <li><a href="http://bahrain.adverzone.com/"><img src="image/flags/bh.png" alt="arabic" title="arabic">Bahrain</a></li>
            <li><a href="http://egypt.adverzone.com/"><img src="image/flags/eg.png" alt="arabic" title="arabic">Egypt</a></li>
            <li><a href="http://jordan.adverzone.com/"><img src="image/flags/jo.png" alt="arabic" title="arabic">Jordan</a></li>
            <li><a href="http://saudi.adverzone.com/"><img src="image/flags/sa.png" alt="arabic" title="arabic">KSA</a></li>
            <li><a href="http://kuwait.adverzone.com/"><img src="image/flags/kw.png" alt="arabic" title="arabic">Kuwait</a></li>
            <li><a href="http://lebanon.adverzone.com/"><img src="image/flags/lb.png" alt="arabic" title="arabic">Lebanon</a></li>
             <li><a href="http://libya.adverzone.com/"><img src="image/flags/libia.png" alt="arabic" title="arabic">Libiya</a></li>
              <li><a href="http://morocco.adverzone.com/"><img src="image/flags/ma.png" alt="arabic" title="arabic">Morocco</a></li>
               <li><a href="http://oman.adverzone.com/"><img src="image/flags/om.png" alt="arabic" title="arabic">Oman</a></li>
                <li><a href="http://qatar.adverzone.com/"><img src="image/flags/qa.png" alt="arabic" title="arabic">Quatar</a></li>
                 <li><a href="http://syria.adverzone.com/"><img src="image/flags/sy.png" alt="arabic" title="arabic">Syria</a></li>
                  <li><a href="http://tunisie.adverzone.com/"><img src="image/flags/tn.png" alt="arabic" title="arabic">Tunisia</a></li>
          </ul>
  </div>
  
</div>

<!-- end add countries-->
<!-- add cities -->
<div class="pull-left">
  <div class="btn-group">
    <button class="btn btn-link dropdown-toggle" data-toggle="dropdown">
            <span class="hidden-xs hidden-sm hidden-md">/ All Cities (UAE)</span> <i class="fa fa-caret-down"></i></button>
              <ul class="dropdown-menu">
            <li><a href="http://dubai.adverzone.com/">Dubai</a></li>
            <li><a href="http://abudhabi.adverzone.com/">Abu Dhabi</a></li>
            <li><a href="http://ajman.adverzone.com/">Ajman</a></li>
            <li><a href="http://alain.adverzone.com/">Al Ain</a></li>
            <li><a href="http://fujairah.adverzone.com/">Fujairah</a></li>
            <li><a href="http://rak.adverzone.com/">Ras Al Khaimah</a></li>
            <li><a href="http://sharjah.adverzone.com/">Sharjah</a></li>
            <li><a href="http://uaq.adverzone.com/">Umm al Quwain </a></li>
           
          </ul>
  </div>
  
</div>
<!-- end  add cities -->

    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php
    @session_start();if(isset( $_SESSION['SESS_TOKEN']) && isset($_SESSION['SESS_USER_NAME_AZ']))
   { if($data['lang']=='en'){
   echo "Welcome "; echo $_SESSION['SESS_USER_NAME_AZ']; }
  elseif ($data['lang']=='ar') { echo " ترحيب "; echo $_SESSION['SESS_USER_NAME_AZ']; }
      } 
      else {if($data['lang']=='en')
            {echo "Login / Register";}
        elseif ($data['lang']=='ar') {
              echo "ضع إعلانك هنا";}
         }?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php //echo $account; ?>"><?php //echo $text_account; ?></a></li>
            <li><a href="<?php // echo $order; ?>"><?php //echo $text_order; ?></a></li>
            <li><a href="<?php // echo $transaction; ?>"><?php //echo $text_transaction; ?></a></li>
            <li><a href="<?php // echo $download; ?>"><?php //echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <?php
    if(isset( $_SESSION['SESS_TOKEN']) && isset($_SESSION['SESS_USER_NAME_AZ']))
            { if($data['lang']=='en'){?>
          <li><a href="./admin/index.php?route=common/logout&token=<?php echo $_SESSION['SESS_TOKEN'];?>"><?php echo "Logout";}elseif ($data['lang']=='ar') {?>
            <li><a href="./admin/index.php?route=common/logout&token=<?php echo $_SESSION['SESS_TOKEN'];?>">
          <?php echo " Logout ";}?></a></li>
          <?php } 
    else { ?>
            <li><a href='./loginadvertiser.php?lang="<?php echo $data['lang'];?>"'><?php echo $text_login; ?></a></li>
            <li><a href='./loginadvertiser.php?lang="<?php echo $data['lang'];?>"'><?php echo $text_register; ?></a></li>
            <?php  }
         } ?>
            
          </ul>
        </li>    <!--
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li> -->
        
        <li><a href="<?php //echo $shopping_cart; ?>" title="<?php //echo $text_shopping_cart; ?>"><!--<i class="fa fa-shopping-cart"></i>--> <span class="hidden-xs hidden-sm hidden-md"><?php //echo $text_shopping_cart; ?></span></a></li>


        <li><a href="<?php //echo $checkout; ?>" title="<?php //echo $text_checkout; ?>"><!--<i class="fa fa-share"></i> --><span class="hidden-xs hidden-sm hidden-md"><?php //echo $text_checkout; ?></span></a></li>
      </ul>
    </div>
  </div>
</nav>
<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" style=";z-index:999;height:60px;"/></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-sm-5"><?php //echo $search; ?>
      </div>
     



      <!-- Shopping Cart here 
        <div class="col-sm-3"><?php //echo $cart; ?></div>
      -->


<!-- place your ad here -->

<div class="col-sm-3">
  <?php
  // For Ad poster 
    @session_start();if(isset( $_SESSION['SESS_TOKEN'])) {$token=$_SESSION['SESS_TOKEN'];
  echo "<a href='./admin/index.php?route=common/dashboard&token=$token'>";}
else{echo "<a href='./loginadvertiser.php?lang="; echo $data['lang'];echo "'>";}?>
  <button type="button"  style="color: #ffffff;text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);background-color: #363636;background-image: linear-gradient(to bottom, #444444, #222222);background-repeat: repeat-x;border-color: #222222 #222222 #000000;};padding: 10px 16px;font-size: 15px;padding: 7.5px 12px;font-size: 12px;border: 1px solid #cccccc;
border-radius: 4px;box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);}display: block;width: 100%;padding-left: 0;padding-right: 0;">
 <span id="cart-total"><?php
    @session_start();if(isset( $_SESSION['SESS_TOKEN']) && isset($_SESSION['SESS_USER_NAME_AZ']))
   { if($data['lang']=='en'){
   echo "Place you Ad Here"; }
  elseif ($data['lang']=='ar') { echo " ترحيب "; echo $_SESSION['SESS_USER_NAME_AZ']; }
      } 
      else {if($data['lang']=='en')
            {echo "Place your ad here ";}
        elseif ($data['lang']=='ar') {
              echo "ضع إعلانك هنا";}
         }?></span>
</button>
</a>
</div>

<!-- End of place your ad here-->

    </div>
  </div>
</header>
<?php if ($categories) { ?>
<div class="container">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>
<?php } ?>



<?php 
if(isset($_GET['route']) && $_GET['route']=="common/home" || !isset($_GET['route'])){
 

?>
<div class="container">
<div class="row">
    <column id="column-left" class="col-sm-3 hidden-xs">
    <div class="list-group">
    <p class="list-group-item active" style="background:#2886b7;color:#fbfbfb;font-size:14px"><b>
      <?php if($data['lang']=='en'){echo "Search";}
        elseif ($data['lang']=='ar') {echo " بحث ";} ?>
</b></p> 
      <p class="list-group-item active">
        <select style="width:100%" id="city">
        <?php if($data['lang']=='en'){?>
        <option value=2 >Abu Dhabhi</option>
        <option value=3 >Ajman</option>
        <option value=4 >Al Ain</option>
        <option value=1 >Dubai</option>
        <option value=5 >Fujairah</option>
        <option value=6 >Ras Al Khaimah</option>
        <option value=7 >Sharjah</option>
        <option value=8 >Umm Al Quwain</option>
          <?php }
        elseif ($data['lang']=='ar') { ?>
        <option value=2>أبوظبي</option>
        <option value=3>عجمان</option>
        <option value=4>العين</option>
        <option value=1>دبي</option>
        <option value=5 >الفجيرة</option>
        <option value=6 >رأس الخيمة</option>
        <option value=7 >الشارقة</option>
        <option value=8 >أم القيوين</option>

        <?php } ?>
        
      </select> 
      </p>
   
      <p class="list-group-item active">
      <select id="catt" style="width:100%">
        <option value=""> <?php if($data['lang']=='en'){echo "All Adverzone";}
        elseif ($data['lang']=='ar') {echo " جميع Adverzone ";} ?></option>
        <?php foreach ($categories as $category) { ?>
        <option value="<?php echo $category['id'];?>"><?php echo $category['name']; ?></option>
        <?php } ?>
        
      </select>  
      </p>
      <p class="list-group-item active">
        <input type="text" name="search" id="srchbox" style="width:100%" placeholder=" <?php if($data['lang']=='en'){echo "Keywords";}
        elseif ($data['lang']=='ar') {echo "الكلمات الرئيسية";} ?> " onfocus="if(this.value=' <?php if($data['lang']=='en'){echo "Keywords";}
        elseif ($data['lang']=='ar') {echo "الكلمات الرئيسية";} ?> '){this.value=''}" value="">
       </p>
        <p class="list-group-item active">
          <input type="button" style="background:#03a9ff;color:#fbfbfb;width:50%;height:30px;border-radius:5px;border:none;" Onclick="searchdata();" value="<?php if($data['lang']=='en'){echo "Search";}
        elseif ($data['lang']=='ar') {echo " بحث ";} ?> ">
        </p>
        <script>
        function searchdata(){
          //alert("Seach start now.");
          var city=document.getElementById('city').value;
        var search=document.getElementById('srchbox').value;
          var catid=document.getElementById('catt').value;
      window.location='./index.php?route=product/search&search=' + search + '&category_id=' + catid + '&city=' + city + '&path=119';
      // alert(catid);
        }
        </script>
     
      
    </div>
    <div id="banner0" class="owl-carousel owl-theme" style="opacity: 1; display: block;">
     <img src="./image/ad3.jpg" style="height:220px;width:250px;">
  </div>
</column>
                <div id="content" class="col-sm-9">      
             

 <?php foreach ($categories as $category) { $flag=1; ?>
        <?php if ($category['children']){ ?>
             <div class="row"  style="width:250px;float:left;margin-left:0px;">
        <div class="col-sm-3" style="width:250px;" >
          
          <h3 style="width:240px;"><img src="./image/<?php echo $category['image'];?>" style="width:25px;height:25px"> <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?> >></a></h3>
            <ul style="width:240px">
              <?php //foreach (array_chunk($category['children'], 20) as $children) { ?>
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
               <?php foreach ($children as $child) {   ?>
                        <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name'];?></a></li>
                     <?php if($data['lang']=='en') {?>
                       <?php if($category['name']=="Jobs" && substr($child['name'], 0,5)=='Media') { ?><li style="list-style:none"><img src="./image/ad2.jpg" style="height:200px;width:280px;"></li> <?php  }}?>
                       <?php if($data['lang']=='ar') {?>
                       <?php if($category['name']=="وظائف" && substr($child['name'], 0,14)=='بالجملة') { ?> <li style="margin-left:50px"><img src="./image/ad2.jpg" style="height:200px;width:280px;margin-left:200px"></li> 
                       <?php  }}?> 

                       <?php if($data['lang']=='en') {?>
                       <?php if($category['name']=="Jobs" && substr($child['name'], 0,5)=='Logis') { ?>
                        </ul>
                      </div>
                    </div>
                    <div class="row"  style="width:250px;float:left;margin-left:0px;">
        <div class="col-sm-3" style="width:250px;" >
          
          <h3 style="width:240px;"><img src="./image/<?php echo $category['image'];?>" style="width:25px;height:25px"></h3> 
            <ul style="width:240px">
                    <?php  }}?>
                       <?php if($data['lang']=='ar') {?>
                       <?php if($category['name']=="وظائف" && substr($child['name'], 0, 16)=='المحاسبة') { ?>
                        </ul>
                      </div>
                    </div>
                    <div class="row"  style="width:250px;float:left;margin-left:0px;">
        <div class="col-sm-3" style="width:250px;" >
          
          <h3 style="width:240px;"><img src="./image/<?php echo $category['image'];?>" style="width:25px;height:25px"></h3>
            <ul style="width:240px">
                       <?php  }}?>
                        
                <?php } ?>

              <?php } ?>
              <b><a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a>
                <?php //echo strlen("بالجملة");?>
                   
              </b>
             </ul>
               </div>
              </div>

              <?php  } ?>

              <?php } ?>

          <!--   
          -->
  

          


            </div>
    </div>
</div>
<?php   
} ?>