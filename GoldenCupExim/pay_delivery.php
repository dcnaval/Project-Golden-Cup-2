<?php
include('admin/connect.php');
include('session.php');

$get_id=$_GET['id'];


			
						function createRandomPassword() {
					$chars = "abcdefghijkmnopqrstuvwxyz023456789";
					srand((double)microtime()*1000000);
					$i = 0;
					$pass = '' ;
					while ($i <= 7) {
						$num = rand() % 33;
						$tmp = substr($chars, $num, 1);
						$pass = $pass . $tmp;
						$i++;
					}
					return $pass;
				}
				$confirmation = createRandomPassword();
						

mysql_query("update order_details set modeofpayment='COD', date=curdate() where MemberID='$get_id'")or die(mysql_error());




?>

<?php include('header.php'); ?>

<body>
    <?php
    include('navtop.php');
    ?>
    <div id="background">
  

        <div id="page">
            <div id="sidebar">
                <a href="#" class="logo"><img src="images/gc-logo.png" alt="logo" width="227" height="71"></a>
                <ul>
                    <li>
                        <span><a href="user_index.php"><i class="icon-home icon-large"></i>Home</a></span>
                    </li>
                    <li>
                        <span><a href="user_canon.php"><i class=" icon-th-large icon-large"></i>Products</a></span>
                    </li>

                    <li>
                        <span><a href="user_about.php"><i class="icon-info-sign icon-large"></i>&nbsp;About US</a></span>
                    </li>

                    <li>
                        <span><a href="user_contact.php"><i class="icon-phone-sign icon-large"></i>Contact US</a></span>
                    </li>


                </ul>
                
                
            </div>
            <div id="content">
                <div class="hero-unit-table">
                    <div id="header">
                        

                    </div>
                    <div id="body">
                        <h4>Your order has been successfully sent!</h4>
                        <div class="hero-unit-table">

					
                          
                            
                            <?php include('print.php') ?>

							
					
          
						
					
                           
                    </div>
                    </div>
                    <div id="footer">
<?php include('footer_user.php'); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php include('footer_bottom.php'); ?>
</body>
</html>



						
                               