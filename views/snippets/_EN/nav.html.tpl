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
	<a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Layout">
		Layout
		<b class="caret"></b>
	</a>

	<ul class="dropdown-menu">
		<li class="dropdown-submenu">
			<a href="#" class="dropdown-toggle" id="basic-layout" data-toggle="dropdown" title="basic layouts">
				Basic lay-outs
			</a>
			<ul class="dropdown-menu" aria-labelledby="basic-layout">
				<li> <a href="{base}/layouts/navigation/?ns=controllers&amp;path=controller_path" title="Navigation">Navigation</a> </li>
				<li> <a href="{base}/layouts/header/?ns=controllers&amp;path=controller_path" title="Header">Header</a> </li>
				<li> <a href="{base}/layouts/content/?ns=controllers&amp;path=controller_path" title="content">Content</a> </li>
				<li> <a href="{base}/layouts/footer/?ns=controllers&amp;path=controller_path" title="Footer">Footer</a> </li>
			</ul>
		</li>

		<li class="dropdown-submenu">
			<a href="#" class="dropdown-toggle" id="themes" data-toggle="dropdown" title="themes">
				Theme
			</a>
			<ul class="dropdown-menu" aria-labelledby="themes">
				<li><a href="{base}/themes/index/?ns=controllers&amp;path=controller_path" title="Pick existing theme">Theme selection</a></li>
				<li><a href="{base}/themes/upload/?ns=controllers&amp;path=controller_path" title="Upload theme">Upload theme</a></li>
				<li><a href="{base}/themes/newTheme/?ns=controllers&amp;path=controller_path" title="Create new theme">Create theme</a></li>
			</ul>
		</li>

		<li><a href="{base}/layouts/icons/?ns=controllers&amp;path=controller_path" title="Icon selector">Icons</a></li>
	</ul>

</li>
