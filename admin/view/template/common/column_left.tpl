<nav id="column-left">


	<?php echo $profile; ?>
	<?php echo $menu; ?>
	<?php 
	@session_start();
	if ($_SESSION['SESS_USERGRP']==1) {
	 echo $stats;
	}
	 ?>



</nav>
