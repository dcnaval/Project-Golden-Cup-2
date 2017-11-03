<?php
include('admin/connect.php');
include('header.php');

?>
<body>
    <?php
    include('navtop.php');
    ?>
   
        <div id="page">

          <?php include ('nav_sidebar2.php');?>

            <div id="content">
                <div class="hero-unit-table">                        <!-- image slider -->
                    <div class="slider-wrapper theme-default">

                          <div id="slider" class="nivoSlider">
                           
                            
                            
                            <img src="admin/images/slider-1.jpg" data-thumb="images/toystory.jpg" alt="" />
                            <img src="admin/images/slider-3.jpg" data-thumb="images/toystory.jpg" alt="" />
                            <img src="admin/images/slider-4.jpg" data-thumb="images/wineries.jpg" alt="" />
                            <img src="admin/images/slider-1.jpg"  alt="" data-transition="slideInLeft" />
                            
                            
                            
                        </div>

                        <div id="htmlcaption" class="nivo-html-caption">
                            <strong>This</strong> is an example of a <em>HTML</em> caption with <a href="#">a link</a>. 
                        </div>
                    </div>
                    <!-- end slider -->

                    <div id="body">

                        <div class="body">
                            <ul>
                                 <li>
								
                                    <a class="figure" href="#pic1" data-toggle = "modal"><img class = "image-rounded"src="pics/Ricoh-Aficio-1015-or-2015-Platen-199x300.png" alt=""></a>
                                </li>
                                <li>
                                    <a class="figure" href="#pic2" data-toggle = "modal" ><img class = "image-rounded"src="pics/Konica-Bizhub-350-209x300.png" alt=""></a>

                                </li>
                                <li>
                                    <a class="figure" href="#pic3" data-toggle = "modal" ><img class = "image-rounded" src="pics/Canon-IR-3035-199x300.png" alt=""></a>

                                </li>
                                <li>
                                    <a class="figure"  href="#pic4" data-toggle = "modal" ><img class="img-rounded" src="pics/Kyocera-Mita-2030-199x300.png" alt=""></a>         
                                </li>

                            </ul>	
                            
                             
                        </div>

                    </div>
                    <div id="footer">
                        <?php include('footer_user.php'); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>