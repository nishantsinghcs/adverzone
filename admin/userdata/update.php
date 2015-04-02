<?php 
ob_start(); @ session_start(); $DB_HOST    ="localhost"; $DB_USER        ='nishant'; $DB_PASSWORD    ='123_az'; $DB_DATABASE    ='az';   $conn = mysql_connect($DB_HOST,$DB_USER,$DB_PASSWORD) or mysql_error();
mysql_select_db($DB_DATABASE, $conn) or die("Something Went wrong!! contact the developer or site owner.");


$name=$_POST['name'];
$email=$_POST['email'];
$about=$_POST['about'];
$id=$_POST['id'];
// Update text into database
	$query="UPDATE az_user
	SET firstname='$name', email='$email',about='$about'
		WHERE user_id='$id'";
		mysql_query($query);


// Profile pic upload
	if(is_uploaded_file($_FILES['profilepic']['tmp_name'])) {
		//echo $_FILES['resume']['name'];
		if (!file_exists('profilepic/'.$email.'/')) { mkdir('profilepic/'.$email, 0777, true);} 
		$uploaddir = 'profilepic/'.$email.'/' ;
		$uploadfile = $uploaddir . basename($_FILES['profilepic']['name']);
		if (move_uploaded_file($_FILES['profilepic']['tmp_name'], $uploadfile)) {
    		//echo "Profile pic Uploaded, now save to db.\n";
    		$imgname=$_FILES['profilepic']['name'];
    		$query1="UPDATE az_user SET image='$imgname' WHERE user_id='$id'"; mysql_query($query1);} 
    		else {
   		 echo "There was an error Updating Profile pic. !!\n";
		}
	}
// End profile pic upload

// resume upload
	if(is_uploaded_file($_FILES['resume']['tmp_name'])) {
		//echo $_FILES['resume']['name'];
		if (!file_exists('resume/'.$email.'/')) { mkdir('resume/'.$email, 0777, true);} 
		$uploaddir = 'resume/'.$email.'/' ;
		$uploadfile = $uploaddir . basename($_FILES['resume']['name']);
		$resumeu=$_FILES['resume']['name'];
		if (move_uploaded_file($_FILES['resume']['tmp_name'], $uploadfile)) {
    		echo "File is valid, and was successfully uploaded.\n";
    		$query2="UPDATE az_user SET resume='$resumeu' WHERE user_id='$id'"; mysql_query($query2);
		} 
		else {
   		 echo "There was an error Uploading Resume !!\n";
		}
	}
	
//  end resume upload

//header("Location: ../editaccount.php?id="$id);
//header('location: ../editaccount.php'."?i".$id);
header("Location: ../editaccount.php?id=".$id);

?>