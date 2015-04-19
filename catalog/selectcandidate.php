<?php
if(isset($_GET['candidateemail']))
{
	$temail=$_GET['candidateemail'];
	$fmail=$_GET['companyemail'];
	$companyname=$_GET['companyname'];
	$candidatename=$_GET['candidatename'];
	$jd=$_GET['companyjd'];

	//mail to candidate
	$headers  = 'MIME-Version: 1.0' . "\r\n";
	$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
	// Additional headers
	$headers .= 'From: Adverzone Jobs <'.$fmail.'>' . "\r\n";
	$headers .= 'Cc: ahmed.altuhamy@gmail.com,nishant_cs@hotmail.com'; 
	$subject = "Shortlisted for job ";
	$message = "You have been shortlisted for job by <b>".$companyname."</b>.<br> Find the company details in the below link <br>
	http://adverzone.com/admin/userdata/resume/".$fmail."/".$jd." <br>
	Resopond to the company by replying to this email with your updated resume.<br>

	Thanks <br>

	Adverzone Team<br>

	support@adverzone.com
	";
	mail($temail,$subject,$message,$headers);
//echo $message; 

}
?>