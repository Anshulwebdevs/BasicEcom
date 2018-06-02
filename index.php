<?php
include "includes/common.php";
top("welcome");
sidebar();
contenttop();
if(isset($_REQUEST['em'])){
echo "<span class=msg><h3>".$_REQUEST['em']."</h3></span>";
}
?>


<h2> New Products</h2>


<?php
showproducts(6);	
	
?>

<h2>Our Best Sellers</h2>

<?php
showproducts(6);	
?>




<?php
contentbottom();
?>