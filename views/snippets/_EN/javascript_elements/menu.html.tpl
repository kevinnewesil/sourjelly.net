<div class="mouse-menu" id="mouse-menu">
	<ul class="nav nav-tabs nav-stacked">
		<li class="dropdown-submenu">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">pages</a>

			<ul class="dropdown-menu">
				<li><a href="#">Create</a></li>
				<li><a href="#">Overview</a></li>
				<li><a href="#">Menu</a></li>
				<li><a href="#">Deleted</a></li>
				
				<li class="divider"></li>
				<li class="disabled"><a href="#">Images</a></li>
				<li class="divider"></li>

				<li><a href="#">Upload</a></li>
				<li><a href="#">Overview</a></li>
				<li><a href="#">Crop</a></li>
			</ul>
		</li>

		<li class="dropdown-submenu">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Modules</a>

			<ul class="dropdown-menu">
				<li><a href="#">Install</a></li>
				<li><a href="#">Overview</a></li>
				<li><a href="#">Settings</a></li>
				<li><a href="#">Deleted</a></li>
			</ul>

		</li>

		<li class="dropdown-submenu">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Layout</a>

			<ul class="dropdown-menu">				
				
				<li class="dropdown-submenu">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Basic layouts</a>

					<ul class="dropdown-menu">
						
						<li class="dropdown-submenu">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Navigation</a>
							<ul class="dropdown-menu">
								<li><a href="#">Styling</a></li>
								<li><a href="#">Properties</a></li>
							</ul>
						</li>

						<li><a href="#">Header</a></li>
						<li><a href="#">Footer</a></li>
						<li><a href="#">Content</a></li>
					</ul>
				</li>

				<li><a href="#">Themes</a></li>
			</ul>
		</li>

		<li class="dropdown-submenu">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings</a>
			<ul class="dropdown-menu">
				<li><a href="#">Basic system settings</a></li>
				<li><a href="#">Social media settings</a></li>
			</ul>
		</li>

		<li><a href="#">Search</a></li>
	</ul>
</div>

<style>
	.mouse-menu{
		margin: 0;
		padding: 0;

		width: 150px;
		height: 184px;

		position: absolute;
		border: 0px rgba(200,200,200,0.1) solid;

		display: none; 
		background-color:#FFFFFF;
		z-index:9001; /* ITS OVER 9000!!!! */
		
		-moz-box-shadow:    2px 2px 2px #ccc;
		-webkit-box-shadow: 2px 2px 2px #ccc;
		box-shadow:         2px 2px 2px #ccc;
	
		border-radius: 4px 4px 4px 4px;
	}

	.mouse-menu .nav{
		height: 90%;
	}

	.mouse-menu .nav ul li{
		border:none;
	}

	.mouse-menu .nav ul.dropdown-menu{
		-moz-border-radius: 4px 4px 4px 4px !important ;
		-webkit-border-radius: 4px 4px 4px 4px !important ;
		border-radius: 4px 4px 4px 4px !important ;
	}
</style>