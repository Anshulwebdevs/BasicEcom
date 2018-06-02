<?php
include "includes/common.php";
top("Contact Us");
sidebar();
contenttop();
?>

<h1>
Contact Us
</h1>
<br>
<?php
if(isset($_REQUEST['em'])){
echo "<span class=msg><h3>".$_REQUEST['em']."</h3></span>";
}
?>
<h2>Owner's Info</h2>
<div class="myinfo">

<table cellspacing=10 width="100%">

<tr><td><h3>Owner's Name</h3></td><td>Anshul</td></tr>
<tr><td><h3>Owner's Contact No.</h3></td><td>+919996833607</td></tr>
<tr><td><h3>Owner's Address</h3></td><td>H.No. 70 , Sec-B , Deffence Colony , Ambala Cantt , Haryana , India.</td></tr>
</table>

</div>
<h2>Please Share Your Comments And Views</h2>

<form class="form" action="includes/contactb.php" method="post" enctype="multipart/form-data">
<table>
<tr><td>
<label for="cname">Name</label></td><td><input type="text" name="cname" id="cname" placeholder="Enter Your Name"  required/></td></tr>
<tr><td>
<label for="cemail">Email/Ph. No. </label></td><td><input type="text" name="cemail" id="cemail" placeholder="Enter Your Email Or Phone Number" required /></td></tr>
<tr><td>
<label for="cmsg">Message</label></td><td> <textarea name="cmsg" id="cmsg" placeholder="Enter Your Message" cols="30" rows="10" required></textarea> </td></tr>

<tr><td></td>
<td><input type="submit" class="subb" name="subpro" id="subpro" value="SEND" /></td></tr>

</table>
</form>




<?php
contentbottom();
?>
