<div class="mouse-menu" id="mouse-menu">
	<ul class="nav nav-tabs nav-stacked">
		<li class="dropdown-submenu">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">pages</a>

			<ul class="dropdown-menu">
				<li><a href="#modalToggle" class="crud-create" data-toggle="modal" id="activateModal">Create</a></li>
				<li><a href="#modalToggle" class="crud-overview" data-toggle="modal" id="activateModal">Overview</a></li>
				<li><a href="#modalToggle" class="crud-menu" data-toggle="modal" id="activateModal">Menu</a></li>
				<li><a href="#modalToggle" class="crud-deleted" data-toggle="modal" id="activateModal">Deleted</a></li>
				
				<li class="divider"></li>
				<li class="disabled"><a href="#">Images</a></li>
				<li class="divider"></li>

				<li><a href="#modalToggle" class="crud-upload" data-toggle="modal" id="activateModal">Upload</a></li>
				<li><a href="#modalToggle" class="crud-images" data-toggle="modal" id="activateModal">Overview</a></li>
				<li><a href="#modalToggle" class="crud-cropper" data-toggle="modal" id="activateModal">Crop</a></li>
			</ul>
		</li>

		<li class="dropdown-submenu">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Modules</a>

			<ul class="dropdown-menu">
				<li><a href="#modalToggle" class="modules-create" data-toggle="modal" id="activateModal">Install</a></li>
				<li><a href="#modalToggle" class="modules-overview" data-toggle="modal" id="activateModal">Overview</a></li>
				<li><a href="#modalToggle" class="modules-settings" data-toggle="modal" id="activateModal">Settings</a></li>
				<li><a href="#modalToggle" class="modules-deleted" data-toggle="modal" id="activateModal">Deleted</a></li>
			</ul>

		</li>

		<li class="dropdown-submenu">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Layout</a>

			<ul class="dropdown-menu">				
				
				<li class="dropdown-submenu">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Basic layouts</a>

					<ul class="dropdown-menu">
						
						<li><a href="#modalToggle" class="layouts-navigation" data-toggle="modal" id="activateModal">Navigation</a></li>
						<li><a href="#modalToggle" class="layouts-header" data-toggle="modal" id="activateModal">Header</a></li>
						<li><a href="#modalToggle" class="layouts-footer" data-toggle="modal" id="activateModal">Footer</a></li>
						<li><a href="#modalToggle" class="layouts-content" data-toggle="modal" id="activateModal">Content</a></li>
					</ul>
				</li>

				<li class="dropdown-submenu">
					<a href="#">Themes</a>

					<ul class="dropdown-menu">
						<li><a href="#modalToggle" class="themes-index" data-toggle="modal" id="activateModal">Selection</a></li>
						<li><a href="#modalToggle" class="themes-upload" data-toggle="modal" id="activateModal">Upload</a></li>
						<li><a href="#modalToggle" class="themes-create" data-toggle="modal" id="activateModal">Create</a></li>
					</ul>
				</li>
			</ul>
		</li>

		<li class="dropdown-submenu">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings</a>
			<ul class="dropdown-menu">
				<li><a href="#modalToggle" class="settings-index" data-toggle="modal" id="activateModal">Basic system settings</a></li>
				<li><a href="#modalToggle" class="settings-social" data-toggle="modal" id="activateModal">Social media settings</a></li>
			</ul>
		</li>

		<li><a href="#">Search</a></li>
	</ul>
</div>

<div id="modalToggle" class="modal hide fade">
	<span class="" id="modalSort"></span>
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		<br><br>
	</div>
	<div id="modal" class="inner-modal"></div>
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

<script>

	$(document).ready(function(){
		// gets

		$("#activateModal").click(function(){
			names = $(this).attr('class').split('-');
			loadAjax(names[0],names[1]);
		});

		 // $("#modal").find('input[type="submit"], input[type="submit"]').click(function(){
		 // 	target = $("#modalSort").attr('class');
		 // 	console.log(target);
		 // 	return false;
		 // });

		 $(".close").click(function(){
		 	window.location.reload();
		 });

		 // $("body").click(function(e){
		 // 	if($("#modalToggle").css('display') == 'block')
			//  	if(e.target.id !== 'modalToggle' && e.target.href !== 'modalToggle')
			//  		window.location.reload();
		 // });
	});
</script>