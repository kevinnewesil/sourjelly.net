<li class="dropdown">
	<a href="#" class="dropdown-toggle" data-toggle="dropdown" title="CRUD">
		Pagina's
		<b class="caret"></b>
	</a>
	<ul class="dropdown-menu">
		<li><a href="{base}/crud/create/?ns=controllers&amp;path=controller_path" title="Create">Maak pagina</a></li>
		<li><a href="{base}/crud/retrieve/?ns=controllers&amp;path=controller_path" title="Read">Pagina overzicht</a></li>
		<li><a href="{base}/crud/order/?ns=controllers&amp;path=controller_path" title="Menu order">Menu volgorde</a></li>
		<li><a href="{base}/crud/deleted/?ns=controllers&amp;path=controller_path" title="Deleted pages">Verwijderde pagina's</a></li>
		<li class="divider"></li>
		<li><a href="{base}/crud/upload/?ns=controllers&amp;path=controller_path" title="Upload images">Afbeelding uploaden</a></li>
		<li><a href="{base}/crud/images/?ns=controllers&amp;path=controller_path" title="Images overview">Afbeeldingen overzicht</a></li>
		<li><a href="{base}/crud/cropper/?ns=controllers&amp;path=controller_path" title="Image cropper">Afbeelding cropper</a></li>
	</ul>
</li>

<li class="dropdown">
	 <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Modules">
		Modules
		<b class="caret"></b>
	</a>

	<ul class="dropdown-menu">
		<li><a href="{base}/modules/create/?ns=controllers&amp;path=controller_path"> Modules installeren </a></li>
		<li><a href="{base}/modules/overview/?ns=controllers&amp;path=controller_path"> Modules Overzicht </a></li>

		<li class="dropdown-submenu">
	
			<a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Module instellingen">Module instellingen</a>
			
			{modulesList}

		</li>

		<li><a href="{base}/modules/deleted/?ns=controllers&amp;path=controller_path"> Verwijderde modules </a></li>
	</ul>
</li>

<li class="dropdown">
	<a href="" class="dropdown-toggle" data-toggle="dropdown" title="thema's">
		Thema's
		<b class="caret"></b>
	</a>

	<ul class="dropdown-menu">
		<li><a href="{base}/themes/index/?ns=controllers&amp;path=controller_path" title="Thema">Theme selecteren</a></li>
		<li><a href="{base}/themes/upload/?ns=controllers&amp;path=controller_path" title="Thema">Theme Uploaden</a></li>
		<li><a href="{base}/themes/newTheme/?ns=controllers&amp;path=controller_path" title="Thema">theme creeren</a></li>
	</ul>

</li>
