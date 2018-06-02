<?php
session_start();
if(isset($_SESSION['id'])){
	header("Location:index.php");
}

include "includes/common.php";
top("Login");
sidebar();
contenttop();
if(isset($_REQUEST['em'])){
echo "<span class=msg><h3>".$_REQUEST['em']."</h3></span>";
}
?>

<h1>
Account Manager
</h1>

<br><br>
<br><br>
<hr size="5">
<h2>Log in</h2>
<br>
<form class="form" action="includes/loginb.php" method="post">
<table>
<tr>
<td>
<label for="lph">Phone No.</label>
</td>
<td>
<input type="text" name="lph" id="lph" placeholder="Enter Your Phone Number" required/>
</td>
</tr>
<tr>
<td>
<label for="lpassword">Password</label>
</td>
<td>
<input type="password" name="lpassword" id="lpassword" placeholder="Enter Your password" required/>
</td>
</tr>
<tr>
<td></td>
<td>

<?php
if(isset($_REQUEST['pid'])){
	?>
<input type="hidden" name="pid" id="pid" value="<?php  echo $_REQUEST['pid'] ; ?>"/>
<?php
}
?>


<input type="submit" class="subb" name="login" id="login" value="Log Me In"/>
</td>
</tr>
</table>
</form>
<br><br><br>
<h2>Not a user! Please Register Below</h2> 

<form class="form" action="includes/loginb.php" method="post">
<table>
<tr>
<td>
<label for="rusername">Username</label>
</td>
<td>
<input type="text" name="rusername" id="rusername" placeholder="Enter Your Username" required/>
</td>
</tr>
<tr>
<td>
<label for="pno">Phone No.</label>
</td>
<td>
<input type="text" name="pno" id="pno" placeholder="Enter Your Phone Number" required/>
</td>
</tr>
<tr>
<td>
<label for="rpassword">Password</label>
</td>
<td>
<input type="password" name="rpassword" id="rpassword" placeholder="Enter Your password" required/>
</td>
</tr>
<tr>
<td>
<label for="rpassword2">Password Again</label>
</td>
<td>
<input type="password" name="rpassword2" id="rpassword2" placeholder="Enter Your password again" required/>
</td>
</tr>
<tr>
<td>     
<?php
if(isset($_REQUEST['pid'])){
	?>
<input type="hidden" name="pid" id="pid" value="<?php  echo $_REQUEST['pid'] ; ?>"/>
<?php
}
?>
 </td>
<td>
<input type="submit" class="subb" name="reg" id="reg" value="Register Me"/>
</td>
</tr>
</table>
</form>
<br><br>

<h2>New Products</h2>




<?php
showproducts(6);	
contentbottom();
?>