
 <!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
<meta charset="UTF-8" />
<title>Products</title>
<base href="http://localhost/az/admin/" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
<script type="text/javascript" src="view/javascript/jquery/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="view/javascript/bootstrap/js/bootstrap.min.js"></script>
<link href="view/javascript/bootstrap/less/bootstrap.less" rel="stylesheet/less" />
<script src="view/javascript/bootstrap/less-1.7.4.min.js"></script>
<link href="view/javascript/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
<link href="view/javascript/summernote/summernote.css" rel="stylesheet" />
<link href="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen" />
<link type="text/css" href="view/stylesheet/stylesheet.css" rel="stylesheet" media="screen" />
<script src="view/javascript/common.js" type="text/javascript"></script>
<style>
.logoresponsive{width:257px;position:absolute;margin-left:100px;}
@media (max-width: 500px) {
  .logoresponsive{width:80px;margin-left:0px;margin-right:10px}
}
                  .input-hidden{
                    display: none;
                    }
                  </style>
</head>
<body>
  <?php 
  ob_start(); @ session_start(); $DB_HOST    ="localhost"; $DB_USER        ='nishant'; $DB_PASSWORD    ='123_az'; $DB_DATABASE    ='az';   $conn = mysql_connect($DB_HOST,$DB_USER,$DB_PASSWORD) or mysql_error();
    mysql_select_db($DB_DATABASE, $conn) or die("Something Went wrong!! contact the developer or site owner.");
    //End connection with db
    $id=$_GET['id'];
    $query="SELECT * FROM az_user WHERE user_id='$id'";
    $result=mysql_query($query);
    $row12 = mysql_fetch_array($result);
    $email=$row12['email'];
  ?>
  
<div id="container">
<header id="header" class="navbar navbar-static-top">
  <div class="navbar-header">
        <a type="button" id="button-menu" class="pull-left"><i class="fa fa-indent fa-lg"></i></a>
        <a href="../index.php?route=common/home" class="navbar-brand"><img src="view/image/logo.png" alt="Adverzone" title="Adverzone" class="logoresponsive"/></a></div>
    <ul class="nav pull-right">
      <li><a href="http://localhost/az/admin/index.php?route=common/logout&amp;token=<?php echo $_GET['route'];?>"><span class="hidden-xs hidden-sm hidden-md">Logout</span> <i class="fa fa-sign-out fa-lg"></i></a></li>
  </ul>
  </header>
<nav id="column-left">


	<div id="profile">
  <div><a class="dropdown-toggle" data-toggle="dropdown"><img src="http://localhost/az/image/cache/no_image-45x45.png" alt="nik yo" title="nik" class="img-circle" /></a></div>
  <div>
    <h4>nik yo</h4>
    <small>Ad Posting</small></div>
</div>
	<ul id="menu">
  <li id="dashboard"><a href="http://localhost/az/admin/index.php?route=common/dashboard&amp;token=<?php echo $_GET['route'];?>"><i class="fa fa-dashboard fa-fw"></i> <span>Dashboard</span></a></li>

  <li id="dashboard"><a class="parent"><i class="fa fa-puzzle-piece fa-fw"></i> <span>Resume/Cover Letter</span></a>
    <ul>
     <li><a>My Account</a></li >
      <li><a href="http://localhost/az/admin/userdata/resume/<?php echo $email.'/'.$row12['resume'];?>">Download Resume</a></li >
    </ul>
  </li>


  <li id="catalog"><a class="parent"><i class="fa fa-tags fa-fw"></i> <span>Catalog</span></a>
    <ul>
      
      <li><a href="http://localhost/az/admin/index.php?route=catalog/product&amp;token=<?php echo $_GET['route'];?>">Products:</a></li>
    </ul>
  </li>
</ul>
	


</nav>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
         <!-- <button type="button" data-toggle="tooltip" title="Delete" class="btn btn-danger" 
         onclick="confirm('Are you sure?') ? $('#form-product').submit() : false;"><i class="fa fa-trash-o"></i></button> -->
      </div>
      <h1></h1>
      <ul class="breadcrumb">
        </ul>
    </div>
  </div>
  <div class="container-fluid">
            <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-list"></i>My Account</h3>
        <a href="./editaccount.php?id=<?php echo $id; ?> &route=<?php echo $_GET['route'];?>"><h3 class="panel-title" style="float:right"><i class="fa fa-list"></i>Edit</h3></a>
      </div>
      <div class="panel-body">
                <form action="http://localhost/az/admin/index.php?route=catalog/product/delete&amp;token=acb0bb528f1f848d81d3eda477f791cb" method="post" enctype="multipart/form-data" id="form-product">
          <div class="table-responsive">
            <!-- image start -->
              <div class="image">
                <a>
                  <img src="http://localhost/az/admin/userdata/profilepic/<?php echo $email.'/'.$row12['image'];?>" alt="Acc" title="JOB NEEDED" class="img-responsive" style="width:200px;height:200px">
                </a>
                </div>

            <!-- Image End -->
            <!--  desc About you -->
            <div>
              <div class="caption">
                <br><br>
                <h4>Name: <a><?php echo $row12['firstname'];?></a></h4>
                <br>
                <h4>Email: <a><?php echo $row12['email'];?></a></h4>
                <br>
                <h4>Resume:<a href="http://localhost/az/admin/userdata/resume/<?php echo $email.'/'.$row12['resume'];?>"><?php echo $row12['resume'];?></a></h4><br>
                  
                <div class="input-hidden"><h4> <input type="file">
                  <br><input type="button" value="Upload Resume"></h4></div>
                <br>
                <h3>About:</h3>
                <p><?php echo $row12['about'];?></p>
                 
               </div>
               </div>
            <!-- about end -->
          </div>
        </form>
        <div class="row">
          <div class="col-sm-6 text-left"></div>
          <div class="col-sm-6 text-right">Page 1</div>
        </div>
      </div>
    </div>
  </div>
  </div>
<footer id="footer">Powerd By<br />Adverzone</footer></div>
</body></html>
                <script>
                    $(".updateresume").click(function (){ 
                      $(".input-hidden").addClass('inputshow');
                      $(".input-hidden").removeClass('input-hidden');
                      $(".updateresume").addClass('input-hidden');
                      
                   });
                     </script>