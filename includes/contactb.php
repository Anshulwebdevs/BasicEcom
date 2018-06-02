<?php
include "common.php";

if(isset($_REQUEST['subpro'])){
	
	$n=safe($_REQUEST['cname']);
	$e=safe($_REQUEST['cemail']);
	$m=safe($_REQUEST['cmsg']);
	$conn=connect();
	$q="insert into message (name,email,msg) values('$n','$e','$m')";
	$result= mysqli_query($conn,$q) or die("query failed");
	mysqli_close();
	header("Location:../contact.php?em=Thank+you");
}