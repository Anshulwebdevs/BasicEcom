<?php
include "includes/common.php";
top("welcome");
sidebar();
contenttop();
?>

<h2>We Have All The Top Brands</h2>
<br><br>
<?php
$conn=connect();
	
	$q="Select * from brands";
	$result= mysqli_query($conn,$q) or die("query failed");
	while($row=mysqli_fetch_array($result)){
?>
		<span class=msg><h3><?php echo $row['bname']; ?></h3></span>
		<table><tr><td>
		<img src="<?php echo $row['bimage']; ?>" alt="<?php echo $row['bname']; ?>" width=300 align="left" style="margin:20px;" /></td>
		<td>
		<p style="padding:20px;text-align:left;"><?php echo $row['description']; ?></p></td>
		</tr>
		
		</table>
		<?php
	}
	mysqli_close($conn);




contentbottom();
?>