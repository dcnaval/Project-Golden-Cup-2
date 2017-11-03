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








                        <h3>About US</h3>
                        <div class="hero-unit-table">

							<div id="accordion">
										<h3>About The Company</h3>
										<div>Golden Cup is an established company formed since 1987 with years of experience in sales, rentals and services of reconditioned and brand new copier machines.  Our aim is “to provide efficient and affordable copier machines” to customers. Golden Cup is the company you can count on.

Our core business is the reconditioning, sales and services of copier machines which are imported and only good quality machines are selected. A very stringent quality control process is enforced to ensure the best quality end product.

All fully reconditioned copiers come with a “quality checklist” approved by our senior technical consultant before sending to clients. Hence, you are assured of getting a top quality copier machine from Golden Cup.

At Golden Cup, our top priority is to provide prompt and effective service to keep customers happy and satisfied.
  </div>
										<h3>Mission</h3>
										<div>Mission</div>
										<h3>Vision</h3>
										<div>Vision.</div>
										<h3>About the Developer</h3>
										<div>Golden Cup Group MSCPROJ2</div>
							</div>
                        </div>
                    </div>
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
		<script src="external/jquery/jquery.js"></script>
<script src="jquery-ui.js"></script>
<script>

$( "#accordion" ).accordion();



var availableTags = [
	"ActionScript",
	"AppleScript",
	"Asp",
	"BASIC",
	"C",
	"C++",
	"Clojure",
	"COBOL",
	"ColdFusion",
	"Erlang",
	"Fortran",
	"Groovy",
	"Haskell",
	"Java",
	"JavaScript",
	"Lisp",
	"Perl",
	"PHP",
	"Python",
	"Ruby",
	"Scala",
	"Scheme"
];
$( "#autocomplete" ).autocomplete({
	source: availableTags
});



$( "#button" ).button();
$( "#radioset" ).buttonset();



$( "#tabs" ).tabs();



$( "#dialog" ).dialog({
	autoOpen: false,
	width: 400,
	buttons: [
		{
			text: "Ok",
			click: function() {
				$( this ).dialog( "close" );
			}
		},
		{
			text: "Cancel",
			click: function() {
				$( this ).dialog( "close" );
			}
		}
	]
});

// Link to open the dialog
$( "#dialog-link" ).click(function( event ) {
	$( "#dialog" ).dialog( "open" );
	event.preventDefault();
});



$( "#datepicker" ).datepicker({
	inline: true
});



$( "#slider" ).slider({
	range: true,
	values: [ 17, 67 ]
});



$( "#progressbar" ).progressbar({
	value: 20
});



$( "#spinner" ).spinner();



$( "#menu" ).menu();



$( "#tooltip" ).tooltip();



$( "#selectmenu" ).selectmenu();


// Hover states on the static widgets
$( "#dialog-link, #icons li" ).hover(
	function() {
		$( this ).addClass( "ui-state-hover" );
	},
	function() {
		$( this ).removeClass( "ui-state-hover" );
	}
);
</script>
</body>
</html>