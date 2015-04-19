 <?php if(isset($_GET['lang']))
 {
  if ($_GET['lang']=='en') {
         $_SESSION['lang']='en';
  }
  elseif ($_GET['lang']=='ar') {
    $_SESSION['lang']='ar';
  }
 }
 ?>
 <?php if(!isset($_SESSION['lang']))
{
  $_SESSION['lang']='en';
}?>
<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
<meta charset="UTF-8" />
<title>Advertiser Login</title>
<base href="http://localhost/az/admin/" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
<script type="text/javascript" src="view/javascript/jquery/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="view/javascript/bootstrap/js/bootstrap.min.js"></script>
<link href="view/javascript/bootstrap/less/bootstrap.less" rel="stylesheet/less" />
<script src="view/javascript/bootstrap/less-1.7.4.min.js"></script>
<link href="view/javascript/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
<link href="view/javascript/summernote/summernote.css" rel="stylesheet" />
<script type="text/javascript" src="view/javascript/summernote/summernote.js"></script>
<script src="view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>
<script src="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<link href="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen" />
<link type="text/css" href="view/stylesheet/stylesheet.css" rel="stylesheet" media="screen" />
<script src="view/javascript/common.js" type="text/javascript"></script>
  <script>
$(function() {
  $('.pop-up').hide();
 $('#overlay').removeClass('blur-in');
  //$('#overlay').addClass('blur-out');
      $('.yo').click(function(s){
          $('.pop-up').fadeIn(1000);
          $('#overlay').removeClass('blur-out');
         $('#overlay').addClass('blur-in');
         //$('#overlay').addClass('blur-out');
          s.stopPropagation();
  });
      $('.close-button').click(function (e) { 
        document.getElementsByName ("selectorwrapper")[0].style.display='block';
         document.getElementsByName ("comp_registration")[0].style.display='none';
           document.getElementsByName ("indv_registration")[0].style.display='none';
      $('.pop-up').fadeOut(700);
      $('#overlay').removeClass('blur-in');
      $('#overlay').addClass('blur-out');
      e.stopPropagation();
        
    });
 });



 function getstates() {
    var e = document.getElementById("contry");
    var f = e.options[e.selectedIndex].value;
    if(f=="AE"){
      //document.write("It UAE STATES.");
      document.getElementsByName ("slist")[0].style.display='block';
      document.getElementsByName ("slist1")[0].style.display='none';
    }
    else{
    document.getElementsByName ("slist1")[0].style.display='block';
     document.getElementsByName ("slist")[0].style.display='none';
    }

  }
</script>

<script type="text/javascript">
// invidual vs company selector
function compSelector(){
  //$('.pop-up').hide();
  // $('#swrr').removeClass('blur-in');
$('#swrr').addClass('blur-out');
  document.getElementsByName ("selectorwrapper")[0].style.display='none';
  document.getElementsByName ("comp_registration")[0].style.display='block';
  // document.getElementsByName ("indv_registration")[0].style.display='none';
 $('#comp_registration').removeClass('blur-in');
$('#comp_registration').addClass('blur-out');

  }

  function selector(){
  //$('.pop-up').hide();
  // $('#swrr').removeClass('blur-in');
$('#swrr').addClass('blur-out');
  document.getElementsByName ("selectorwrapper")[0].style.display='none';
  document.getElementsByName ("indv_registration")[0].style.display='block';
 $('#ind_registration').removeClass('blur-in');
$('#ind_registration').addClass('blur-out');

  }
      

