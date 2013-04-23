<!doctype html>
<html>
	<head>
		<title>Sourjelly.net</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" >
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- Include stylesheets -->
		
		<link rel="stylesheet" href="{assets}css/bootstrap.min.css" type="text/css">
		<link rel="stylesheet" href="{assets}css/tablesorter.css" type="text/css">
		<link rel="stylesheet" href="{assets}css/bootstrap-responsive.min.css" type="text/css">
		<link rel="stylesheet/less" href="{assets}css/theme.less" type="text/css">
		<link rel="stylesheet" href="{assets}css/custom.css" type="text/css">
		<link rel="stylesheet" href="{assets}css/redactor.css" type="text/css">
		<link rel="stylesheet" href="{assets}css/image-dropper.css" type="text/css">
		
		<!-- Include Javascript files -->
		
		<script type="text/javascript" src="{assets}js/jquery.js" type="application/javascript"></script>
		<script type="text/javascript" type="application/javascript">
		    less = {
		        rootpath: "../assets/css/"
		    };
		</script>	
		<script type="text/javascript" src="{assets}js/jquery-ui-1.9.1.custom.min.js" type="application/javascript"></script>
		<script type="text/javascript" src="{assets}js/bootstrap.min.js" type="application/javascript"></script>
		<script type="text/javascript" src="{assets}js/sessions.js" type="application/javascript"></script>
		<script type="text/javascript" src="{assets}js/tablesorter.js" type="application/javascript"></script>
		<script type="text/javascript" src="{assets}js/admin-nav.js" type="application/javascript"></script>
		<script type="text/javascript" src="{assets}js/shorten.js" type="application/javascript"></script>
		<script type="text/javascript" src="{assets}js/playsound.js" type="application/javascript"></script>
		<script type="text/javascript" src="{assets}js/functions.js" type="application/javascript"></script>
		<script type="text/javascript" src="{assets}js/less.js" type="application/javascript"></script>
		<script type="text/javascript" src="{assets}js/redactor.js" type="application/javascript"></script>

		<!-- Some random javascript -->
		<script type="text/javascript" type="application/javascript">
		$(document).ready(function(){

			$("#search_form").submit(function(){
				if ($("#search").val() == 'hahgay'){
					$.playSound('{assets}sounds/hahgay.mp3');
				    return false;
				} else if ($("#search").val() == 'tell me a joke'){
					$.playSound('{assets}sounds/drumjoke.mp3');
					return false;
				}
			});

			$('.flushCache').click(function(){
				$.session.set("cacheReload", "true");
				window.location.reload(true);
			});

			if($.session.get("cacheReload") && $.session.get("cacheReload") == "true")
			{
				$.session.delete("cacheReload");
				alert("Cache flushed!");
			}
		});
		</script>

	</head>
	<body>
		<div id="container">
			<nav>
				<div class="navbar navbar-fixed-top">
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
							    <form method="post" action="{base}/search/index/?ns=controllers&amp;path=controller_path" id="search_form" class="navbar-form form-search pull-right">
								   	 <div class="input-append">
										<input type="text" class="span2 search-query" name="search" value="" placeholder="Search" id="search">
										<button type="submit" class="btn">Search</button>
									</div>
							    </form>
						</div>
					</div>
				</div>

				<!-- BUGS BUGS BUGS -->
				<!-- <div class="pull pull-down">
					<i class="icon-arrow-down icon-white"></i>
				</div> -->
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
