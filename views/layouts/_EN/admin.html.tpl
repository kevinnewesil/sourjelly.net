<!doctype html>
<html>
	<head>
		<title>Sourjelly.net</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" >
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- Include stylesheets -->
		
		<link rel="stylesheet" href="{assets}css/bootstrapback.css" type="text/css">
		<link rel="stylesheet" href="{assets}css/tablesorter.css" type="text/css">
		<link rel="stylesheet" href="{assets}css/bootstrap-responsive.min.css" type="text/css">
		<link rel="stylesheet/less" href="{assets}css/theme.less" type="text/css">
		<link rel="stylesheet" href="{assets}css/custom.css" type="text/css">
		<link rel="stylesheet" href="{assets}css/redactor.css" type="text/css">
		<link rel="stylesheet" href="{assets}css/image-dropper.css" type="text/css">
		<link rel="stylesheet" href="{assets}css/colourpicker.css" type="text/css">
		
		<!-- Include Javascript files -->
		
		<script type="text/javascript" src="{assets}js/libs/jquery.js"></script>

		<!-- Javascript to define all placeholders into global variables -->
		<script type="text/javascript">

			// Define placeholders used in javascript through the system.
			ajaxPath   = "{ajax}";
			basePath   = "{base}";
			assetsPath = "{assets}";
			
			navigationPlaceholders = [
				'{positionFromHeader_value}',
				'{zIndex_value}',
				'{jsFunction_value}',
				'{toggleAnimationStyle_value}',
				'{toggleTrigger_value}',
				'{slideInAnimationStyle_value}',
			];

		    less = {
		        rootpath: "../assets/css/"
		    };
		</script>
	
		<!-- Load all the javascript!! start loading the main javascript libraries -->
		<script type="text/javascript" src="{assets}js/libs/jquery-ui-1.9.1.custom.min.js"></script>
		<script type="text/javascript" src="{assets}js/libs/bootstrap.min.js"></script>
		<script type="text/javascript" src="{assets}js/libs/less.js"></script>
		<script type="text/javascript" src="{assets}js/libs/redactor.js"></script>
		<script type="text/javascript" src="{assets}js/libs/jquery_filedrop.js"></script>
		
		<!-- Load all plugins  -->
		<script type="text/javascript" src="{assets}js/plugins/sessions.js"></script>
		<script type="text/javascript" src="{assets}js/plugins/tablesorter.js"></script>
		<script type="text/javascript" src="{assets}js/plugins/shorten.js"></script>
		<script type="text/javascript" src="{assets}js/plugins/colourpicker.js"></script>
		<script type="text/javascript" src="{assets}js/plugins/filedrop_script.js"></script>
	
		<!-- Load all extentions -->
		<script type="text/javascript" src="{assets}js/extensions/admin.js"></script>
		<script type="text/javascript" src="{assets}js/extensions/admin-nav.js"></script>
		<script type="text/javascript" src="{assets}js/extensions/playsound.js"></script>
		<script type="text/javascript" src="{assets}js/extensions/functions.js"></script>
		<script type="text/javascript" src="{assets}js/extensions/cookie.js"></script>
		<script type="text/javascript" src="{assets}js/extensions/mousemenu.js"></script>
		<script type="text/javascript" src="{assets}js/extensions/keybindings.js"></script>

	</head>
	<body>
		<div id="container">
			<nav>
				<div class="nav navbar navbar-fixed-top" id="navigation">
					<div class="navbar-inner" style="padding-left:50px;">
						<div>
							<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</a>
							<a class="brand" href="{base}" title="SourJelly">Sourjelly</a>

							<div class="nav-collapse collapse">
								<ul class="nav">
									{nav}	
								</ul>	

								{login}
							</div>

							<!-- Search bar layout bugs on larger bar -->
							<form method="post" action="#" id="search_form" class="navbar-form form-search pull-right">
								<div class="input-append">
									<input type="text" class="span2 search-query" name="search" value="" placeholder="Search" id="search">
									<button type="submit" class="btn">Search</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</nav>

			<div class="container">
				{notice}

				<div class="content">
					{content}
				</div>

				<footer>
					<!-- &copy; SourJelly 2012. powered by KevinNewesil. -->
				</footer>
			</div>
		</div>
	</body>
</html>
