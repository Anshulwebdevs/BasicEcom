<?php
include "includes/common.php";
top("Admin Page");
sidebar();
contenttop();


?>

<h1>Admin Page</h1>
<?php
if(isset($_REQUEST['em'])){
echo "<span class=msg><h3>".$_REQUEST['em']."</h3></span>";
}
?>

<br>
<br>
<h2>Add Product</h2>
<form class="form" action="includes/adminb.php" method="post" enctype="multipart/form-data">
<table>
<tr><td>
<label for="model">Model</label></td><td><input type="text" name="model" id="model" placeholder="Enter Mobile Model" required /></td></tr>
<tr><td>
<label for="ram">RAM</label></td><td><input type="text" name="ram" id="ram" placeholder="Enter Amount Of RAM" required /></td></tr>
<tr><td>
<label for="fcam">Front Camera</label></td><td><input type="text" name="fcam" id="fcam" placeholder="Enter Front Camera Quality" required /></td></tr>
<tr><td>
<label for="rcam">Rear Camera</label></td><td><input type="text" name="rcam" id="rcam" placeholder="Enter Rear Camera Quality" required /></td></tr>
<tr><td>
<label for="size">Screen Size</label></td><td><input type="text" name="size" id="size" placeholder="Enter Screen Size" required /></td></tr>
<tr><td>
<label for="inmem">Internal Memory</label></td><td><input type="text" name="inmem" id="inmem" placeholder="Enter Internal Memory" required /></td></tr>
<tr><td>
<label for="exmem">Expandable Memory</label></td><td><input type="text" name="exmem" id="exmem" placeholder="Enter Expandable Memory" required/></td></tr>
<tr><td>
<label for="mrp">M.R.P.</label></td><td><input type="text" name="mrp" id="mrp" placeholder="Enter MRP"  required/></td></tr>
<tr><td>
<label for="image">Image</label></td><td><input  type="file" name="image" id="image" /></td></tr>
<tr><td>
<label for="ofp">Offer Price</label></td><td><input type="text" name="ofp" id="ofp" placeholder="Enter Offer Price" required /></td></tr>
<tr><td>
<label>Brand</label></td><td>
<select name="brand">
<?php brandoption(); ?>
</select>

</td></tr>
<tr><td></td>
<td><input type="submit" class="subb" name="subpro" id="subpro" value="Add Product" /></td></tr>

</table>
</form>
<br><br>
<h2>Remove Product</h2>
<form class="form" action="includes/adminb.php" method="post">
<table>
<tr><td>
<label for="p_id">Product Id</label></td><td><input type="text" name="pid" id="pid" placeholder="Enter Product Id" required /></td></tr>
<tr><td>
</td><td><input type="submit" class="subb" name="rsub" id="rsub" value="Remove Product"  /></td></tr>
</table>
</form>


<br><br>
<h2>Add Brand</h2>
<form class="form" action="includes/adminb.php" method="post"   enctype="multipart/form-data">
<table>
<tr><td>
<label for="bnamea">Brand Name</label></td><td><input type="text" name="bnamea" id="bnamea" placeholder="Enter Brand name" required /></td></tr>
<tr><td>
<label for="bimage">Brand Icon</label></td><td><input  type="file" name="bimage" id="bimage" /></td></tr>
<tr><td>
<label for="desc">Description</label></td><td><textarea name="desc" id="desc" placeholder="Enter Description" required></textarea></td></tr>
<tr><td>
</td><td><input type="submit" class="subb" name="ab" id="ab" value="Add Brand" /></td></tr>
</table>
</form>


<br><br>
<h2>Remove Brand</h2>
<form class="form" action="includes/adminb.php" method="post">
<table>
<tr><td>
<label for="bnamer">Brand name</label></td><td><input type="text" name="bnamer" id="bnamer" placeholder="Enter Brand name" required /></td></tr>
<tr><td>
</td><td><input type="submit" class="subb" name="rb" id="rb" value="Remove Brand" /></td></tr>
</table>
</form>

<br><br>
<h2>Add Advt</h2>
<form class="form" action="includes/adminb.php" method="post"  enctype="multipart/form-data">
<table>
<tr><td>
<label for="aname">Name</label></td><td><input type="text" name="aname" id="aname" placeholder="Name"  required/></td></tr>
<tr><td>
<label for="advtimage">Image</label></td><td><input  type="file" name="advtimage" id="image" /></td></tr>

<tr><td>
</td><td><input type="submit" class="subb" name="advt" id="advt" value="Add advt" /></td></tr>
</table>
</form>

<br><br>
<h2>Remove Advt</h2>
<form class="form" action="includes/adminb.php" method="post">
<table>
<tr><td>
<label for="aname">Name</label></td><td><input type="text" name="aname" id="aname" placeholder="Name" required /></td></tr>
<tr><td>
</td><td><input type="submit" class="subb" name="advtr" id="advtr" value="Remove advt" /></td></tr>
</table>
</form>
<?php
contentbottom();
?>
