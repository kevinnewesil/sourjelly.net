<li class="dropdown">
	<a href="#" class="dropdown-toggle" data-toggle="dropdown" title="CRUD">
		Pages
		<b class="caret"></b>
	</a>
	<ul class="dropdown-menu">
		<li><a href="{base}/crud/create/?ns=controllers&amp;path=controller_path" title="Create">Create page</a></li>
		<li><a href="{base}/crud/retrieve/?ns=controllers&amp;path=controller_path" title="Read">Pages overview</a></li>
		<li><a href="{base}/crud/order/?ns=controllers&amp;path=controller_path" title="Menu order">Menu order</a></li>
		<li><a href="{base}/crud/deleted/?ns=controllers&amp;path=controller_path" title="Deleted pages">Deleted pages</a></li>
		<li class="divider"></li>
		<li><a href="{base}/crud/upload/?ns=controllers&amp;path=controller_path" title="Upload images">Upload Images</a></li>
		<li><a href="{base}/crud/images/?ns=controllers&amp;path=controller_path" title="Images overview">Images overview</a></li>
		<li><a href="{base}/crud/cropper/?ns=controllers&amp;path=controller_path" title="Image cropper">Image cropper</a></li>
	</ul>
</li>

<li class="dropdown">
	 <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Modules">
		Modules
		<b class="caret"></b>
	</a>

	<ul class="dropdown-menu">
		<li><a href="{base}/modules/create/?ns=controllers&amp;path=controller_path"> Install modules </a></li>
		<li><a href="{base}/modules/overview/?ns=controllers&amp;path=controller_path"> Modules overview </a></li>

		<li class="dropdown-submenu">
	
			<a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Module instellingen">Modules settings</a>
			
			{modulesList}

		</li>

		<li><a href="{base}/modules/deleted/?ns=controllers&amp;path=controller_path"> Deleted modules </a></li>
	</ul>
</li>

<li class="dropdown">
	<a href="" class="dropdown-toggle" data-toggle="dropdown" title="thema's">
		Themes
		<b class="caret"></b>
	</a>

	<ul class="dropdown-menu">
		<li><a href="{base}/themes/index/?ns=controllers&amp;path=controller_path" title="Thema">Theme selection</a></li>
		<li><a href="{base}/themes/upload/?ns=controllers&amp;path=controller_path" title="Thema">Upload theme</a></li>
		<li><a href="{base}/themes/newTheme/?ns=controllers&amp;path=controller_path" title="Thema">Create theme</a></li>
	</ul>

</li>
