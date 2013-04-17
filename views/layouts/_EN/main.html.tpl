<!doctype html> <!-- set the doctype to HTML 5, newest version -->
<html>
	<head>
		<title>Sourjelly.net</title> <!-- The title of your personal website. -->
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" > <!-- The charset of the website. (making it possible to use letters and special characters) -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- Include stlesheets -->
		<link rel="stylesheet" href="{assets}css/bootstrap.min.css"> <!-- The main bootstrap layout. -->
		<link rel="stylesheet/less" href="{assets}css/theme.less"> <!-- The path to one's custom theme. -->
		<link rel="stylesheet" href="{assets}css/custom.css"> <!-- custom css rules that overwrite the custom theme and the base layout. -->
		<link rel="stylesheet" href="{assets}css/bootstrap-responsive.min.css"> <!-- The responsive design for cross platform browsing. -->

		<!-- Include Javascript files -->
		<script type="text/javascript" src="{assets}js/jquery.js"></script> <!-- Require Jquery.js making it possible to run other jquery files. -->
		<script type="text/javascript"> less = { rootpath: "{assets}css/" }; </script> <!-- Set the root path of the themes. -->
		<script type="text/javascript" src="{assets}js/less.js"></script> <!-- Include the less compiler to compile less to css. -->
		<script type="text/javascript" src="{assets}js/bootstrap.min.js"></script> <!-- Include the twitter bootstrap js for executing bootstrap actions. -->
		<script>
		    $(document).ready(function() {
                 $('#slideleftdiv button').click(function() {
                    var $lefty = $(this).next();
                    $lefty.animate({
                      left: parseInt($lefty.css('left'),10) == 100 ?
                        -$lefty.outerWidth() :
                        100
                    });
                  });
                });
            // the div that folds open
              $(document).ready(function(){
                $('#showdiv').click(function() {
                  $('.dropdowndiv').slideToggle(500, function() {
                    // Animation complete.
                  });
                });
              });
              $('#showdiv').tooltip();
              $('#admin-int').tooltip();</script>

	</head>
	<body>
		<div id="container">
			<!-- Navigation settings / responsive design, collapses menu on smaller screens and makes them easily accessable for mobile devices. -->
			<nav>
				<div class="navbar navbar-fixed-top" >
					<div class="container navbar-custom"> <!-- Give a padding-left to the navbar so it won't leave the screen on the left. -->
						 <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</a>

						<a class="brand" href="{base}" title="Brand" style="margin-left:5px">Sourjelly</a> <!-- The title of your webpage that links to the home page of your website. -->

						<!-- div that contains all the menu items build dynamically. -->
						<div class="nav-collapse collapse pull-right">
							<ul class="nav">
								{pages} <!-- Placeholder with all the page titles for links -->
								<li>
		                          <a href="#" id="showdiv" data-toggle="user-tooltip" data-placement="right" title="ajcvhall">
		                            <i class="icon-user"></i>
		                          </a>
		                        </li>
							</ul>
						</div>
					</div>
				</div>
			</nav>
			<div class="dropdowndiv">
				asd
			</div>

			<div class="container">
				
			    <!-- Button to trigger modal -->
    <a href="#myModal" role="button" class="btn" data-toggle="modal">Launch demo modal</a>
     
    <!-- Modal -->
    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">Modal header</h3>
    </div>
    <div class="modal-body">
    <p>One fine body…</p>
    </div>
    <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
    <button class="btn btn-primary">Save changes</button>
    </div>
    </div>
				<div class="main-content">

				    {notice} <!-- Displays system error messages -->
					
					<!-- Shows page title and content, and the modules connected to the pages. -->
					<div class="content">
						<h2>{title}</h2> <!-- The title of the page, dynamically inserted. -->
					
						{content} <!-- The content of the page, dynamically inserted. -->
						
					</div>
					{moduleHtml} <!-- The module(s) that belong to an html page, dynamically build. -->
				</div>

				<!-- Edit the footer with your own personal text -->
				<footer class="footer">
					SourJelly 2012. powered by KevinNewesil. || <a href="{base}/auth/login/?ns=access&amp;path=access_path&amp;login=login">Login</a>
				</footer>
			</div>
		</div>	
	</body>
</html>