</script>
<script type="text/javascript">
                              function validateForm() {
                              var a = document.forms["myForm"]["fname"].value;
                               var b = document.forms["myForm"]["companyname"].value;
                                var c = document.forms["myForm"]["email"].value;
                                var d = document.forms["myForm"]["contactname"].value;
                                var e = document.forms["myForm"]["mobile"].value;
                                 var f = document.forms["myForm"]["desc"].value;
                                var j = document.forms["myForm"]["address"].value;
                               var n = document.forms["myForm"]["password"].value;
                                
                                 if (a == null || a == "") {
                                  alert("Company name must be filled out");
                                  return false;
                                  }
                                  if (b == null || b == "") {
                                  alert("Registration Number must be filled out");
                                  return false;
                                  }
                                  if (c == null || c == "") {
                                  alert("Email must be filled out");
                                  return false;
                                  }
                                  if (d == null || d == "") {
                                  alert("There must be a Contact Person");
                                  return false;
                                  }
                                  if (e == null || e == "") {
                                  alert("Mobile Number must be filled out");
                                  return false;
                                  }
                                  if (f == null || f == "") {
                                  alert("Description must be filled out");
                                  return false;
                                  }
                                 
                                  if (j == null ||  j== "") {
                                  alert("Office address must be filled out");
                                  return false;
                                  }
                                  
                                  if (n == null || n == "") {
                                  alert("Password must be filled out");
                                  return false;
                                  }
                                  
                                  }

                                    function validateForm1() {
                                  var a = document.forms["myForm1"]["fname"].value;
                                var b = document.forms["myForm1"]["lname"].value;
                                var c = document.forms["myForm1"]["email"].value;
                                var d = document.forms["myForm1"]["mname"].value;
                               var i = document.forms["myForm1"]["mobile"].value;
                                //var j = document.forms["myForm"]["address"].value;
                               var l = document.forms["myForm1"]["slist"].value;
                                var m = document.forms["myForm1"]["country"].value;
                                var n = document.forms["myForm1"]["password"].value;
                                var o = document.forms["myForm1"]["repassword"].value;
                                 
                                 if (a == null || a == "") {
                                  alert("First name must be filled out");
                                  return false;
                                  }
                                  if (b == null || b == "") {
                                  alert("Last name must be filled out");
                                  return false;
                                  }
                                  if (c == null || c == "") {
                                  alert("Email must be filled out");
                                  return false;
                                  }
                                  if (d == null || d == "") {
                                  alert("Middle Name must be filled out");
                                  return false;
                                  }
                                 
                                  if (i == null || i == "") {
                                  alert("Mobile number must be filled out");
                                  return false;
                                  }
                                 
                                 
                                  if (l == null || l == "") {
                                  alert("state must be filled out");
                                  return false;
                                  }
                                  if (m == null || m == "") {
                                  alert("country must be filled out");
                                  return false;
                                  }
                                  if (n == null || n == "") {
                                  alert("Password must be filled out");
                                  return false;
                                  }
                                  if (o == null || o == "") {
                                  alert(" Repeat Password must be filled out");
                                  return false;
                                  }

                                  if (!n == o) {
                                  alert("Passwords do not match");
                                  return false;
                                  }
                             }
                            
                              </script>
</head>
<body>






  
<div id="container">
<header id="header" class="navbar navbar-static-top">
  <div class="navbar-header">
        <a href="../index.php?route=common/home" class="navbar-brand"><img src="view/image/logo.png" alt="Adverzone" title="Adverzone" class="logores"/></a></div>
  </header>
  <style>
  body {
    background-color: #FCFCFC;
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
    margin-top: 50px;
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
    width:900px;
    display: block;
    height: 200px;
}
.ad-posting-img-wrapper{
    width:250px;
    height:150px;
    float:left;
   background-color: tomato;
    margin-left: 30px;
    margin-bottom: 30px;
}
.input-div{
    float:left;
    display:block;
    height:30px;
    margin:10px;
    margin-left:200px;
}
 .nameinput  {
    float:left;
    width:150px;
}
.input-field{
     margin-left:100px;
     width:200px;
     display: block;
}

.logores{width:257px;position:absolute;margin-left:100px;}
.log{background:#565656;height:40px;padding:10px;color:#fbfbfb;border-color: #CCC;padding: 10px 16px;font-size: 18px;
             line-height: 1.33;border-radius: 6px;}
