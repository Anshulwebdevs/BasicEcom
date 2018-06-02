<?php
session_start();
include "common.php";

if(isset($_REQUEST['suborder'])&&!($_REQUEST['address']=="")&&!($_REQUEST['p_no']=="")){
	$add=safe($_REQUEST['address']);
	$no=safe($_REQUEST['p_no']);
	$uid=$_SESSION['id'];
	$pid=$_REQUEST['pid'];
	$conn=connect();
$q="insert into orderdb (pid,uid,phno,address) values('$pid','$uid','$no','$add')";
$result= mysqli_query($conn,$q) or die("query failed");
mysqli_close();
header("Location:../index.php?em=Your+Product+will+Be+Delivered+soon");
}
	
