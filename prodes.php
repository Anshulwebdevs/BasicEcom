<?php
session_start();
if(!isset($_REQUEST['pid'])){
	header("Location:index.php");
}
elseif(!isset($_SESSION['id'])){
	header("Location:login.php?em=Please+Log+in+First&pid=".$_REQUEST['pid']);
	
}
include "includes/common.php";
top("Product Description");
sidebar();
contenttop();
$conn=connect();
$b=$_REQUEST['pid'];
$q1="select * from products where pid='$b'";
$result= mysqli_query($conn,$q1) or die("query failed");
$row=mysqli_fetch_array($result);
$name=$row['brand']." ".$row['model'];
$ram=$row['ram'];
$fcam=$row['fcam'];
$rcam=$row['rcam'];
$size=$row['size'];
$im=$row['im'];
$em=$row['em'];
$ofp=$row['ofp'];
$image=$row['image'];

?>

<br><br>
<h2>Description for <?php echo $name; ?></h2>
<br><br>
<div class="desimg">
<img src="<?php echo $image; ?>" width=600>
</div>
<br><br><br>
<div class="desc">
<table>
<tr><td>
<p class="dest">Name</p>
</td><td>
<p class="desb"><?php echo $name; ?></p>
</td></tr>

<tr><td>
<p class="dest">RAM</p>
</td><td>
<p class="desb"><?php echo $ram; ?></p>
</td></tr>

<tr><td>
<p class="dest">Front Camera</p>
</td><td>
<p class="desb"><?php echo $fcam; ?></p>
</td></tr>

<tr><td>
<p class="dest">Rearm Camera</p>
</td><td>
<p class="desb"><?php echo $rcam; ?></p>
</td></tr>

<tr><td>
<p class="dest">Screen size</p>
</td><td>
<p class="desb"><?php echo $size; ?></p>
</td></tr>

<tr><td>
<p class="dest">Internal memory</p>
</td><td>
<p class="desb"><?php echo $im; ?></p>
</td></tr>

<tr><td>
<p class="dest">Expandable memory</p>
</td><td>
<p class="desb"><?php echo $em; ?></p>
</td></tr>

<tr><td>
<p class="dest">Price</p>
</td><td>
<p class="desb"><?php echo $ofp; ?></p>

</td></tr>
</table>
<a class="order" href="order.php?pid=<?php echo $_REQUEST['pid']; ?>"> Order now</a>
</div>
<br><br><br><br>
<h2>Other Products you may like...</h2>









<?php
showproducts(6);	
	
?>

<?php
mysqli_close($conn);
contentbottom();
?>