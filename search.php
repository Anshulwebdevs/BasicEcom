<?php
include "includes/common.php";
top("Search");
sidebar();
contenttop();
if(isset($_REQUEST['searcht'])){
	$s=safe($_REQUEST['searcht']);

		

	$conn=connect();
	$q="Select * from products where keywords like '%".$s."%'";
	$result= mysqli_query($conn,$q) or die("query failed");
	while($row=mysqli_fetch_array($result)){
		$name=$row['brand']." ".$row['model'];
		createproduct($name,$row['image'],$row['mrp'],$row['ofp'],$row['pid']);
	}
	mysqli_close($conn);	
	
}
if(isset($_REQUEST['bid'])){
	$conn=connect();
	$q="Select * from products where brand='".$_REQUEST['bid']."'";
	$result= mysqli_query($conn,$q) or die("query failed");
	while($row=mysqli_fetch_array($result)){
		$name=$row['brand']." ".$row['model'];
		createproduct($name,$row['image'],$row['mrp'],$row['ofp'],$row['pid']);
	}
	mysqli_close($conn);	
	
	
}

?>


<?php
contentbottom();
?>