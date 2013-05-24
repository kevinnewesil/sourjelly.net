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