.yo{cursor:pointer;background:#565656;height:50px;padding:10px;color:#fbfbfb;border-color: #CCC;padding: 10px 16px;font-size: 18px;line-height: 1.33;border-radius: 6px;display:block;}
.imgind{height:200px;width:250px;margin-left:0px;margin-top:150px;cursor:pointer}
.imgind1{height:200px;width:200px;margin-left:40px;margin-top:150px;cursor:pointer}
.selector{background:tomato;margin-top:0px;height:500px;display:block}
@media (max-width: 700px) {
  .logores{width:80px;margin-left:0px;margin-right:10px}
  .yo{cursor:pointer;background:#565656;height:50px;padding:10px;color:#fbfbfb;border-color: #ccc;font-size: 9px;border-radius: 6px;display:block;}
  .log{height:40px;padding: 5px 8px;font-size: 11px;line-height: 1.00;}
  .pop-up{width:90%;margin-left: 5px;margin-top: 20px}
  .ad-posting-wrapper {width:100%; }
  .imgind{height:50px;width:50px;margin-left:0px;margin-top:50px;cursor:pointer}
  .imgind1{height:60px;width:50px;margin-left:10px;margin-top:50px;cursor:pointer}
  .selector{background:tomato;margin-top:0px;height:200px;display:block}
  h2{  font-size: 12px;}
  .input-div{width:100px;float: left; display:block;height:30px;margin:0px;margin-left:0px;}
  .input-field {margin-left:0px;width:75px;}
  .nameinput {width:100px;float: left}
}

  </style>





         <div class="pop-up" style="display:none;">
  <div class="box small-6 large-centered">
    <p class="close-button" style="z-index:10000">&#10006;</p>

     
   
    
        <div class="ad-posting-wrapper" style="z-index:999;height: 500px;">
          <!-- Selector -->
            <div class="ad-posting-wrapper selector" name ="selectorwrapper" id="swrr" >

             <?php
                if($_SESSION['lang']=='en'){?>
                 
             <img src="./view/image/individual.png" name="indv" class="imgind" Onclick="selector();" > 
             <img src="./view/image/industry.png" name="comp"class="imgind1" Onclick="compSelector();">
               <?php } elseif ($_SESSION['lang']=='ar') { ?>
                <img src="./view/image/arindividual.png" name="indv" class="imgind" Onclick="selector();" > 
             <img src="./view/image/arindustry.png" name="comp" class="imgind1" Onclick="compSelector();">
             
                 <?php  } ?>
            </div>
            <!-- End selector -->

            <!-- Start company registratio -->

            <div style="display:none" name="comp_registration" id="comp_registration" >
              <br>
              <h2>
                <?php
                if($_SESSION['lang']=='en'){echo "Enter Company Details"; }
                  elseif ($_SESSION['lang']=='ar') {echo "أدخل معلومات الشركة";} 
                  ?>
              </h2>
              <form action="register_company.php" method="post" onsubmit="return validateForm()" name="myForm" >
              <div class="input-div">
                      <div class="nameinput">
                        <?php
                if($_SESSION['lang']=='en'){echo " Company Name (Username for login)"; }
                  elseif ($_SESSION['lang']=='ar') {echo "اسم الشركة (اسم المستخدم لتسجيل الدخول)";} 
                  ?>
                       
                      </div><input type"text" name="fname" class="input-field">
               </div>
               <div class="input-div">
                      <div class="nameinput"> <?php
                if($_SESSION['lang']=='en'){echo "Password"; }
                  elseif ($_SESSION['lang']=='ar') {echo "كلمة المرور";} 
                  ?></div><input type="password" name="password" class="input-field">
               </div>
              <div class="input-div">
                      <div class="nameinput">
                         <?php
                if($_SESSION['lang']=='en'){echo "Registration Number(CIN):"; }
                  elseif ($_SESSION['lang']=='ar') {echo "رقم التسجيل";} 
                  ?>
                         </div><input type"text" name="companyname" class="input-field">
               </div>
                <div class="input-div">
                      <div class="nameinput">
                           <?php
                if($_SESSION['lang']=='en'){echo " Contact Person:"; }
                  elseif ($_SESSION['lang']=='ar') {echo "الشخص الذي يمكن الاتصال به";} 
                  ?>
                        </div><input type"text" name="contactname" class="input-field">
               </div>
                 <div class="input-div">
                      <div class="nameinput">
                         <?php
                if($_SESSION['lang']=='en'){echo " Contact Number:"; }
                  elseif ($_SESSION['lang']=='ar') {echo "رقم الاتصال";} 
                  ?>
                  </div><input type"text" name="mobile" class="input-field">
               </div>
               <div class="input-div">
                      <div class="nameinput">
                         <?php
                if($_SESSION['lang']=='en'){echo " Email Address: "; }
                  elseif ($_SESSION['lang']=='ar') {echo "عنوان البريد الإلكتروني";} 
                  ?>
                      </div><input type"email" name="email" class="input-field">
               </div>
               <div class="input-div">
                      <div class="nameinput">
                        <?php
                if($_SESSION['lang']=='en'){echo "  Registered Office: "; }
                  elseif ($_SESSION['lang']=='ar') {echo "مكتب مسجل";} 
                  ?>
                        </div><input type"text" name="address" class="input-field">
               </div>
               <div class="input-div">
                      <div class="nameinput">
                        <?php
                if($_SESSION['lang']=='en'){echo " Company Description:"; }
                  elseif ($_SESSION['lang']=='ar') {echo "نبذه عن الشركة";} 
                  ?>
                  </div><textarea name="desc" class="input-field"></textarea>
               </div>
               <div style="float:left;display:block;height:30px;margin:10px;margin-left:100px;">
                     <button type="submit"  class="btn btn-primary" style="float:right"><i class="fa fa-key"></i> <?php 
                     if($_SESSION['lang']=='en'){echo "Register Now"; }
                  elseif ($_SESSION['lang']=='ar') {echo "سجل الآن";} 
                     
                      ?></button>
              </div>
            </form> 
             </div>
            <!-- end company registration -->

          <!-- people register here -->
           <div style="display:none" name="indv_registration" id="ind_registration">
            <br>
              <h2>
                <?php
                if($_SESSION['lang']=='en'){echo "  Enter Your details"; }
                  elseif ($_SESSION['lang']=='ar') {echo "إدخال التفاصيل الخاصة بك";} 
                  ?>
                 </h2>
               <form action="register.php" method="post" name="myForm1" onsubmit="return validateForm1()" >
                <div class="input-div">
                      <div class="nameinput">
                      <?php
                if($_SESSION['lang']=='en'){echo " FirstName:"; }
                  elseif ($_SESSION['lang']=='ar') {echo " الاسم الأول";} 
                  ?>
                   </div><input type"text" name="fname" class="input-field">
               </div>
               <div class="input-div">
                        <div style="float:left;width:150px;">
                           <?php
                if($_SESSION['lang']=='en'){echo " Middle Name:"; }
                  elseif ($_SESSION['lang']=='ar') {echo " الاسم الأوسط";} 
                  ?>
                 </div><input type"text" name="mname" class="input-field">
                   </div>
                   <div class="input-div">
                        <div style="float:left;width:150px;"> <?php
                if($_SESSION['lang']=='en'){echo " Last Name:"; }
                  elseif ($_SESSION['lang']=='ar') {echo "اسم العائلة";} 
                  ?>
                 </div><input type"text" name="lname" class="input-field">
                   </div>
                   <div class="input-div">
                          <div style="float:left;width:150px;"> <?php
                if($_SESSION['lang']=='en'){echo " Mobile:"; }
                  elseif ($_SESSION['lang']=='ar') {echo "متحرك";} 
                  ?>
                 </div><input type"text" name="mobile" class="input-field">
                   </div>
              <div class="input-div">
                        <div style="float:left;width:150px;"> <?php
                if($_SESSION['lang']=='en'){echo " Email :"; }
                  elseif ($_SESSION['lang']=='ar') {echo "البريد الإلكتروني";} 
                  ?>
                   </div> <input type"email" name="email" class="input-field">
                  </div>
               <div class="input-div">
                        <div style="float:left;width:150px;"><?php
                if($_SESSION['lang']=='en'){echo " Password:"; }
                  elseif ($_SESSION['lang']=='ar') {echo "كلمة السر:";} 
                  ?>
                  </div><input name="password" class="input-field" type="password">
              </div>
               <div class="input-div">
                        <div style="float:left;width:150px;">
                          <?php
                if($_SESSION['lang']=='en'){echo " Repeat Password:"; }
                  elseif ($_SESSION['lang']=='ar') {echo "كرر كلمة السر:";} 
                  ?>
                          </div><input type"password" name="repassword" class="input-field">
              </div>
              <div class="input-div">
                        <div style="float:left;width:150px;">
                           <?php
                if($_SESSION['lang']=='en'){echo " Country:"; }
                  elseif ($_SESSION['lang']=='ar') {echo "بلد:";} 
                  ?>
                  </div>
                        <select class="input-field" id="contry" Onchange="getstates();" name="country">
                          <option value="AE">United Arab Emirates</option>
                       <option value="AF">Afghanistan</option>
  <option value="AX">Åland Islands</option>
  <option value="AL">Albania</option>
  <option value="DZ">Algeria</option>
  <option value="AS">American Samoa</option>
  <option value="AD">Andorra</option>
  <option value="AO">Angola</option>
  <option value="AI">Anguilla</option>
  <option value="AQ">Antarctica</option>
  <option value="AG">Antigua and Barbuda</option>
  <option value="AR">Argentina</option>
  <option value="AM">Armenia</option>
  <option value="AW">Aruba</option>
  <option value="AU">Australia</option>
  <option value="AT">Austria</option>
  <option value="AZ">Azerbaijan</option>
  <option value="BS">Bahamas</option>
  <option value="BH">Bahrain</option>
  <option value="BD">Bangladesh</option>
  <option value="BB">Barbados</option>
  <option value="BY">Belarus</option>
  <option value="BE">Belgium</option>
  <option value="BZ">Belize</option>
  <option value="BJ">Benin</option>
  <option value="BM">Bermuda</option>
  <option value="BT">Bhutan</option>
  <option value="BO">Bolivia, Plurinational State of</option>
  <option value="BQ">Bonaire, Sint Eustatius and Saba</option>
  <option value="BA">Bosnia and Herzegovina</option>
  <option value="BW">Botswana</option>
  <option value="BV">Bouvet Island</option>
  <option value="BR">Brazil</option>
  <option value="IO">British Indian Ocean Territory</option>
  <option value="BN">Brunei Darussalam</option>
  <option value="BG">Bulgaria</option>
  <option value="BF">Burkina Faso</option>
  <option value="BI">Burundi</option>
  <option value="KH">Cambodia</option>
  <option value="CM">Cameroon</option>
  <option value="CA">Canada</option>
  <option value="CV">Cape Verde</option>
  <option value="KY">Cayman Islands</option>
  <option value="CF">Central African Republic</option>
  <option value="TD">Chad</option>
  <option value="CL">Chile</option>
  <option value="CN">China</option>
  <option value="CX">Christmas Island</option>
  <option value="CC">Cocos (Keeling) Islands</option>
  <option value="CO">Colombia</option>
  <option value="KM">Comoros</option>
  <option value="CG">Congo</option>
  <option value="CD">Congo, the Democratic Republic of the</option>
  <option value="CK">Cook Islands</option>
  <option value="CR">Costa Rica</option>
  <option value="CI">Côte d'Ivoire</option>
  <option value="HR">Croatia</option>
  <option value="CU">Cuba</option>
  <option value="CW">Curaçao</option>
  <option value="CY">Cyprus</option>
  <option value="CZ">Czech Republic</option>
  <option value="DK">Denmark</option>
  <option value="DJ">Djibouti</option>
  <option value="DM">Dominica</option>
  <option value="DO">Dominican Republic</option>
  <option value="EC">Ecuador</option>
  <option value="EG">Egypt</option>
  <option value="SV">El Salvador</option>
  <option value="GQ">Equatorial Guinea</option>
  <option value="ER">Eritrea</option>
  <option value="EE">Estonia</option>
  <option value="ET">Ethiopia</option>
  <option value="FK">Falkland Islands (Malvinas)</option>
  <option value="FO">Faroe Islands</option>
  <option value="FJ">Fiji</option>
  <option value="FI">Finland</option>
  <option value="FR">France</option>
  <option value="GF">French Guiana</option>
  <option value="PF">French Polynesia</option>
  <option value="TF">French Southern Territories</option>
  <option value="GA">Gabon</option>
  <option value="GM">Gambia</option>
  <option value="GE">Georgia</option>
  <option value="DE">Germany</option>
  <option value="GH">Ghana</option>
  <option value="GI">Gibraltar</option>
  <option value="GR">Greece</option>
  <option value="GL">Greenland</option>
  <option value="GD">Grenada</option>
  <option value="GP">Guadeloupe</option>
  <option value="GU">Guam</option>
  <option value="GT">Guatemala</option>
  <option value="GG">Guernsey</option>
  <option value="GN">Guinea</option>
  <option value="GW">Guinea-Bissau</option>
  <option value="GY">Guyana</option>
  <option value="HT">Haiti</option>
  <option value="HM">Heard Island and McDonald Islands</option>
  <option value="VA">Holy See (Vatican City State)</option>
  <option value="HN">Honduras</option>
  <option value="HK">Hong Kong</option>
  <option value="HU">Hungary</option>
  <option value="IS">Iceland</option>
  <option value="IN">India</option>
  <option value="ID">Indonesia</option>
  <option value="IR">Iran, Islamic Republic of</option>
  <option value="IQ">Iraq</option>
  <option value="IE">Ireland</option>
  <option value="IM">Isle of Man</option>
  <option value="IL">Israel</option>
  <option value="IT">Italy</option>
  <option value="JM">Jamaica</option>
  <option value="JP">Japan</option>
  <option value="JE">Jersey</option>
  <option value="JO">Jordan</option>
  <option value="KZ">Kazakhstan</option>
  <option value="KE">Kenya</option>
  <option value="KI">Kiribati</option>
  <option value="KP">Korea, Democratic People's Republic of</option>
  <option value="KR">Korea, Republic of</option>
  <option value="KW">Kuwait</option>
  <option value="KG">Kyrgyzstan</option>
  <option value="LA">Lao People's Democratic Republic</option>
  <option value="LV">Latvia</option>
  <option value="LB">Lebanon</option>
  <option value="LS">Lesotho</option>
  <option value="LR">Liberia</option>
  <option value="LY">Libya</option>
  <option value="LI">Liechtenstein</option>
  <option value="LT">Lithuania</option>
  <option value="LU">Luxembourg</option>
  <option value="MO">Macao</option>
  <option value="MK">Macedonia, the former Yugoslav Republic of</option>
  <option value="MG">Madagascar</option>
  <option value="MW">Malawi</option>
  <option value="MY">Malaysia</option>
  <option value="MV">Maldives</option>
  <option value="ML">Mali</option>
  <option value="MT">Malta</option>
  <option value="MH">Marshall Islands</option>
  <option value="MQ">Martinique</option>
  <option value="MR">Mauritania</option>
  <option value="MU">Mauritius</option>
  <option value="YT">Mayotte</option>
  <option value="MX">Mexico</option>
  <option value="FM">Micronesia, Federated States of</option>
  <option value="MD">Moldova, Republic of</option>
  <option value="MC">Monaco</option>
  <option value="MN">Mongolia</option>
  <option value="ME">Montenegro</option>
  <option value="MS">Montserrat</option>
  <option value="MA">Morocco</option>
  <option value="MZ">Mozambique</option>
  <option value="MM">Myanmar</option>
  <option value="NA">Namibia</option>
  <option value="NR">Nauru</option>
  <option value="NP">Nepal</option>
  <option value="NL">Netherlands</option>
  <option value="NC">New Caledonia</option>
  <option value="NZ">New Zealand</option>
  <option value="NI">Nicaragua</option>
  <option value="NE">Niger</option>
  <option value="NG">Nigeria</option>
  <option value="NU">Niue</option>
  <option value="NF">Norfolk Island</option>
  <option value="MP">Northern Mariana Islands</option>
  <option value="NO">Norway</option>
  <option value="OM">Oman</option>
  <option value="PK">Pakistan</option>
  <option value="PW">Palau</option>
  <option value="PS">Palestinian Territory, Occupied</option>
  <option value="PA">Panama</option>
  <option value="PG">Papua New Guinea</option>
  <option value="PY">Paraguay</option>
  <option value="PE">Peru</option>
  <option value="PH">Philippines</option>
  <option value="PN">Pitcairn</option>
  <option value="PL">Poland</option>
  <option value="PT">Portugal</option>
  <option value="PR">Puerto Rico</option>
  <option value="QA">Qatar</option>
  <option value="RE">Réunion</option>
  <option value="RO">Romania</option>
  <option value="RU">Russian Federation</option>
  <option value="RW">Rwanda</option>
  <option value="BL">Saint Barthélemy</option>
  <option value="SH">Saint Helena, Ascension and Tristan da Cunha</option>
  <option value="KN">Saint Kitts and Nevis</option>
  <option value="LC">Saint Lucia</option>
  <option value="MF">Saint Martin (French part)</option>
  <option value="PM">Saint Pierre and Miquelon</option>
  <option value="VC">Saint Vincent and the Grenadines</option>
  <option value="WS">Samoa</option>
  <option value="SM">San Marino</option>
  <option value="ST">Sao Tome and Principe</option>
  <option value="SA">Saudi Arabia</option>
  <option value="SN">Senegal</option>
  <option value="RS">Serbia</option>
  <option value="SC">Seychelles</option>
  <option value="SL">Sierra Leone</option>
  <option value="SG">Singapore</option>
  <option value="SX">Sint Maarten (Dutch part)</option>
  <option value="SK">Slovakia</option>
  <option value="SI">Slovenia</option>
  <option value="SB">Solomon Islands</option>
  <option value="SO">Somalia</option>
  <option value="ZA">South Africa</option>
  <option value="GS">South Georgia and the South Sandwich Islands</option>
  <option value="SS">South Sudan</option>
  <option value="ES">Spain</option>
  <option value="LK">Sri Lanka</option>
  <option value="SD">Sudan</option>
  <option value="SR">Suriname</option>
  <option value="SJ">Svalbard and Jan Mayen</option>
  <option value="SZ">Swaziland</option>
  <option value="SE">Sweden</option>
  <option value="CH">Switzerland</option>
  <option value="SY">Syrian Arab Republic</option>
  <option value="TW">Taiwan, Province of China</option>
  <option value="TJ">Tajikistan</option>
  <option value="TZ">Tanzania, United Republic of</option>
  <option value="TH">Thailand</option>
  <option value="TL">Timor-Leste</option>
  <option value="TG">Togo</option>
  <option value="TK">Tokelau</option>
  <option value="TO">Tonga</option>
  <option value="TT">Trinidad and Tobago</option>
  <option value="TN">Tunisia</option>
  <option value="TR">Turkey</option>
  <option value="TM">Turkmenistan</option>
  <option value="TC">Turks and Caicos Islands</option>
  <option value="TV">Tuvalu</option>
  <option value="UG">Uganda</option>
  <option value="UA">Ukraine</option>
  
  <option value="GB">United Kingdom</option>
  <option value="US">United States</option>
  <option value="UM">United States Minor Outlying Islands</option>
  <option value="UY">Uruguay</option>
  <option value="UZ">Uzbekistan</option>
  <option value="VU">Vanuatu</option>
  <option value="VE">Venezuela, Bolivarian Republic of</option>
  <option value="VN">Viet Nam</option>
  <option value="VG">Virgin Islands, British</option>
  <option value="VI">Virgin Islands, U.S.</option>
  <option value="WF">Wallis and Futuna</option>
  <option value="EH">Western Sahara</option>
  <option value="YE">Yemen</option>
  <option value="ZM">Zambia</option>
  <option value="ZW">Zimbabwe</option>
                      </select>
              </div>
               <div class="input-div">
                        <div style="float:left;width:150px;">
                          <?php
                if($_SESSION['lang']=='en'){echo " State:"; }
                  elseif ($_SESSION['lang']=='ar') {echo "دولة";} 
                  ?>
                </div>
                        <select name="slist" id="states" style="display:block;" >
                         
<script language="javascript">
var states = new Array("Abu Dhabi", "'Ajman", "Al Fujayrah", "Sharjah", "Dubai", "Ra's al Khaymah", "Umm al Qaywayn");
for(var hi=0; hi<states.length; hi++)
document.write("<option  class=\"input-field\" value=\""+states[hi]+"\">"+states[hi]+"</option>");
</script>
</select>
<input type="text" class="input-field" name="slist1" style="display:none">



              </div>
            <div style="float:left;display:block;height:30px;margin:10px;margin-left:100px;">
                     <button type="submit"  class="btn btn-primary" style="float:right"><i class="fa fa-key"></i> <?php 
                     if($_SESSION['lang']=='en'){echo "Register Now"; }
                  elseif ($_SESSION['lang']=='ar') {echo "سجل الآن";} 
                     
                      ?></button>
              </div>
            </form> 

 </div> 
  <!-- end individual registration -->


              
        </div>

 


    </div>
  </div>
<!-- Register End here -->
<div id="overlay" class="cover blur-in"> <!-- blur class -->
<div id="content">
  <div class="container-fluid"><br />
    <br />
    <div class="row">
      <div class="col-sm-offset-4 col-sm-4">
        <?php
        if(isset($_GET['newregistered']))
        {?>
          <div style="background:green;padding:2px;color:#fbfbfb;width:100%;font-size:14px;border-radius:5px;display:block">
             <?php if($_SESSION['lang']=='en'){ echo "<center>Sucess !! <br>Your Email is registered. Now Login below to continue</center>";}
                  elseif ($_SESSION['lang']=='ar') {echo "<center>نجاح وظائف !! <br>يتم تسجيل البريد الإلكتروني الخاص بك. الآن تسجيل الدخول أدناه للمتابعة</center>";} ?>
          
        </div>
       <?php } 
       elseif(isset($_GET['alreadyregistered']))
       { ?>
         <div style="background:red;padding:2px;color:#fbfbfb;width:100%;font-size:14px;border-radius:5px;display:block">
           <?php if($_SESSION['lang']=='en'){ ?><center>Sorry !! <br>Your Email is already registered. <a href="./index.php?route=common/forgotten">click here</a> to reset your password.
           </center><?php }
                  elseif ($_SESSION['lang']=='ar') {?><center>آسف !! <br>مسجل مسبقا البريد الإلكتروني الخاص بك. <a href="./index.php?route=common/forgotten">انقر هنا</a> لإعادة تعيين كلمة المرور الخاصة بك.</center><?php } ?>
        </div>
      <?php }
      else{
        ?>

                   <div class="yo">
           <?php  if($_SESSION['lang']=='en'){echo"Click here to create an account in seconds";}
                  elseif ($_SESSION['lang']=='ar') {echo " اضغط هنا لإنشاء حساب في ثوان";} ?></div>
                 
       
         <?php } ?>
        


         <br>
        <div class="panel panel-default">

          <div class="panel-heading">

            <h1 class="panel-title log"><i class="fa fa-lock"></i>  <?php 
            if($_SESSION['lang']=='en'){echo "Login Below";}
                  elseif ($_SESSION['lang']=='ar') {echo "يرجى إدخال تفاصيل تسجيل الدخول الخاصة بك.";}
            ?></h1>
          </div>
          <div class="panel-body">
               
            <?php if (isset($_GET['wrong'])) { ?>
            <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo "Wrong Email or password !!" ?>
              <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
            <?php } ?>
                 <form action="./index.php?route=common/login" method="post" enctype="multipart/form-data">
              <div class="form-group">
                <label for="input-username"><?php 
                if($_SESSION['lang']=='en'){echo "Email Address";}
                  elseif ($_SESSION['lang']=='ar') {echo "عنوان البريد الإلكتروني";}
                ?></label>
                <div class="input-group"><span class="input-group-addon"><i class="fa fa-user"></i></span>
                  <input type="text" name="username" value="" placeholder="Username" id="input-username" class="form-control" />
                </div>
              </div>
              <div class="form-group">
                <label for="input-password"><?php 
                if($_SESSION['lang']=='en'){ echo "Password";}
                  elseif ($_SESSION['lang']=='ar') {echo "كلمة المرور";}
                ?></label>
                <div class="input-group"><span class="input-group-addon"><i class="fa fa-lock"></i></span>
                  <input type="password" name="password" value="" placeholder="Password" id="input-password" class="form-control"  />
                </div>
                                <span class="help-block"><a href="./index.php?route=common/forgotten"><?php
                if($_SESSION['lang']=='en'){ echo "Forgot Password";}
                  elseif ($_SESSION['lang']=='ar') {echo "هل نسيت كلمة المرور";}
                 
                  ?></a></span>
                              </div>
              <div class="text-right">
                <button type="submit" class="btn btn-primary" style="background:#a7a7a7;border:1px solid #535553;color:#121313"><i class="fa fa-key"></i> Login                
                </button>
                

              

              </div>
                          </form>
          </div>
        </div>
  </div><!-- blur class end -->
      </div>
    </div>
  </div>
</div>
