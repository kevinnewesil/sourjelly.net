<!doctype html> <!-- set the doctype to HTML 5, newest version -->
<html>
	<head>
		<title>Sourjelly.net</title> <!-- The title of your personal website. -->
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" > <!-- The charset of the website. (making it possible to use letters and special characters) -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- Set user defined meta data. -->
		<meta name="keywords" content="{metaTags}"> <!-- Set the keywords for the page for SEO -->
		<meta name="description" content="{metaDescription}"> <!-- Set the description of the page for SEO -->
		<meta name="author" content="{pageAuthor}"> <!-- Set who ever wrote the page. -->

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
		<script type="text/javascript" src="{assets}js/cookie.js"></script> <!-- Include the quety cookie plugin for usage of cookies client side. -->
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
              $('#admin-int').tooltip();
        </script>
        
        <!-- Dynamic style for user defined settings that overrules all other shit. is per  page defineable. -->
        <style type="text/css">
        	
        	.content-title{
        		text-align : {titleTextAlign} ;
        		font-size  : {titleFontSize} ;
        		display    : {titleVisibility} ;
        	}

        	.content-content{
        		text-align : {contentTextAlign} ;
        	}

        </style>

	</head>
	<body>
		<div id="container">
		<div id="container main-cont">
			<!-- Navigation settings / responsive design, collapses menu on smaller screens and makes them easily accessable for mobile devices. -->
			<nav>
				<!-- tabs -> top / bottom / left / right | pills / list /stacked -> pills / list | -->
				{navigation}
			</nav>
			<div class="dropdowndiv">
				asd
			</div>

			<div class="container">
				<div class="main-content">

				    {notice} <!-- Displays system error messages -->
					
					<!-- Shows page title and content, and the modules connected to the pages. -->
					<div class="content {contentClasses}" id="{contentIds}">
						<h2 class="content-title">{title}</h2> <!-- The title of the page, dynamically inserted. -->					
						<span class="content-content">{content}</span> <!-- The content of the page, dynamically inserted. -->
						
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
