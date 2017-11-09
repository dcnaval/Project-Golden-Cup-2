<?php include('session.php'); ?>
<?php include 'admin/connect.php'; ?>
<script type="text/javascript">
function validateForm()
{
var x=document.forms["form1"]["fname"].value;
if (x==null || x=="")
  {
  alert("Enter Firstname");
  return false;
  }
  var y=document.forms["form1"]["lname"].value;
if (y==null || y=="")
  {
  alert("Enter Lastname");
  return false;
  }
  var z=document.forms["form1"]["cnum"].value;
if (z==null || z=="")
  {
  alert("Enter Contact Number");
  return false;
  }
  var a=document.forms["form1"]["email"].value;
if (a==null || a=="")
  {
  alert("Enter Email Address");
  return false;
  }
    var b=document.forms["form1"]["paddress"].value;
if (b==null || b=="")
  {
  alert("Enter Address");
  return false;
  }
    var c=document.forms["form1"]["city"].value;
if (c==null || c=="")
  {
  alert("Enter City");
  return false;
  }
    var d=document.forms["form1"]["daddress"].value;
if (d==null || d=="")
  {
  alert("Enter Delivery Address");
  return false;
  }
  var con = confirm("Are You Sure? you want to proceed?");
if (con ==false)
{
return false;
}
}
</script>

<script type="text/javascript" src="tcal.js"></script> 
<div id="stylized" class="myform">
</div> 

<?php $cart_table = mysql_query("select  * from order_details where memberID='$ses_id' and status='Pending'") or die(mysql_error()); ?>

<form method="post" action="print.php" name="form1" ">

<h2>Personal Information form</h2>

<label>First Name

</label>
<input type="text" name="fname" id="name" />

<label>Last Name

</label>
<input type="text" name="lname" id="name" />

<label>Contact No.

</label>
<input type="text" name="cnum" id="name" />

<label>Email

</label>
<input type="text" name="email" id="email" />

<label>Address

</label>
<input type="text" name="paddress" id="name" />
<label>City

</label>
<input type="text" name="city" id="name" />

<label>Delivery Addres

</label>
<input type="text" name="daddress" id="name" />
<input type="submit" value="Confirm" style="margin-left: 150px;">
<div class="spacer"></div>

</form>
</div>