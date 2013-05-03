<div class="navbar-inverse navbar-fixed-top" >
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