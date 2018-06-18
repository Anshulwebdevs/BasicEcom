<?php
@session_start();
include "connect.php";
error_reporting(0);
function top($n){
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title><?php echo $n; ?></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="css/style.css" rel="stylesheet"/>
<link href="css/forms.css" rel="stylesheet"/>

</head>
<body>
<div id="head">

<a href="contact.php">Contact Us</a>
<?php 
if(!isset($_SESSION['id'])){ 
echo "<a href=\"login.php\">Log in</a>";
}
else{
echo "<a href=\"logout.php\">Logout</a>";
}
?><a href="index.php">Home</a>
<span id="logo">iMobo.com</span>
</div>
<div align="center">
<div id="wrapper">
<?php
}

function sidebar(){
?>	
<div id="sidebar">
<h2>Avialable Products</h2>

<?php
$conn=connect();
	
	$q="Select * from brands";
	$result= mysqli_query($conn,$q) or die("query failed");
	while($row=mysqli_fetch_array($result)){
		echo "<a href=\"search.php?bid=",$row['bname'],"\">",$row['bname'],"</a>";
	}
	mysqli_close($conn);

?>





<h2 style="margin-top:50px;">Coming Soon</h2>
<div class="advt" >
<marquee height="300px" direction="down" scrollamount="5">
<table>
<?php
$conn=connect();
	$q="Select * from advt order by rand()";
	$result= mysqli_query($conn,$q) or die("query failed");
	while($row=mysqli_fetch_array($result)){
		$n=$row['pname'];
		$img=$row['pimage'];

?>


<tr>
<td>
<img src="<?php echo $img; ?>">
</td>
</tr>

<tr>
<td>
<?php echo $n; ?>
</td>
</tr>

<?php
}
mysqli_close($conn);
?>
</table>
</marquee>
</div>









</div>
<?php
}

function contenttop(){
?>
<div id="content">
<form id="search" action="search.php" method="post">
<input type="text" id="searcht" name="searcht"  placeholder="Search" required />
<input type="submit" id="searchb" value="Search" name="searchb" />
</form>

<?php
showuser();
}

function contentbottom(){
?>
</div>
<?php rightdiv(); ?>
</div>
</div>
<div id="footer">
<table>
<tr><td><h2>TOP BRANDS</h2></td><td><h2>INFORMATION</h2></td><td><h2>OUR OFFERS</h2></td><td><h2>SOCIAL MEDIA</h2></td></tr>
<tr><td><a href="search.php?bid=HTC" >HTC</a></td><td><a href="contact.php" >CONTACT</a></td><td><a href="index.php" >NEW PRODUCTS</a></td>
<td rowspan=5 id="footicon">
<a href="http://www.facebook.com"><img src="img/facebook.png" width="60px"></a>
<a href="http://www.twitter.com"><img src="img/twitter.png" width="60px"></a>
<a href="http://www.youtube.com"><img src="img/youtube.png" width="60px"></a><a href="#content">Back to top</a>

</td></tr>
<tr><td><a href="Search.php?bid=MICROMAX" >MICROMAX </a></td><td><a href="login.php" >REGISTRATION</a></td><td><a href="index.php?em=Our+Top+Sellers+are" >TOP SELLER</a></td></tr>
<tr><td><a href="Search.php?bid=SAMSUNG" >SAMSUNG</a></td><td><a href="login.php" >LOGIN</a></td><td><a href="index.php?em=Special+offer+only+for+you+are" >SPECIAL OFFERS</a></td></tr>
<tr><td><a href="Search.php?bid=GIONEE" >GIONEE</a></td><td></td><td><a href="brands.php" >MANUFACTURERS</a></td></tr>
<tr><td><a href="Search.php?bid=APPLE" >APPLE</a></td><td></td><td></td></tr>
</table>

</div>
</body>
</html>
<?php
}

function createproduct($name,$src,$mrp,$sp,$pid){
?>	
<div class="product">

<img src="<?php echo $src; ?>" width=250 height=300>
<a href="prodes.php?pid=<?php echo $pid; ?>" class="forder">Know More</a>
<div class="pname"><?php echo $name; ?></div>
<table><tr><td><span class="ofpp">Special Price<br/>Rs.<?php echo $sp; ?></span></td><td><span class="mrpp">Market Price<br/>Rs.<?php echo $mrp; ?></span><td></tr></table>

</div>
<?php
}


function rightdiv(){
	?>
<div id="rightdiv">
<h2>Follow Us On</h2>
<table width="100%">
<tr>
<td><a href="http://www.facebook.com"><img src="img/facebook.png" width="100px"/></td>
</tr><tr>
<td><a href="http://www.twitter.com"><img src="img/twitter.png" width="100px"/></td></tr><tr>
<td><a href="http://www.youtube.com"><img src="img/youtube.png" width="100px"/></td>
</tr>
</table>
<h2>Coming Soon</h2>
<div class="advt">
<marquee height="300px" direction="up" scrollamount="5">
<table>
<?php
$conn=connect();
	$q="Select * from advt order by rand()";
	$result= mysqli_query($conn,$q) or die("query failed");
	while($row=mysqli_fetch_array($result)){
		$n=$row['pname'];
		$img=$row['pimage'];

?>


<tr>
<td>
<img src="<?php echo $img; ?>">
</td>
</tr>

<tr>
<td>
<?php echo $n; ?>
</td>
</tr>

<?php
}
mysqli_close($conn);
?>
</table>
</marquee>
</div>


</div>	
	<?php
}


function safe($string){
	$str=htmlentities($string,ENT_QUOTES);
	return $str;
}


function brandoption(){
	$conn= connect();
	
	$q="Select * from brands";
	$result= mysqli_query($conn,$q) or die("query failed");
	while($row=mysqli_fetch_array($result)){
		echo "<option value=\"",$row['bname'],"\">",$row['bname'],"</option>";
	}
	mysqli_close($conn);	
}

function connect(){
	$conn= mysqli_connect(HOST, USER, PASSWORD, DB) or die("cannot connect");
	return $conn;
}

function showuser(){
	if(isset($_SESSION['id'])){
?>
<div class="user">
<h1> Hi, <?php echo $_SESSION['name']; ?> </h1>

</div>
<?php
}
else{
	echo "<h1>
Welcome
</h1>";
	
}
}
function showproducts($num){
		$conn=connect();
	
	$q="Select * from products order by rand() limit 0,".$num;
	$result= mysqli_query($conn,$q) or die("query failed");
	while($row=mysqli_fetch_array($result)){
		$name=$row['brand']." ".$row['model'];
		createproduct($name,$row['image'],$row['mrp'],$row['ofp'],$row['pid']);
	}
	mysqli_close($conn);
}
	
