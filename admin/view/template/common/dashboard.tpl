<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      
      <h1><?php
        if ($_SESSION['SESS_USERGRP']==1){
        echo $heading_title; }?></h1>
      <ul class="breadcrumb">
        <?php  if ($_SESSION['SESS_USERGRP']==1){foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } }?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">


  <!-- for ad poster -->  
<?php
    @session_start();
    $tkn=$_GET['token'];
    $_SESSION['SESS_TOKEN']=$tkn;
  if ($_SESSION['SESS_USERGRP']==1) {


  // For Ad poster ?>



    <?php if ($error_install) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_install; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="row">
      <div class="col-lg-3 col-md-3 col-sm-6"><?php echo $order; ?></div>
      <div class="col-lg-3 col-md-3 col-sm-6"><?php echo $sale; ?></div>
      <div class="col-lg-3 col-md-3 col-sm-6"><?php echo $customer; ?></div>
      <div class="col-lg-3 col-md-3 col-sm-6"><?php echo $online; ?></div>
    </div>
    <div class="row">
      <div class="col-lg-6 col-md-12 col-sx-12 col-sm-12"><?php echo $map; ?></div>
      <div class="col-lg-6 col-md-12 col-sx-12 col-sm-12"><?php echo $chart; ?></div>
    </div>
    <div class="row">
      <div class="col-lg-4 col-md-12 col-sm-12 col-sx-12"><?php echo $activity; ?></div>
      <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12"> <?php echo $recent; ?> </div>
    </div>
  </div>
<br><br><br><br>
<?php 
//else part for the ad poster start
}
 else{
  $tkon=$_GET['token']; ?>

  <style>
  body {
    background-color: #FCFCFC;
    overflow-x:hidden; 
}

.cover {
    height: 100%;
    width: 100%;
    position: absolute;
    z-index: 1;
}

.blur-in {
    -webkit-animation: blur 2s forwards;
    -moz-animation: blur 2s forwards;
    -o-animation: blur 2s forwards;
    animation: blur 2s forwards;
}

.blur-out {
    -webkit-animation: blur-out 2s forwards;
    -moz-animation: blur-out 2s forwards;
    -o-animation: blur-out 2s forwards;
    animation: blur-out 2s forwards;
}

@-webkit-keyframes blur {
    0% {
        -webkit-filter: blur(0px);
        -moz-filter: blur(0px);
        -o-filter: blur(0px);
        -ms-filter: blur(0px);
        filter: blur(0px);
    }

    100% {
        -webkit-filter: blur(4px);
        -moz-filter: blur(4px);
        -o-filter: blur(4px);
        -ms-filter: blur(4px);
        filter: blur(4px);
    }
}

@-moz-keyframes blur {
    0% {
        -webkit-filter: blur(0px);
        -moz-filter: blur(0px);
        -o-filter: blur(0px);
        -ms-filter: blur(0px);
        filter: blur(0px);
    }

    100% {
        -webkit-filter: blur(4px);
        -moz-filter: blur(4px);
        -o-filter: blur(4px);
        -ms-filter: blur(4px);
        filter: blur(4px);
    }
}

@-o-keyframes blur {
    0% {
        -webkit-filter: blur(0px);
        -moz-filter: blur(0px);
        -o-filter: blur(0px);
        -ms-filter: blur(0px);
        filter: blur(0px);
    }

    100% {
        -webkit-filter: blur(4px);
        -moz-filter: blur(4px);
        -o-filter: blur(4px);
        -ms-filter: blur(4px);
        filter: blur(4px);
    }
}

@keyframes blur {
    0% {
        -webkit-filter: blur(0px);
        -moz-filter: blur(0px);
        -o-filter: blur(0px);
        -ms-filter: blur(0px);
        filter: blur(0px);
    }

    100% {
        -webkit-filter: blur(4px);
        -moz-filter: blur(4px);
        -o-filter: blur(4px);
        -ms-filter: blur(4px);
        filter: blur(4px);
    }
}

@-webkit-keyframes blur-out {
    0% {
        -webkit-filter: blur(4px);
        -moz-filter: blur(4px);
        -o-filter: blur(4px);
        -ms-filter: blur(4px);
        filter: blur(4px);
    }

    100% {
        -webkit-filter: blur(0px);
        -moz-filter: blur(0px);
        -o-filter: blur(0px);
        -ms-filter: blur(0px);
        filter: blur(0px);
    }
}

@-moz-keyframes blur-out {
    0% {
        -webkit-filter: blur(4px);
        -moz-filter: blur(4px);
        -o-filter: blur(4px);
        -ms-filter: blur(4px);
        filter: blur(4px);
    }

    100% {
        -webkit-filter: blur(0px);
        -moz-filter: blur(0px);
        -o-filter: blur(0px);
        -ms-filter: blur(0px);
        filter: blur(0px);
    }
}

@-o-keyframes blur-out {
    0% {
        -webkit-filter: blur(4px);
        -moz-filter: blur(4px);
        -o-filter: blur(4px);
        -ms-filter: blur(4px);
        filter: blur(4px);
    }

    100% {
        -webkit-filter: blur(0px);
        -moz-filter: blur(0px);
        -o-filter: blur(0px);
        -ms-filter: blur(0px);
        filter: blur(0px);
    }
}

@keyframes blur-out {
    0% {
        -webkit-filter: blur(4px);
        -moz-filter: blur(4px);
        -o-filter: blur(4px);
        -ms-filter: blur(4px);
        filter: blur(4px);
    }

    100% {
        -webkit-filter: blur(0px);
        -moz-filter: blur(0px);
        -o-filter: blur(0px);
        -ms-filter: blur(0px);
        filter: blur(0px);
    }
}


span {
    color: dimgray;
}

.pop-up {
    position: fixed;
    margin: 0% auto;
    left: 0;
    right: 0;
    z-index: 2;
    width:750px;
}

.box {
    background-color: whitesmoke;
    text-align: center;
   
    
    position: relative;
    -webkit-box-shadow: 0px 4px 6px 0px rgba(0,0,0,0.1);
    -moz-box-shadow: 0px 4px 6px 0px rgba(0,0,0,0.1);
    box-shadow: 0px 4px 6px 0px rgba(0,0,0,0.1);
}


.close-button {
    transition: all 0.5s ease;
    position: absolute;
    background-color: #279FE0;
    padding: 1.5px 7px;
    left: 0;
    margin-left: -10px;
    margin-top: -9px;
    border-radius: 50%;
    border: 2px solid #fff;
    color: white;
    -webkit-box-shadow: -4px -2px 6px 0px rgba(0,0,0,0.1);
    -moz-box-shadow: -4px -2px 6px 0px rgba(0,0,0,0.1);
    box-shadow: -3px 1px 6px 0px rgba(0,0,0,0.1);
    cursor: pointer;
}

.close-button:hover {
    background-color: tomato;
    color: #fff;
}

h3 {
    text-align: center;
    padding-top: 15px;
    padding-bottom: 15px;
    color: #fff;
    background-color: #279FE0;
}

p {
    padding: 20px 65px 10px 65px;
    color: dimgray;
}

h1 {
    color: dimgray;
    font-family: Garamond, Baskerville, "Baskerville Old Face", "Hoefler Text", "Times New Roman", serif;
}

.ad-posting-wrapper{
    width:750px;
    //overflow: auto;
    display: block;
    height: 200px;
    background-color: #fbfbfb;

}
.ad-posting-img-wrapper{
    width:200px;
    height:150px;
    float:left;
   background-color: tomato;
     margin-left:40px;
    margin-bottom: 30px; 
    border-radius: 4px;
}
.ad-posting-img{
    width:100px;
    display:block;
    padding: 0px;
    border-radius: 100%;
    margin-left: 50px;
    margin-top: 25px;
    box-shadow: 1px 1px 10px #fff;
    -moz-transition-duration:.1s;
    -moz-transition-timing-function:ease-in,ease-out;
    -webkit-transition-duration:.1s;
    -webkit-transition-timing-function:ease-in,ease-out;
    cursor: pointer;
   
}
.ad-posting-img:hover{
     width:105px;
    box-shadow: 1px 1px 20px #fff;
}

.adpost{
    background:#0094b9;border-radius:100%;height:200px;width:200px;padding:20px;margin-left:12%;display:block;margin-top:20px
}
.yo1{cursor:pointer;padding:75px 10px 10px 40px;color:#fbfbfb;font-family:Stencil Std;font-size:16px;border-radius:100%}
.youradheader{font-family:Stencil Std;font-size:15px;float:left;padding:20px;width:100%;background:#fbfbfb;margin-left:-50px}
.adhits{margin-left: 80%}
.loweradshow{display:block;height:500px;width:90%;border-radius:8px;overflow-y: scroll;overflow-x:hidden;margin-left:20px;}
.roow{background:#0786d6;padding:40px;margin-left:-150px}
.roow1{color:#fbfbfb;font-family:Stencil Std;font-size:15px;float:left;margin-left:16%;padding-top:50px}
.adpostednow{background:#00b43b;border-radius:100%;height:100px;width:100px;padding:20px;float:right;padding:10px;display:block;margin-top:40px;margin-right: 100px}
.gola{padding:40%;color:#fbfbfb;font-family:Stencil Std;font-size:11px;border-radius:100%}
@media (max-width: 400px) {
    .adpost { background:#0094b9;border-radius:100%;height:100px;width:100px;padding:20px;margin-left:45%;display:block;margin-top:20px; }
      .yo1{cursor:pointer;padding:10px 5px 5px 0px;color:#fbfbfb;font-family:Stencil Std;font-size:10px;border-radius:100%}
      .youradheader{font-family:Stencil Std;font-size:11px;float:left;width:100%;}
      .adhits{margin-left: 80%;margin-top: -20px}
      .loweradshow{display:block;height:500px;width:80%;border-radius:8px;overflow-y: scroll;overflow-x:hidden;margin-left:0px;}
      .roow{background:#0786d6;padding:40px;}
      .roow1{color:#fbfbfb;font-family:Stencil Std;font-size:8px;float:none;margin-left:60%;padding-top:0px}
      .adpostednow{background:#00b43b;border-radius:100%;height:50px;width:50px;padding:20px;float:right;padding:10px;display:block;margin-top:20px;margin-right: 0px}
      .pop-up{width:90%;margin-left: 5px;margin-top:-35px;}
      .ad-posting-wrapper{overflow: auto;width: 100%;height:65px;}
      .ad-posting-img-wrapper{float: none;  margin-left:10px;width: 50px;height: 50px}
      h3{font-size: 12px}
      .ad-posting-img{margin:auto;}
      .ad-posting-img{height: 45px;width: 45px}
      .gola{padding:20%;color:#fbfbfb;font-family:Stencil Std;font-size:8px;}
}

  </style>

<script>
$(function() {
  $('.pop-up').hide();
  $('#overlay').removeClass('blur-in');
  $('#overlay').addClass('blur-out');
      $('.yo').click(function(s){
          $('.pop-up').fadeIn(1000);
          $('#overlay').removeClass('blur-out');
         $('#overlay').addClass('blur-in');
         //$('#overlay').addClass('blur-out');
          s.stopPropagation();
  });
      $('.close-button').click(function (e) { 

      $('.pop-up').fadeOut(700);
      $('#overlay').removeClass('blur-in');
      $('#overlay').addClass('blur-out');
      e.stopPropagation();
        
    });
 });
</script>
<script>

</script>


<div id="overlay" class="cover blur-in">
  <div class='row' style="background:tomato;padding:40px;margin-left:-150px">
      <div class='col-lg-3 col-md-3 col-sm-6 adpost' >
       <div  class="yo yo1">
       <?php if($_SESSION['lang']=='en'){echo" POST NEW CLASSIFIED";}
                  elseif ($_SESSION['lang']=='ar') {echo "اعلانات جديدة";} ?>
       
    </div>
      </div>
      <a href="./index.php?route=catalog/product&token=<?php echo $tkn; ?>">
      <div class='col-lg-3 col-md-3 col-sm-6 adpost' >
       <div class="yo1">
       <?php if($_SESSION['lang']=='en'){echo" Edit Ads";}
                  elseif ($_SESSION['lang']=='ar') {echo "إعلانات تحرير";} ?>
       
    </div>
      </div></a>
     <div class='col-lg-3 col-md-3 col-sm-6 adpost' >
       <a href="./index.php?route=catalog/product&token=<?php echo $tkn; ?>">
       <div  class="yo1">

       <?php 
            //Include database connection details
ob_start();
@ session_start();
$DB_HOST    ="localhost";
$DB_USER        ='nishant';
$DB_PASSWORD    ='123_az';
$DB_DATABASE    ='az';   
$conn = mysql_connect($DB_HOST,$DB_USER,$DB_PASSWORD) or mysql_error();

mysql_select_db($DB_DATABASE, $conn) or die("Something Went wrong!! contact the developer or site owner.");
    //End connection with db
$usernameee=$_SESSION['SESS_USER_NAME_AZ'];
$qry="SELECT product_id FROM az_product WHERE mpn='$usernameee'";
$resultttt = mysql_query($qry);
$no=mysql_num_rows($resultttt);


?>
  <?php if($_SESSION['lang']=='en'){echo" You have ";
  echo $no;
  echo " ads running.";

}elseif ($_SESSION['lang']=='ar') {
    echo"(لديك ";echo $no;echo " الإعلانات التوالي )";
}
?>
 
</div>

      </div>
  </a>
    </div>

<div class="youradheader">
      <div style="margin-left:10%">
        <?php if($_SESSION['lang']=='en'){echo" Your Ads:";}
                  elseif ($_SESSION['lang']=='ar') {echo " إعلاناتك ";} ?>
       
    </div>
     
      <div class="adhits">
        <?php if($_SESSION['lang']=='en'){echo"  Hits: ";}
                  elseif ($_SESSION['lang']=='ar') {echo " الزيارات ";} ?>
       
    </div>

</div>
<div class="loweradshow">
    <?php
    if (!$no==0)
{

    $query="SELECT * FROM az_product WHERE mpn='$usernameee'";
    $result=mysql_query($query);
    $slno=1;
while($row3 = mysql_fetch_array($result))
{   
    $temp=$row3['product_id'];
    $qury="SELECT * FROM az_product_description WHERE product_id='$temp'";
    $pro= mysql_query($qury);
    while($row2 = mysql_fetch_array($pro))
    { ?>
<div class='row roow'>
    <div class="roow1">
         <?php echo $slno;echo ". "; echo $row2['name'];?>
    </div>
      
      <div class='col-lg-3 col-md-3 col-sm-6 adpostednow' >

       <div  class="gola"><?php echo $row3['viewed']?></div>
      </div>
</div> 
<?php $slno++;}}}
else{
    if($_SESSION['lang']=='en'){echo"No ads posted right now.";}
                  elseif ($_SESSION['lang']=='ar') {echo "أي إعلانات نشرها.";}
}
?>


</div>
<br>
<?php echo $footer; ?>


</div>
<div class="pop-up">
  <div class="box small-6 large-centered">
    <p class="close-button">&#10006;</p>
       
    <h3>
<?php if($_SESSION['lang']=='en'){echo "  Select A category for you advertisment";} 
                  elseif ($_SESSION['lang']=='ar') {echo " <b>السعر</b>اختر الفئة بالنسبة لك إعلان";}
                  ?>
      </h3>
    
        <div class="ad-posting-wrapper">
            <div  class="ad-posting-img-wrapper">
                <a href="./index.php?route=catalog/product/add&token=<?php echo $tkon;?>&sell=1">
                    <?php if($_SESSION['lang']=='en'){?>
                        <img src="./view/image/buyproperty.png"  class="ad-posting-img" >
                  <?php  } 
                  elseif ($_SESSION['lang']=='ar') {?>
                   <img src="./view/image/arsellproperty.png"  class="ad-posting-img" >
                    <?php }?>
                   </a>
            </div>
            <div  class="ad-posting-img-wrapper">
                 <a href="./index.php?route=catalog/product/add&token=<?php echo $tkon;?>&motor=2">
                <?php if($_SESSION['lang']=='en'){?>
                          <img src="./view/image/bike.png" class="ad-posting-img" >
                    <?php } elseif ($_SESSION['lang']=='ar') {?>
                    <img src="./view/image/arbike.png"  class="ad-posting-img" >
                    <?php } ?>

                
                </a>
            </div>
            <div  class="ad-posting-img-wrapper">
               <a href="./index.php?route=catalog/product/add&token=<?php echo $tkon;?>&rent=3">
                 <?php if($_SESSION['lang']=='en'){?>
                <img src="./view/image/rent.png" class="ad-posting-img" >
                <?php } elseif ($_SESSION['lang']=='ar') {?>
                <img src="./view/image/arrent.png" class="ad-posting-img" >
                  <?php } ?>
                </a>
            </div>
        </div>

        <div class="ad-posting-wrapper">
            <div  class="ad-posting-img-wrapper">
               <a href="./index.php?route=catalog/product/add&token=<?php echo $tkon;?>&job=4">
                <?php if($_SESSION['lang']=='en'){?>
                <img src="./view/image/job.png"  class="ad-posting-img">
                <?php } elseif ($_SESSION['lang']=='ar') {?>
                 <img src="./view/image/arjob.png"  class="ad-posting-img">
                 <?php } ?>
            </a>
               
            </div>
            <div  class="ad-posting-img-wrapper">
               <a href="./index.php?route=catalog/product/add&token=<?php echo $tkon;?>&jobposter=5">
                 <?php if($_SESSION['lang']=='en'){?>
                <img src="./view/image/classified.png" class="ad-posting-img" >
                <?php } elseif ($_SESSION['lang']=='ar') {?>
                <img src="./view/image/arclassified.png" class="ad-posting-img" >
                <?php } ?>
                </a>
            </div>
            <div  class="ad-posting-img-wrapper">
               <a href="./index.php?route=catalog/product/add&token=<?php echo $tkon;?>&classified=6">
                <?php if($_SESSION['lang']=='en'){?>
                <img src="./view/image/search.png" class="ad-posting-img" >
                <?php } elseif ($_SESSION['lang']=='ar') {?>
                <img src="./view/image/arsearch.png" class="ad-posting-img" >
                <?php } ?>
            </a>
            </div>
        </div>

    </div>
</div>




<?php }  //Ad poster Else part end here  
 ?>
</div>
