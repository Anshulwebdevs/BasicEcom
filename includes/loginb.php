<?php
session_start();
include "common.php";
if(isset($_REQUEST['reg'])){
		$ph=safe($_REQUEST['pno']);
		$name=safe($_REQUEST['rusername']);
		$p1=$_REQUEST['rpassword'];
		$p2=$_REQUEST['rpassword2'];
		if($p1==$p2){
			$p1=md5($p1);
			$conn=connect();
			$q="insert users value('$ph','$name','$p1')";
			$result= mysqli_query($conn,$q) or die("Phone number already exists");
			mysqli_close();
					$l="Location:../login.php?em=Account+created";
				if(isset($_REQUEST['pid'])){
				$l="Location:../login.php?em=Account+created&pid=".$_REQUEST['pid'];
				}
				header($l);
		}else{
			$l="Location:../login.php?em=Password+does+no+match";
		if(isset($_REQUEST['pid'])){
		$l="Location:../login.php?em=Password+does+no+match&pid=".$_REQUEST['pid'];
		}
		header($l);
		}
}

elseif(isset($_REQUEST['login'])){
		$ph=safe($_REQUEST['lph']);
		$p=$_REQUEST['lpassword'];
		$p=md5($p);
		$conn=connect();
		$q="select * from users where pno='$ph' and password='$p'";
		$result= mysqli_query($conn,$q) or die("query failed");

		mysqli_close();

		if(mysqli_num_rows($result)==1){
			$row=mysqli_fetch_array($result);
			$_SESSION['id']=$row['pno'];
			$_SESSION['name']=$row['name'];
			$loc;
			if(!(isset($_REQUEST['pid']))){
				global $loc;
				$loc="Location:../index.php";
			}
			else{
				global $loc;
				$loc="Location:../prodes.php?pid=".$_REQUEST['pid'];
			}
				
		header($loc);
		}
		else{
			$l="Location:../login.php?em=Wrong+Password";
			if(isset($_REQUEST['pid']))
			{
				$l.="&pid=".$_REQUEST['pid'];
			}
		header($l);
		}
}else{
	header("Location:../index.php");
}


?>