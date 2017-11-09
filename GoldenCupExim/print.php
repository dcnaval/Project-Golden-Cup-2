<?php include 'admin/connect.php'; ?>
<?php include('session.php'); ?>
<script language="javascript">
function Clickheretoprint()
{ 
  var disp_setting="toolbar=yes,location=no,directories=yes,menubar=yes,"; 
      disp_setting+="scrollbars=yes,widtd=900, height=400, left=100, top=25"; 
  var content_vlue = document.getElementById("print_content").innerHTML; 
  
  var docprint=window.open("","",disp_setting); 
   docprint.document.open(); 
   docprint.document.write('<html><head><title>List of Passer</title>'); 
   docprint.document.write('</head><body onLoad="self.print()" style="widtd: 900px; font-size:16px; font-family:arial;">');          
   docprint.document.write(content_vlue);          
   docprint.document.write('</body></html>'); 
   docprint.document.close(); 
   docprint.focus(); 
}
</script>
<style>
#print_content{
width:700px;
margin:0 auto;
}
</style>
<h4><a href="javascript:Clickheretoprint()">PRINT NOW!</a></h4>
<div id="print_content">
  <p><a href="#"><img src="images/gc-logo.png" width="205" height="49" style="float:left;"></a><br>
    2437 Tejeron Street (Revillen Corner), <br>
  Sta. Ana, Manila City Tel: 562-4566 / 564-0466</p>
  <p><br>
  
  
    
    
      <?php
                $user_query = mysql_query("select * from tb_member where memberID='$ses_id'") or die(mysql_error());
                $row = mysql_fetch_array($user_query);
                echo("Name: ");
				
				echo $row['Firstname'] . " " . $row['Lastname']; 
				
                ?>
                <br>
                   <?php
                $user_query = mysql_query("select * from tb_member where memberID='$ses_id'") or die(mysql_error());
                $row = mysql_fetch_array($user_query);
                echo("Address: ");
				
				
				echo $row['address'];
                ?>
                <br>
                Date:  <?php
                $Today = date('y:m:d');
                $new = date('l, F d, Y', strtotime($Today));
                echo $new;
                ?>
                <br>
                
                <div id="page">
            
            <div id="content">
                <div class="hero-unit-table">
                    <div id="header">
                      

                    </div>
                    <div id="body">
                        <h5>Order Details</h5>
                        

                            <table>
                            <table border="1">

                                <thead>
                                    <tr>
                                    <th> Order ID </th>
                                        <th>Product Name</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Amount</th>
                                       
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $cart_table = mysql_query("select  * from order_details where memberID='$ses_id' and status='Pending'") or die(mysql_error());
                                    $cart_count = mysql_num_rows($cart_table);
                                    while ($cart_row = mysql_fetch_array($cart_table)) {
                                        $order_id = $cart_row['orderid'];
                                        $product_id = $cart_row['productID'];
                                        $product_query = mysql_query("select * from tb_products where productID='$product_id'") or die(mysql_error());
                                        $product_row = mysql_fetch_array($product_query);
                                        ?>

                                        <tr>
                                        <td> <?php echo $cart_row['orderid']; ?> </td>
                                            <td><?php echo $product_row['name']; ?></td>
                                            <td><?php echo $cart_row['price']; ?></td>
                                            <td><?php echo $cart_row['qty']; ?></td>
                                            <td><?php echo $cart_row['total']; ?></td>
                                            
                                        </tr>
                                        <!-- product delete modal -->
                             

                                <?php } ?>

                                </tbody>
                            </table>




                        </div>

                        <?php
                        if ($cart_count != 0) {
                            $result = mysql_query("SELECT sum(total) FROM order_details WHERE memberID='$ses_id' and status = 'Pending'") or die(mysql_error());
                            while ($rows = mysql_fetch_array($result)) {
                                ?>
                                
                                    <div class="span"><div class="alert alert-success"><i class="icon-credit-card icon-large"></i>&nbsp;Total:&nbsp;<?php echo $rows['sum(total)']; ?></div></div>
                                </div>
                            <?php }
                            ?>
                            <?php
                        }
                        ?>
                    

                       
                        <!-- end delete modal -->
                        


                    </div>
                
                
                
                
                                                         
</p>
</div>


                        

                                   
                                
                                        
                                          

                                                              
                

