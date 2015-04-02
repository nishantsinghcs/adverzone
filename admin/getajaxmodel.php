<?php  $DB_HOST  ="localhost";
 $DB_USER ='nishant'; $DB_PASSWORD    ='123_az'; 
 $DB_DATABASE    ='az'; $conn = mysql_connect($DB_HOST,$DB_USER,$DB_PASSWORD) or mysql_error(); mysql_select_db($DB_DATABASE, $conn) or die("Something Went Wrong !!");
 $errmsg_arr = array();
  $errflag = false;?>
 			 <?php  
 			 if(isset($_GET['manid'])){
 			 $id=$_GET['manid'];
 			   $querymodel="select * FROM az_manufacturer_model WHERE manufacturer_id='$id'";
  					$resultmodel=mysql_query($querymodel);
 			 		while($rows=mysql_fetch_array($resultmodel)){?>
                    <option value=<?php echo $rows[1]; ?>><?php echo $rows[1]; ?></option>
                    <?php }	
                     }
 			 	 ?>
