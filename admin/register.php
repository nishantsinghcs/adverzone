<?php
	
	
	//Include database connection details
ob_start();
session_start();

$DB_HOST	="localhost";

$DB_USER        ='nishant';

$DB_PASSWORD    ='123_az';

$DB_DATABASE    ='az';

	

$conn = mysql_connect($DB_HOST,$DB_USER,$DB_PASSWORD) or mysql_error();

mysql_select_db($DB_DATABASE, $conn) or die("I cannot  find the database.");
	//End connection with db
	
	//Array to store validation errors
	$errmsg_arr = array();
	
	//Validation error flag
	$errflag = false;
	

	
	//Function to sanitize values received from the form. Prevents SQL injection
	function clean($str) {
		$str = @trim($str);
		if(get_magic_quotes_gpc()) {
			$str = stripslashes($str);
		}
		return mysql_real_escape_string($str);
	}
	
	//Sanitize the POST values
	$fname = clean($_POST['fname']);
	$mname = clean($_POST['mname']);
	$lname = clean($_POST['lname']);
	$email = clean($_POST['email']);
	$mobile = clean($_POST['mobile']);	
	$state = clean($_POST['slist']);
	$state1 = clean($_POST['slist1']);
	$country = clean($_POST['country']);
	$password = clean($_POST['password']);
	//$offset=strtotime("+30 minutes , +12 hours");
	//$time=$offset;
	//$date=NOW();
	
	//Check for duplicate Email ID
	if($email != '') {
		$qry = "SELECT * FROM az_user_adpost WHERE email='$email'";
		$result = mysql_query($qry);
		if($result) {
			if(mysql_num_rows($result) > 0) {
				$errmsg_arr[] = 'Email ID already in use';
				$errflag = true;

			}
			@mysql_free_result($result);
		}
		else {
			die("Query failed");
		}
	}
	
	//If there are input validations, redirect back to the registration form
	if($errflag) {
		$_SESSION['ERRMSG_ARR'] = $errmsg_arr;
		session_write_close();

		header("location:../loginadvertiser.php?alreadyregistered=1");
		exit();
	}
	$salt = substr(md5(uniqid(rand(), true)), 0, 9);
	$securedpass=sha1($salt . sha1($salt . sha1($_POST['password'])));

	//Create INSERT query
	$qry = "INSERT INTO az_user_adpost(fname,mname,lname,email,mobile,state,state1,country,company,password,registered_on,registered_date) 
	VALUES('$fname','$mname','$lname','$email','$mobile','$state','$state1','$country',0,'$securedpass',1,NOW())";
	$result = mysql_query($qry);
	
// add to ad poster group
	$qry2="INSERT INTO az_user(user_group_id,username,password,salt,firstname,lastname,email,status,date_added) 
	VALUES(11,'$fname','$securedpass','$salt','$fname','$lname','$email',1,NOW())";
	$result2 = mysql_query($qry2);
		
// add to general customer
	$qry3="INSERT INTO az_customer(customer_group_id,store_id,firstname,lastname,email,telephone,password,salt,status,approved,date_added) 
	VALUES(1,0,'$fname','$lname','$email','$mobile','$securedpass','$salt',1,1,NOW())";
	$result3 = mysql_query($qry3);
	

	//Check whether the query was successful or not
	if($result) {
	//login the user here
	//send mail for activation  create activation link 
	/*
	$query1="select * from az_user_adpost WHERE email='$email'";
     $result1=mysql_query($query1);
      $row1=mysql_fetch_array($result1);
      $actid=$row1[0];
//   echo $actid;
	$headers  = 'MIME-Version: 1.0' . "\r\n";
	$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
	// Additional headers
	$headers .= 'From: ADVERZONE <info@adverzone.com>' . "\r\n";
	$headers .= 'Cc: nishant_cs@hotmail.com';
	$subject = "CS Attack Activation";
	$message = " <b>  Hello $fname ,<br>
	<br><br><br><br>
	Thanks for registering with us.<br >For verifying your Account. Click below link.<br><br>
	<a href='http://adverzone.com/activate.php?id=$actid'>Activate</a>  <br><br>
	Or copy this code to url 
	<br><br>
	http://adverzone.com/activate.php?id=$actid    
	<br><br><br><br>
	Thanks <br><br>
	Adverzone
";


$message = wordwrap($message, 70);
mail($email,$subject,$message,$headers);


*/

	
	//redirect to home page
		@ header("location: ../loginadvertiser.php?newregistered=1");
		exit();

	}
	else{
		echo "query failed to register";
	}
?>
