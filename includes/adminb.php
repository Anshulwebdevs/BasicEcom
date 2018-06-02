<?php
include "common.php";
//Add Brand
if(isset($_REQUEST['ab'])&&!($_REQUEST['bnamea']=="")&&!($_REQUEST['desc']=="")){
	$b=safe($_REQUEST['bnamea']);
	$desc=safe($_REQUEST['desc']);
	$r1=rand(1,9999);
	$r2=rand(1,9999);
	$r3=$r1.$r2;
	$r4=md5($r3);
	$fnm=$r4.$_FILES["bimage"]["name"];
	$dst="../bicon/".$fnm;
	$dst2="bicon/".$fnm;
	$conn=connect();
	
	$q="insert into brands (bname,bimage,description) values('$b','$dst2','$desc')";
	$result= mysqli_query($conn,$q) or die("query failed");
	move_uploaded_file($_FILES["bimage"]["tmp_name"],$dst);
	mysqli_close($conn);
	header("Location:../admin.php?em=Brand added");
	
}


//Remove brand
elseif(isset($_REQUEST['rb'])&&!($_REQUEST['bnamer']=="")){
	$b=safe($_REQUEST['bnamer']);
	
	$conn=connect();

	$q1="select * from brands where bname='$b'";
	$result= mysqli_query($conn,$q1) or die("query failed");
	$row=mysqli_fetch_array($result);
	$path="../".$row['bimage'];
	unlink($path);
	
	$q="delete from brands where bname='$b'";
	$result= mysqli_query($conn,$q) or die("query failed");
	mysqli_close($conn);
	header("Location:../admin.php?em=Brand+Removed");
	
	
}



elseif(isset($_REQUEST['subpro'])&&!($_REQUEST['model']=="")&&!($_REQUEST['ram']=="")&&!($_REQUEST['fcam']=="")&&!($_REQUEST['rcam']=="")&&!($_REQUEST['size']=="")&&!($_REQUEST['inmem']=="")&&!($_REQUEST['exmem']=="")&&!($_REQUEST['mrp']=="")&&!($_REQUEST['ofp']=="")&&!($_REQUEST['brand']=="")){
	$mod=safe($_REQUEST['model']);
	$ram=safe($_REQUEST['ram']);
	$fcam=safe($_REQUEST['fcam']);
	$rcam=safe($_REQUEST['rcam']);
	$size=safe($_REQUEST['size']);
	$im=safe($_REQUEST['inmem']);
	$em=safe($_REQUEST['exmem']);
	$mrp=safe($_REQUEST['mrp']);
	$ofp=safe($_REQUEST['ofp']);
	$brand=safe($_REQUEST['brand']);
	$r1=rand(1,9999);
	$r2=rand(1,9999);
	$r3=$r1.$r2;
	$r4=md5($r3);
	$fnm=$r4.$_FILES["image"]["name"];
	$dst="../pics/".$fnm;
	$dst2="pics/".$fnm;
	$key=$mod.",".$brand.",".$mod.$brand.",".$brand." ".$mod.",".$mod." ".$brand.",".$brand.$mod;
	$conn=connect();
	
	$q="insert into  products (model,ram,fcam,rcam,size,im,em,mrp,ofp,image,brand,keywords)  values ('$mod','$ram','$fcam','$rcam','$size','$im','$em','$mrp','$ofp','$dst2','$brand','$key')";
	$result= mysqli_query($conn,$q) or die("query failedss");
	move_uploaded_file($_FILES["image"]["tmp_name"],$dst);
	mysqli_close($conn);
	header("Location:../admin.php?em=Product+Added");
	
	
}


elseif(isset($_REQUEST['rsub'])&&!($_REQUEST['pid']=="")){
	$b=safe($_REQUEST['pid']);
	$conn=connect();
	$q1="select * from products where pid='$b'";
	$result= mysqli_query($conn,$q1) or die("query failed");
	$row=mysqli_fetch_array($result);
	$path="../".$row['image'];
	unlink($path);
	$q="delete from products where pid='$b'";
	$result= mysqli_query($conn,$q) or die("query failed");
	mysqli_close($conn);
	header("Location:../admin.php?em=Product deleted");
	
	
}


//add advt
elseif(isset($_REQUEST['advt'])&&!($_REQUEST['aname']=="")){
	$n=safe($_REQUEST['aname']);
	$r1=rand(1,9999);
	$r2=rand(1,9999);
	$r3=$r1.$r2;
	$r4=md5($r3);
	$fnm=$r4.$_FILES["advtimage"]["name"];
	$dst="../pics/".$fnm;
	$dst2="pics/".$fnm;
	
	$conn=connect();
	
	$q="insert into advt (pname,pimage) values ('$n','$dst2')";
	$result= mysqli_query($conn,$q) or die("query failed");
	move_uploaded_file($_FILES["advtimage"]["tmp_name"],$dst);
	mysqli_close($conn);
	header("Location:../admin.php?em=Advt Added");
	
	
}


//remove advt
elseif(isset($_REQUEST['advtr'])&&!($_REQUEST['aname']=="")){
	$n=safe($_REQUEST['aname']);
	$conn=connect();
	
	$q="delete from advt where pname='$n'";
	$result= mysqli_query($conn,$q) or die("query failed");
	move_uploaded_file($_FILES["image"]["tmp_name"],$dst);
	mysqli_close($conn);
	header("Location:../admin.php?em=Advt Removed");
	
	
}
else{
header("Location:../index.php");
}
?>