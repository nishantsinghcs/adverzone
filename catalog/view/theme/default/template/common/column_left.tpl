 <?php if(!isset($_SESSION['lang']))
{
  $_SESSION['lang']='ar';
}
if(isset($_GET['path'])){
  $pathid=$_GET['path'];
ob_start();$DB_HOST  ="localhost"; $DB_USER ='nishant'; $DB_PASSWORD    ='123_az'; $DB_DATABASE    ='az'; $conn = mysql_connect($DB_HOST,$DB_USER,$DB_PASSWORD) or mysql_error(); mysql_select_db($DB_DATABASE, $conn) or die("I cannot  find the database.");$errmsg_arr = array();

if($_SESSION['lang']=='en'){$lang=1;}elseif ($_SESSION['lang']=='ar') {$lang=2;mysql_query("SET NAMES 'utf8'"); mysql_query('SET CHARACTER SET utf8');}
$query12= "SELECT * FROM az_category_description WHERE category_id IN (select category_id FROM az_category_path WHERE path_id='$pathid') AND language_id='$lang'";
$result12=mysql_query($query12);
$query122= "SELECT * FROM az_manufacturer";
$result122=mysql_query($query122);
}?>
<?php if ($modules) { ?>
<column id="column-left" class="col-sm-3 hidden-xs">
<?php if(isset($_GET['path']))
{
?>

<?php if($_GET['path']==65){

	?>
<div class="list-group">
    <p class="list-group-item active"  style="background:#2886b7;color:#fbfbfb;font-size:14px"><b>
      <?php if($_SESSION['lang']=='en'){echo "Search";}
        elseif ($_SESSION['lang']=='ar') {echo " بحث ";} ?>
</b></p> 
      <p class="list-group-item active" style="border-top:none;">
        <b><?php if($_SESSION['lang']=='en'){echo "Job Role";}
        elseif ($_SESSION['lang']=='ar') {echo " الدور الوظيفي ";} ?></b>
        <input type="text" name="search" id="jname" style="width:100%" value="" 
        placeholder="<?php if($_SESSION['lang']=='en'){echo "Any Role";}elseif ($_SESSION['lang']=='ar') {echo " كافة الأدوار ";} ?>">
       </p>

       <p class="list-group-item active" style="border-top:none;">
        <b><?php if($_SESSION['lang']=='en'){echo "Job Location";}
        elseif ($_SESSION['lang']=='ar') {echo " مكان الوظيفة ";} ?></b>
        <input type="text" name="search" id="loc" style="width:100%" value="" placeholder="<?php if($_SESSION['lang']=='en'){echo "Any Location";}
        elseif ($_SESSION['lang']=='ar') {echo " أي الموقع ";} ?>">
       </p>

        <p class="list-group-item active" style="border-top:none;">
          <b><?php if($_SESSION['lang']=='en'){echo "Ad Posted";}
        elseif ($_SESSION['lang']=='ar') {echo " الإعلانات المنشورة ";} ?></b>
      <select id="time" style="width:100%">
        <option value=""> <?php if($_SESSION['lang']=='en'){echo "Any Time";}
        elseif ($_SESSION['lang']=='ar') {echo " أي وقت ";} ?></option>
        
        <option value="<?php echo date("Y-m-d");?>"><?php if($_SESSION['lang']=='en'){echo "Today";}elseif ($_SESSION['lang']=='ar') {echo " اليوم ";} ?></option>
        <option value="<?php echo date("Y-m-d",strtotime('-3 day'));?>"><?php if($_SESSION['lang']=='en'){echo "Within 3 Days";}elseif ($_SESSION['lang']=='ar') {echo " خلال 3 أيام ";} ?></option>
        <option value="<?php echo date("Y-m-d",strtotime('-7 day'));?>"><?php if($_SESSION['lang']=='en'){echo "Within 7 Days";}elseif ($_SESSION['lang']=='ar') {echo " خلال 7 أيام ";} ?></option>
        <option value="<?php echo date("Y-m-d",strtotime('-14 day'));?>"><?php if($_SESSION['lang']=='en'){echo "Within 14 Days";}elseif ($_SESSION['lang']=='ar') {echo " خلال 14 أيام ";} ?></option>
        <option value="<?php echo date("Y-m-d",strtotime('-30 day'));?>"><?php if($_SESSION['lang']=='en'){echo "Within 30 Days";}elseif ($_SESSION['lang']=='ar') {echo " خلال 30 أيام ";} ?></option>
        </select>  
      </p>
      <p class="list-group-item active" style="border-top:none;">
      <b><?php if($_SESSION['lang']=='en'){echo "Salary (AED)";}
        elseif ($_SESSION['lang']=='ar') {echo " راتب (AED) ";} ?></b>
      <select id="price" style="width:100%">
        <option value=""> <?php if($_SESSION['lang']=='en'){echo "Any Salary";}
        elseif ($_SESSION['lang']=='ar') {echo " أي الراتب ";} ?></option>
        
        <option value="1">0-1,999</option>
        <option value="2">2,000-3,999</option>
        <option value="3">4,000-5,999</option>
        <option value="4">6,000-7,999</option>
        <option value="5">12,000-19,999</option>
        <option value="6">20,000-29,999</option>
        <option value="7">30,000-39,999</option>
        <option value="8">40,000-49,999</option>
        <option value="9">50,000-99,999</option>
        <option value="10">100,000 +</option>
        </select>  
      </p>

      <p class="list-group-item active" style="border-top:none;">
        <b><?php if($_SESSION['lang']=='en'){echo "Minimum Experience";}
        elseif ($_SESSION['lang']=='ar') {echo " الحد الأدنى من الخبرة  ";} ?> </b>
      <select id="exp" style="width:100%">
        <option value=""> <?php if($_SESSION['lang']=='en'){echo "Any Experience";}
        elseif ($_SESSION['lang']=='ar') {echo " أي تجربة  ";} ?></option>
        <option value="1">Less than 1 Years</option>
        <option value="2">1-2 Years</option>
        <option value="3"> 2-5 years</option>
        <option value="4">5-10 Years</option>
       <option value="5">10-15 Years</option>
       <option value="6">15+ Years</option>
        </select>  
      </p>

      <p class="list-group-item active" style="border-top:none;">
        <b><?php if($_SESSION['lang']=='en'){echo "Minimum Education";}
        elseif ($_SESSION['lang']=='ar') {echo " الحد الأدنى التعليم  ";} ?> </b>
      <select id="elevel" style="width:100%">
        <option value=""> <?php if($_SESSION['lang']=='en'){echo "Any Education";}
        elseif ($_SESSION['lang']=='ar') {echo " أي تجربة  ";} ?></option>
        <option value="ba"><?php if($_SESSION['lang']=='en'){echo "bachelor degree";}
        elseif ($_SESSION['lang']=='ar') {echo " درجة البكالوريوس  ";} ?></option></option>
        <option value="mas"><?php if($_SESSION['lang']=='en'){echo "Masters degree";}
        elseif ($_SESSION['lang']=='ar') {echo " درجة الماجستير  ";} ?></option>
        <option value="phd"><?php if($_SESSION['lang']=='en'){echo "PHD";}
        elseif ($_SESSION['lang']=='ar') {echo " PHD  ";} ?></option>
        </select>  
      </p>

      <p class="list-group-item active" style="border-top:none;">
        <b><?php if($_SESSION['lang']=='en'){echo "Employement Types";}
        elseif ($_SESSION['lang']=='ar') {echo " أنواع العمل ";} ?></b>
      <select id="catt" style="width:100%">
        <option> <?php if($_SESSION['lang']=='en'){echo "All Types";}
        elseif ($_SESSION['lang']=='ar') {echo " جميع أنواع ";} ?></option>
        
        <option value="">Full Time</option>
        <option>Part Time</option>
        <option>Contract</option>
        <option>Temporary</option>
        <option>Others</option>
        </select>  
      </p>


      
        <p class="list-group-item active" style="border-top:none;">
          <input type="button" style="background:#03a9ff;color:#fbfbfb;width:50%;height:30px;border-radius:5px;border:none;" Onclick="searchdata();" 
          value="<?php if($_SESSION['lang']=='en'){echo "Search";}
        elseif ($_SESSION['lang']=='ar') {echo " بحث ";} ?> ">
        </p>
        <script>
        function searchdata(){
          //alert("Seach start now.");

        var search='';
        // document.getElementById('srchbox').value;
        var exp=document.getElementById('exp').value;
          var price=document.getElementById('price').value;
          var loc=document.getElementById('loc').value;
          var jobname=document.getElementById('jname').value;
          var time=document.getElementById('time').value;
          var elevel=document.getElementById('elevel').value;
          var path= <?php echo $pathid; ?>;
      window.location='./index.php?route=product/search&search=' + search + '&moon_is_Lul=' + loc +'&category_id=65&jobname=' +jobname + '&time=' +time + '&sprice=' +price + '&exp=' +exp + '&elevel=' +elevel + '&path=' +path;
      // alert(catid);
        }
        </script>
     
      
    </div>



  
  <?php }
else if($_GET['path']==59){
	?>

<div class="list-group" style="border: 1px solid #ccc;">
    <p class="list-group-item active"  style="background:#2886b7;color:#fbfbfb;font-size:14px"><b>
      <?php if($_SESSION['lang']=='en'){echo "Search";}
        elseif ($_SESSION['lang']=='ar') {echo " بحث ";} ?>
</b></p> 

        <p class="list-group-item active" style="border-top:none;">
        <b><?php if($_SESSION['lang']=='en'){echo "Location";}
        elseif ($_SESSION['lang']=='ar') {echo " موقع ";} ?></b>
        <input type="text" name="search" id="loca" style="width:100%" value="" placeholder="<?php if($_SESSION['lang']=='en'){echo "Any Location";}
        elseif ($_SESSION['lang']=='ar') {echo "أي مكان";} ?>">
       </p>
      
        <p class="list-group-item active" style="border-top:none;">
      <select id="cat" >
        <option value=""><?php if($_SESSION['lang']=='en'){echo "All Categories";}
        elseif ($_SESSION['lang']=='ar') {echo "جميع الفئات ";} ?></option>
        <?php 
       while($row12=mysql_fetch_array($result12)){?>
       <option value="<?php echo $row12[0];?>"> <?php echo $row12[2];?></option>
       <?php } ?>
       </select>  
      </p>
      <p class="list-group-item active" style="border-top:none;">
      <b><?php if($_SESSION['lang']=='en'){echo "Makes";}
        elseif ($_SESSION['lang']=='ar') {echo " جعل ";} ?></b>
      <select id="brand" style="width:100%">
        <option value="0"> <?php if($_SESSION['lang']=='en'){echo "Any Makes";}
        elseif ($_SESSION['lang']=='ar') {echo " أي جعل ";} ?></option>
        
        <?php 
       while($row122=mysql_fetch_array($result122)){?>
       <option value="<?php echo $row122[0];?>"> <?php echo $row122[1];?></option>
       <?php } ?>
        </select>  
      </p>
      <script>
                  $('#brand').on('change', function(){
                    if(this.value==0){
                      $('#model').empty();
                      //alert("removed");
                    }
                    else{
                      var manid=this.value;
                      //console.log(manid);
                       $.ajax({url: './admin/getajaxmodel.php?manid='+this.value,
                          success: function(output) {
                            document.getElementById("model").innerHTML=output;
                      },
                           error: function (xhr, ajaxOptions, thrownError) {
                          alert(xhr.status + " "+ thrownError);
                        }}); 
                         }
                      });
                  </script>
      <!-- model of car -->
      <p class="list-group-item active" style="border-top:none;">
      <b><?php if($_SESSION['lang']=='en'){echo "Model";}
        elseif ($_SESSION['lang']=='ar') {echo " جعل ";} ?></b>
      <select id="model" style="width:100%"> 
        </select>  
      </p>
      <p class="list-group-item active" style="border-top:none;">
          <b><?php if($_SESSION['lang']=='en'){echo "Ad Posted";}
        elseif ($_SESSION['lang']=='ar') {echo " الإعلانات المنشورة ";} ?></b>
      <select id="times" style="width:100%">
        <option value=""> <?php if($_SESSION['lang']=='en'){echo "Any Time";}
        elseif ($_SESSION['lang']=='ar') {echo " أي وقت ";} ?></option>
        
        <option value="<?php echo date("Y-m-d");?>"><?php if($_SESSION['lang']=='en'){echo "Today";}elseif ($_SESSION['lang']=='ar') {echo " اليوم ";} ?></option>
        <option value="<?php echo date("Y-m-d",strtotime('-3 day'));?>"><?php if($_SESSION['lang']=='en'){echo "Within 3 Days";}elseif ($_SESSION['lang']=='ar') {echo " خلال 3 أيام ";} ?></option>
        <option value="<?php echo date("Y-m-d",strtotime('-7 day'));?>"><?php if($_SESSION['lang']=='en'){echo "Within 7 Days";}elseif ($_SESSION['lang']=='ar') {echo " خلال 7 أيام ";} ?></option>
        <option value="<?php echo date("Y-m-d",strtotime('-14 day'));?>"><?php if($_SESSION['lang']=='en'){echo "Within 14 Days";}elseif ($_SESSION['lang']=='ar') {echo " خلال 14 أيام ";} ?></option>
        <option value="<?php echo date("Y-m-d",strtotime('-30 day'));?>"><?php if($_SESSION['lang']=='en'){echo "Within 30 Days";}elseif ($_SESSION['lang']=='ar') {echo " خلال 30 أيام ";} ?></option>
        </select>  
      </p>


      

     <p class="list-group-item active" style="border-top:none;"> 
      
             <input name="price__gte" title="Price from" type="text" placeholder="<?php if($_SESSION['lang']=='en'){echo "Price From";}elseif ($_SESSION['lang']=='ar') {echo " السعر من ";} ?>" style="width:100px" id="price1">
       
      
             <input name="price__lte" title="Price to" type="text" placeholder="<?php if($_SESSION['lang']=='en'){echo "Price to";}elseif ($_SESSION['lang']=='ar') {echo " سعر الصداق ";} ?>" class="text-field-small alt" id="price2" style="width:100px">
       
   </p>
   <p class="list-group-item active" style="border-top:none;"> 
      <b><?php if($_SESSION['lang']=='en'){echo "Year (Min/Max)";}elseif ($_SESSION['lang']=='ar') {echo "العام (دقيقة / حد أقصى) ";} ?></b><br>
        <select style="width:40%" id="year1">
          <?php for( $i=1950;$i<2015;$i++) { ?>
            <option><?php echo $i; ?></option>
           <?php }?>
         </select>
          <select style="width:40%" id="year2">
            <?php for( $i=2015;$i>1950;$i--) { ?>
            <option><?php echo $i; ?></option>
           <?php }?>
         </select>
    </p>

   <p class="list-group-item active" style="border-top:none;border-bottom:none"> 

      
             <input name="price__gte" title="Km from" type="text" placeholder="<?php if($_SESSION['lang']=='en'){echo "KM From";}elseif ($_SESSION['lang']=='ar') {echo " من كم ";} ?>" style="width:100px" id="km1">
       
      
             <input name="price__lte" title="Km to" type="text" placeholder="<?php if($_SESSION['lang']=='en'){echo "KM To";}elseif ($_SESSION['lang']=='ar') {echo " إلى كم ";} ?>" id="km2" style="width:100px">
       
   </p>

    <p class="list-group-item active" style="border-top:none;"> 
      <b><?php if($_SESSION['lang']=='en'){echo "Seller Type";}elseif ($_SESSION['lang']=='ar') {echo " نوع البائع ";} ?></b><br>
        <select style="width:100%" id="elevel">
           <option value=""><?php if($_SESSION['lang']=='en'){echo "All Type";}elseif ($_SESSION['lang']=='ar') {echo " نوع البائع ";} ?></option>
            <option value="<?php if($_SESSION['lang']=='en'){echo "owner";}elseif ($_SESSION['lang']=='ar') {echo " مالك ";} ?>"><?php if($_SESSION['lang']=='en'){echo "owner";}elseif ($_SESSION['lang']=='ar') {echo " مالك ";} ?></option>
            <option value="<?php if($_SESSION['lang']=='en'){echo "dealer";}elseif ($_SESSION['lang']=='ar') {echo " تاجر ";} ?>"><?php if($_SESSION['lang']=='en'){echo "dealer";}elseif ($_SESSION['lang']=='ar') {echo " تاجر ";} ?></option>
            <option value="<?php if($_SESSION['lang']=='en'){echo "Dealership/Certified Pre-Owned";}elseif ($_SESSION['lang']=='ar') {echo " بيع / مصدق قبل ملك ";} ?>"><?php if($_SESSION['lang']=='en'){echo "Dealership/Certified Pre-Owned";}elseif ($_SESSION['lang']=='ar') {echo " بيع / مصدق قبل ملك ";} ?></option>
         </select>
          
            
   </p>

   <p class="list-group-item active" style="border-top:none;">
    
    <ul>
      <b><?php if($_SESSION['lang']=='en'){echo "Badges";}elseif ($_SESSION['lang']=='ar') {echo " شارات ";} ?></b>
<li><label><input type="checkbox" id="badges:swfield" value="7" name="badges" ><?php if($_SESSION['lang']=='en'){echo "Full Service History";}elseif ($_SESSION['lang']=='ar') {echo " خدمة التاريخ الكامل ";} ?></label></li>
<li><label><input type="checkbox" id="badges:swfield" value="9" name="badges"><?php if($_SESSION['lang']=='en'){echo "Negotiable";}elseif ($_SESSION['lang']=='ar') {echo " صالح للتداول ";} ?></label></li>
<li><label><input type="checkbox" id="badges:swfield" value="10" name="badges"> <?php if($_SESSION['lang']=='en'){echo "Under Warrenty";}elseif ($_SESSION['lang']=='ar') {echo "تحت الضمان";} ?></label></li>
<li><label><input type="checkbox" id="badges:swfield" value="8" name="badges"> <?php if($_SESSION['lang']=='en'){echo "Urgent";}elseif ($_SESSION['lang']=='ar') {echo "ملح";} ?></label></li>
</ul>
   </p>

<p class="list-group-item active">
        <input type="text" name="search" id="srchbox" style="width:100%" value="" placeholder="<?php if($_SESSION['lang']=='en'){echo "Keywords";}
        elseif ($_SESSION['lang']=='ar') {echo "الكلمات الرئيسية";} ?>">
       </p>

   


      
        <p class="list-group-item active" style="border-top:none;">
          <input type="button" style="background:#03a9ff;color:#fbfbfb;width:50%;height:30px;border-radius:5px;border:none;" Onclick="searchdata();" 
          value="<?php if($_SESSION['lang']=='en'){echo "Search";}
        elseif ($_SESSION['lang']=='ar') {echo " بحث ";} ?> ">
        </p>
        <script>
        function searchdata(){
          //alert("Seach start now.");

         var search=document.getElementById('srchbox').value;

          var subcat=document.getElementById('cat').value;
          if(subcat==""){
              var subcat=59;
          }
          var loc=document.getElementById('loca').value;
          var time=document.getElementById('times').value;
          var km1=document.getElementById('km1').value;
          var km2=document.getElementById('km2').value;
          var price1=document.getElementById('price1').value;
          var price2=document.getElementById('price2').value;
           var year1=document.getElementById('year1').value;
          var year2=document.getElementById('year2').value;
          var brand=document.getElementById('brand').value;
          var elevel=document.getElementById('elevel').value;
          var model=document.getElementById('model').value;
          var path= <?php echo $pathid; ?>;
          //var jobname=document.getElementById('jname').value;
         window.location='./index.php?route=product/search&search=' + search + '&moon_is_Lul=' + loc + '&modelwa=' + model +'&category_id='+subcat+ '&time=' +time +'&price1=' +price1+'&price2=' +price2+'&year1=' +year1+'&year2=' +year2+'&km1=' +km1+'&km2=' +km2+'&brand=' +brand +'&elevel=' +elevel+ '&path=' +path ;
      // alert(catid);
        }
        </script>
     
      
    </div>

<?php }
elseif($_GET['path']==117 || $_GET['path']==118){
	?>
	<div class="list-group" style="border: 1px solid #ccc;">
  <p class="list-group-item active"  style="background:#2886b7;color:#fbfbfb;font-size:14px"><b>
      <?php if($_SESSION['lang']=='en'){echo "Search";}
        elseif ($_SESSION['lang']=='ar') {echo " بحث ";} ?>
    </b>
  </p> 

      <p class="list-group-item active" style="border-top:none;">
        <b><?php if($_SESSION['lang']=='en'){echo "Location";}
        elseif ($_SESSION['lang']=='ar') {echo " موقع ";} ?></b>
        <input type="text" name="search" id="loca" style="width:100%" value="" placeholder="<?php if($_SESSION['lang']=='en'){echo "Any Location";}
        elseif ($_SESSION['lang']=='ar') {echo "أي مكان";} ?>">
      </p>
      
   		<p class="list-group-item active" style="border-top:none;">
   		<select id="cat" style="width:100%">
        <option value=""><?php if($_SESSION['lang']=='en'){echo "All Categories";}
        elseif ($_SESSION['lang']=='ar') {echo "جميع الفئات ";} ?></option>
        <?php 
       while($row12=mysql_fetch_array($result12)){?>
       <option value="<?php echo $row12[0];?>"> <?php echo $row12[2];?></option>
       <?php } ?>
        </select>  
      </p>
      <p class="list-group-item active" style="border-top:none;">
          <b><?php if($_SESSION['lang']=='en'){echo "Ad Posted";}
        elseif ($_SESSION['lang']=='ar') {echo " الإعلانات المنشورة ";} ?></b>
      <select id="times" style="width:100%">
         <option value=""> <?php if($_SESSION['lang']=='en'){echo "Any Time";}
        elseif ($_SESSION['lang']=='ar') {echo " أي وقت ";} ?></option>
        
        <option value="<?php echo date("Y-m-d");?>"><?php if($_SESSION['lang']=='en'){echo "Today";}elseif ($_SESSION['lang']=='ar') {echo " اليوم ";} ?></option>
        <option value="<?php echo date("Y-m-d",strtotime('-3 day'));?>"><?php if($_SESSION['lang']=='en'){echo "Within 3 Days";}elseif ($_SESSION['lang']=='ar') {echo " خلال 3 أيام ";} ?></option>
        <option value="<?php echo date("Y-m-d",strtotime('-7 day'));?>"><?php if($_SESSION['lang']=='en'){echo "Within 7 Days";}elseif ($_SESSION['lang']=='ar') {echo " خلال 7 أيام ";} ?></option>
        <option value="<?php echo date("Y-m-d",strtotime('-14 day'));?>"><?php if($_SESSION['lang']=='en'){echo "Within 14 Days";}elseif ($_SESSION['lang']=='ar') {echo " خلال 14 أيام ";} ?></option>
        <option value="<?php echo date("Y-m-d",strtotime('-30 day'));?>"><?php if($_SESSION['lang']=='en'){echo "Within 30 Days";}elseif ($_SESSION['lang']=='ar') {echo " خلال 30 أيام ";} ?></option>
        </select>  
      </p>
       <p class="list-group-item active" style="border-top:none;"> 
      
             <input name="price__gte" title="Price from" type="text" placeholder="<?php if($_SESSION['lang']=='en'){echo "Price From";}elseif ($_SESSION['lang']=='ar') {echo " من سعر ";} ?>" style="width:100px" id="price1">
            <input name="price__lte" title="Price to" type="text" placeholder="<?php if($_SESSION['lang']=='en'){echo "Price To";}elseif ($_SESSION['lang']=='ar') {echo " سعر الصداق ";} ?>" class="text-field-small alt" id="price2" style="width:100px">
      </p>
   <p class="list-group-item active" style="border-top:none;"> 
			<b><?php if($_SESSION['lang']=='en'){echo "Bedrooms (Min/Max)";}elseif ($_SESSION['lang']=='ar') {echo " غرف نوم (مين / ماكس) ";} ?></b><br>
      	<select style="width:40%" id="year1">
            <option value="">Studio</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            </select>
         	<select style="width:40%" id="year2">
            <option value="">Studio</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="20">5 + </option>
         </select>
            
   </p>


		<p class="list-group-item active">
        <input type="text" name="search" id="elevel" style="width:100%" value="" placeholder="<?php if($_SESSION['lang']=='en'){echo "Neighborhoods";}
        elseif ($_SESSION['lang']=='ar') {echo "الكلمات الرئيسية";} ?>">
       </p>
       <!--
       <p class="list-group-item active">
        <input type="text" name="search" id="" style="width:100%" value="" placeholder="<?php if($_SESSION['lang']=='en'){echo "Buildings";}
        elseif ($_SESSION['lang']=='ar') {echo "المباني";} ?>">
       </p> -->
       <p class="list-group-item active">
        <input type="text" name="search" id="srchbox" style="width:100%" value="" placeholder="<?php if($_SESSION['lang']=='en'){echo "Keywords";}
        elseif ($_SESSION['lang']=='ar') {echo "الكلمات الرئيسية";} ?>">
       </p>
        <p class="list-group-item active" style="border-top:none;">
          <input type="button" style="background:#03a9ff;color:#fbfbfb;width:50%;height:30px;border-radius:5px;border:none;" Onclick="searchdata();" 
          value="<?php if($_SESSION['lang']=='en'){echo "Search";}
        elseif ($_SESSION['lang']=='ar') {echo " بحث ";} ?> ">
        </p>
        <script>
        function searchdata(){
          //alert("Seach start now.");

         var search=document.getElementById('srchbox').value;

          var subcat=document.getElementById('cat').value;
          if(subcat==""){
              var subcat=117;
          }
          var loc=document.getElementById('loca').value;
          var time=document.getElementById('times').value;
          var price1=document.getElementById('price1').value;
          var price2=document.getElementById('price2').value;
           var year1=document.getElementById('year1').value;
          var year2=document.getElementById('year2').value;
          //var brand=document.getElementById('brand').value;
          var elevel=document.getElementById('elevel').value;
          //var jobname=document.getElementById('jname').value;
          var path= <?php echo $pathid; ?>;
         window.location='./index.php?route=product/search&search=' + search + '&moon_is_Lul=' + loc +'&category_id='+subcat+ '&time=' +time +'&price1=' +price1+'&price2=' +price2+'&year1=' +year1+'&year2=' +year2+'&elevel=' +elevel + '&path=' + path  ;
      // alert(catid);
        }
        </script>
     
      
    </div>
	<?php
}
// classified
elseif($_GET['path']==119){
  ?>
  <div class="list-group" style="border: 1px solid #ccc;">
  <p class="list-group-item active"  style="background:#2886b7;color:#fbfbfb;font-size:14px"><b>
      <?php if($_SESSION['lang']=='en'){echo "Search";}
        elseif ($_SESSION['lang']=='ar') {echo " بحث ";} ?>
    </b>
  </p> 

      <p class="list-group-item active" style="border-top:none;">
        <b><?php if($_SESSION['lang']=='en'){echo "Location";}
        elseif ($_SESSION['lang']=='ar') {echo " موقع ";} ?></b>
        <input type="text" name="search" id="loca" style="width:100%" value="" placeholder="<?php if($_SESSION['lang']=='en'){echo "Any Location";}
        elseif ($_SESSION['lang']=='ar') {echo "أي مكان";} ?>">
      </p>
      
      <p class="list-group-item active" style="border-top:none;">
      <select id="cat" style="width:100%">
        <option value=""><?php if($_SESSION['lang']=='en'){echo "All Categories";}
        elseif ($_SESSION['lang']=='ar') {echo "جميع الفئات ";} ?></option>
        <?php 
       while($row12=mysql_fetch_array($result12)){?>
       <option value="<?php echo $row12[0];?>"> <?php echo $row12[2];?></option>
       <?php } ?>
        </select>  
      </p>
      <p class="list-group-item active" style="border-top:none;">
          <b><?php if($_SESSION['lang']=='en'){echo "Ad Posted";}
        elseif ($_SESSION['lang']=='ar') {echo " الإعلانات المنشورة ";} ?></b>
      <select id="times" style="width:100%">
         <option value=""> <?php if($_SESSION['lang']=='en'){echo "Any Time";}
        elseif ($_SESSION['lang']=='ar') {echo " أي وقت ";} ?></option>
        
        <option value="<?php echo date("Y-m-d");?>"><?php if($_SESSION['lang']=='en'){echo "Today";}elseif ($_SESSION['lang']=='ar') {echo " اليوم ";} ?></option>
        <option value="<?php echo date("Y-m-d",strtotime('-3 day'));?>"><?php if($_SESSION['lang']=='en'){echo "Within 3 Days";}elseif ($_SESSION['lang']=='ar') {echo " خلال 3 أيام ";} ?></option>
        <option value="<?php echo date("Y-m-d",strtotime('-7 day'));?>"><?php if($_SESSION['lang']=='en'){echo "Within 7 Days";}elseif ($_SESSION['lang']=='ar') {echo " خلال 7 أيام ";} ?></option>
        <option value="<?php echo date("Y-m-d",strtotime('-14 day'));?>"><?php if($_SESSION['lang']=='en'){echo "Within 14 Days";}elseif ($_SESSION['lang']=='ar') {echo " خلال 14 أيام ";} ?></option>
        <option value="<?php echo date("Y-m-d",strtotime('-30 day'));?>"><?php if($_SESSION['lang']=='en'){echo "Within 30 Days";}elseif ($_SESSION['lang']=='ar') {echo " خلال 30 أيام ";} ?></option>
        </select>  
      </p>
       <p class="list-group-item active" style="border-top:none;"> 
      
             <input name="price__gte" title="Price from" type="text" placeholder="<?php if($_SESSION['lang']=='en'){echo "Price From";}elseif ($_SESSION['lang']=='ar') {echo " من سعر ";} ?>" style="width:100px" id="price1">
            <input name="price__lte" title="Price to" type="text" placeholder="<?php if($_SESSION['lang']=='en'){echo "Price To";}elseif ($_SESSION['lang']=='ar') {echo " سعر الصداق ";} ?>" class="text-field-small alt" id="price2" style="width:100px">
      </p>

    
       <!--
       <p class="list-group-item active">
        <input type="text" name="search" id="" style="width:100%" value="" placeholder="<?php if($_SESSION['lang']=='en'){echo "Buildings";}
        elseif ($_SESSION['lang']=='ar') {echo "المباني";} ?>">
       </p> -->
       <p class="list-group-item active">
        <input type="text" name="search" id="srchbox" style="width:100%" value="" placeholder="<?php if($_SESSION['lang']=='en'){echo "Keywords";}
        elseif ($_SESSION['lang']=='ar') {echo "الكلمات الرئيسية";} ?>">
       </p>
        <p class="list-group-item active" style="border-top:none;">
          <input type="button" style="background:#03a9ff;color:#fbfbfb;width:50%;height:30px;border-radius:5px;border:none;" Onclick="searchdata();" 
          value="<?php if($_SESSION['lang']=='en'){echo "Search";}
        elseif ($_SESSION['lang']=='ar') {echo " بحث ";} ?> ">
        </p>
        <script>
        function searchdata(){
          //alert("Seach start now.");

         var search=document.getElementById('srchbox').value;

          var subcat=document.getElementById('cat').value;
          if(subcat==""){
              var subcat=119;
          }
          var loc=document.getElementById('loca').value;
          var time=document.getElementById('times').value;
          var price1=document.getElementById('price1').value;
          var price2=document.getElementById('price2').value;
          // var year1=document.getElementById('year1').value;
          //var year2=document.getElementById('year2').value;
          //var brand=document.getElementById('brand').value;
          //var elevel=document.getElementById('elevel').value;
          //var jobname=document.getElementById('jname').value;
          var path= <?php echo $pathid; ?>;
         window.location='./index.php?route=product/search&search=' + search + '&moon_is_Lul=' + loc +'&category_id='+subcat+ '&time=' +time +'&price1=' +price1+'&price2=' +price2+ '&path=' + path  ;
      // alert(catid);
        }
        </script>
     
      
    </div>
  <?php
}
//end classified
// ccommunity
elseif($_GET['path']==413){
  ?>
  <div class="list-group" style="border: 1px solid #ccc;">
  <p class="list-group-item active"  style="background:#2886b7;color:#fbfbfb;font-size:14px"><b>
      <?php if($_SESSION['lang']=='en'){echo "Search";}
        elseif ($_SESSION['lang']=='ar') {echo " بحث ";} ?>
    </b>
  </p> 

      <p class="list-group-item active" style="border-top:none;">
        <b><?php if($_SESSION['lang']=='en'){echo "Location";}
        elseif ($_SESSION['lang']=='ar') {echo " موقع ";} ?></b>
        <input type="text" name="search" id="loca" style="width:100%" value="" placeholder="<?php if($_SESSION['lang']=='en'){echo "Any Location";}
        elseif ($_SESSION['lang']=='ar') {echo "أي مكان";} ?>">
      </p>
      
      <p class="list-group-item active" style="border-top:none;">
      <select id="cat" style="width:100%">
        <option value=""><?php if($_SESSION['lang']=='en'){echo "All Categories";}
        elseif ($_SESSION['lang']=='ar') {echo "جميع الفئات ";} ?></option>
        <?php 
       while($row12=mysql_fetch_array($result12)){?>
       <option value="<?php echo $row12[0];?>"> <?php echo $row12[2];?></option>
       <?php } ?>
        </select>  
      </p>
      <p class="list-group-item active" style="border-top:none;">
          <b><?php if($_SESSION['lang']=='en'){echo "Ad Posted";}
        elseif ($_SESSION['lang']=='ar') {echo " الإعلانات المنشورة ";} ?></b>
      <select id="times" style="width:100%">
         <option value=""> <?php if($_SESSION['lang']=='en'){echo "Any Time";}
        elseif ($_SESSION['lang']=='ar') {echo " أي وقت ";} ?></option>
        
        <option value="<?php echo date("Y-m-d");?>"><?php if($_SESSION['lang']=='en'){echo "Today";}elseif ($_SESSION['lang']=='ar') {echo " اليوم ";} ?></option>
        <option value="<?php echo date("Y-m-d",strtotime('-3 day'));?>"><?php if($_SESSION['lang']=='en'){echo "Within 3 Days";}elseif ($_SESSION['lang']=='ar') {echo " خلال 3 أيام ";} ?></option>
        <option value="<?php echo date("Y-m-d",strtotime('-7 day'));?>"><?php if($_SESSION['lang']=='en'){echo "Within 7 Days";}elseif ($_SESSION['lang']=='ar') {echo " خلال 7 أيام ";} ?></option>
        <option value="<?php echo date("Y-m-d",strtotime('-14 day'));?>"><?php if($_SESSION['lang']=='en'){echo "Within 14 Days";}elseif ($_SESSION['lang']=='ar') {echo " خلال 14 أيام ";} ?></option>
        <option value="<?php echo date("Y-m-d",strtotime('-30 day'));?>"><?php if($_SESSION['lang']=='en'){echo "Within 30 Days";}elseif ($_SESSION['lang']=='ar') {echo " خلال 30 أيام ";} ?></option>
        </select>  
      </p>
       <p class="list-group-item active" style="border-top:none;"> 
      
             <input name="price__gte" title="Price from" type="text" placeholder="<?php if($_SESSION['lang']=='en'){echo "Price From";}elseif ($_SESSION['lang']=='ar') {echo " من سعر ";} ?>" style="width:100px" id="price1">
            <input name="price__lte" title="Price to" type="text" placeholder="<?php if($_SESSION['lang']=='en'){echo "Price To";}elseif ($_SESSION['lang']=='ar') {echo " سعر الصداق ";} ?>" class="text-field-small alt" id="price2" style="width:100px">
      </p>

    
       <!--
       <p class="list-group-item active">
        <input type="text" name="search" id="" style="width:100%" value="" placeholder="<?php if($_SESSION['lang']=='en'){echo "Buildings";}
        elseif ($_SESSION['lang']=='ar') {echo "المباني";} ?>">
       </p> -->
       <p class="list-group-item active">
        <input type="text" name="search" id="srchbox" style="width:100%" value="" placeholder="<?php if($_SESSION['lang']=='en'){echo "Keywords";}
        elseif ($_SESSION['lang']=='ar') {echo "الكلمات الرئيسية";} ?>">
       </p>
        <p class="list-group-item active" style="border-top:none;">
          <input type="button" style="background:#03a9ff;color:#fbfbfb;width:50%;height:30px;border-radius:5px;border:none;" Onclick="searchdata();" 
          value="<?php if($_SESSION['lang']=='en'){echo "Search";}
        elseif ($_SESSION['lang']=='ar') {echo " بحث ";} ?> ">
        </p>
        <script>
        function searchdata(){
          //alert("Seach start now.");

         var search=document.getElementById('srchbox').value;

          var subcat=document.getElementById('cat').value;
          if(subcat==""){
              var subcat=413;
          }
          var loc=document.getElementById('loca').value;
          var time=document.getElementById('times').value;
          var price1=document.getElementById('price1').value;
          var price2=document.getElementById('price2').value;
          // var year1=document.getElementById('year1').value;
          //var year2=document.getElementById('year2').value;
          //var brand=document.getElementById('brand').value;
          //var elevel=document.getElementById('elevel').value;
          //var jobname=document.getElementById('jname').value;
          var path= <?php echo $pathid; ?>;
         window.location='./index.php?route=product/search&search=' + search + '&moon_is_Lul=' + loc +'&category_id='+subcat+ '&time=' +time +'&price1=' +price1+'&price2=' +price2+ '&path=' + path  ;
      // alert(catid);
        }
        </script>
     
      
    </div>
  <?php
}
//end community
else{

?>

<?php foreach ($modules as $module) { ?>
  <?php echo $module; ?>
  <?php } ?>
<?php }
   ?>
</column>

<?php  }} ?>