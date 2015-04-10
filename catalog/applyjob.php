<?php
if(isset($_GET['byemail']))
{
	$byemail=$_GET['byemail'];
	$tomail=$_GET['toemail'];
	$applyname=$_GET['applyname'];
	$resume=$_GET['resume'];
	//mail to company
	$headers  = 'MIME-Version: 1.0' . "\r\n";
	$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
	// Additional headers
	$headers .= 'From: Adverzone Jobs <'.$byemail.'>' . "\r\n";
	$headers .= 'Cc: ahmed.altuhamy@gmail.com,nishant_cs@hotmail.com';
	$subject = "Job Application : ".$applyname;
	$message = "<b>".$applyname."</b> Applied to your job.<br> Download the resume of the candidate from the below link <br>
	http://adverzone.com/admin/userdata/resume/".$byemail."/".$resume." <br>
	Resopond to the candidate by replying to this email.<br>

	Thanks <br>

	Adverzone Team<br>

	support@adverzone.com
	";
	mail($tomail,$subject,$message,$headers);
//echo $message; 

}
?>