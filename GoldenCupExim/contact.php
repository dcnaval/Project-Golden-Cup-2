<?php include('header.php'); ?>
<body>
    <?php
    include('navtop.php');
    ?>
    <div id="background">
	
        <div id="page">
             <?php include ('nav_sidebar.php');?>
            <div id="content">
                <div class="hero-unit-table">
                    <div id="header">
                     

                    </div>
                    <div id="body">
                        <h3>Contact Us</h3>
						
                        <hr>
					<div class = "panel panel-well span6 alert alert-success">	
                        <form method = "POST" >
                            <label for="name"><span>name</span>
                                <input type="text" name="name" id="name">
                            </label>
                            <label for="email2"><span>email</span>
                                <input type="text" name="Email" id="email2">
                            </label>
                            <label for="message"><span>message</span>
                                <textarea id="message" style = "resize:none;" name = "message" cols="30" rows="10"></textarea>
                            </label>
                            
                            <button   class="btn btn-success" name = "submit" ><i class="icon-envelope icon-large"></i>&nbsp;Submit</button>
							
                        </form>
						</div>
						<?php include ('admin/connect.php');
						
						if (isset ($_POST ['submit']))
						
						{
							$name = $_POST['name'];	
							$Email = $_POST['Email'];
							$message = $_POST['message'];
						
						
										mysql_query("insert into messages(name,Email,message) VALUES('$name','$Email','$message')");
									
									echo "<script>
										alert('Your Messages Successfully Sent');
										header ('location :../index.php');
									</script>";
									 }


									 ?>		
						
						
                    </div>
                    Location Map <br>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15444.981140441666!2d120.98965322003604!3d14.585094336996038!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c9bd6380f1ad%3A0xefa2d8ef6519ec6b!2sGolden+Cup!5e0!3m2!1sen!2sph!4v1507109938462" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    
                    <div id="footer">
                        <?php include('footer.php'); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php
    include('footer_bottom.php');
    ?>
</body>
</html>