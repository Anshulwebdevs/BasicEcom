<?php
session_start();
if(!isset($_REQUEST['pid'])||(!isset($_SESSION['id']))){
	header("Location:index.php");
}

include "includes/common.php";
top("Order");
sidebar();
contenttop();
$conn=connect();
$b=$_REQUEST['pid'];
$q1="select * from products where pid='$b'";
$result= mysqli_query($conn,$q1) or die("query failed");
$row=mysqli_fetch_array($result);
$src=$row['image'];

?>

<br><br>

<h2>Order Details</h2>
<br><br>
<img src="<?php  echo $src; ?>"  width="600"><br><br>

<form class="form" action="includes/orderb.php" method="post">
<input type="hidden" name="user_id" id="user_id">
<table>
<tr><td>
<label for="p_no">Phone Number</label>
</td><td>
<input type="text" name="p_no" id="p_no" placeholder="Enter Your Phone Number" required/>
</td></tr>
<tr><td>
<label for="address">Address</label>
</td><td>
<textarea cols="" name="address" id="address" required></textarea>
</td></tr>
<tr><td>
<input type="hidden" name="pid" id="pid" value="<?php  echo $b; ?>"/>
</td>
<td>
<input type="submit" class="subb" name="suborder" id="suborder" value="Order Now"/>
</td></tr>

</table>


</form>
<br><br><br>
<h2>Other products You may like</h2>



<?php
mysqli_close($conn);	
showproducts(6);	
contentbottom();
?>