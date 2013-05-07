<div class="mouse-menu" id="mouse-menu">
	<ul class="nav nav-tabs nav-stacked">
		<li class="dropdown-submenu">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">pages</a>

			<ul class="dropdown-menu">
				<li><a href="#modalToggle" class="crud-create" data-toggle="modal">Create</a></li>
				<li><a href="#modalToggle" class="crud-overview" data-toggle="modal">Overview</a></li>
				<li><a href="#modalToggle" class="crud-menu" data-toggle="modal">Menu</a></li>
				<li><a href="#modalToggle" class="crud-deleted" data-toggle="modal">Deleted</a></li>
				
				<li class="divider"></li>
				<li class="disabled"><a href="#">Images</a></li>
				<li class="divider"></li>

				<li><a href="#modalToggle" class="crud-upload" data-toggle="modal">Upload</a></li>
				<li><a href="#modalToggle" class="crud-images" data-toggle="modal">Overview</a></li>
				<li><a href="#modalToggle" class="crud-cropper" data-toggle="modal">Crop</a></li>
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
								<li><a href="#">Sort</a></li>
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

<div id="modalToggle" class="modal hide fade">
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

    function loadPage(controllerName,functionName)
    {

        $.ajax({
            url : '/sourjelly.net/public_html/index.php/' + controllerName + '/' + functionName + '/?ns=controllers&path=controller_path&ajax=true',
            dataType : "html",
            type : "get",

            success : function(data)
            {	
                $(".inner-modal").html(data);

                $("#modalToggle").on('hidden',function(){
                	$(this).modal('show');
                });
            }
        });
    };

    function savePage()
    {
    	data = [];

    	$("#modal form input, #modal form select , #modal form textarea").each(function(){
    		name = $(this).attr('name');
    		val  = $(this).val();

    		data[name] = val;
    	});

    	$.ajax({
    		url : '/sourjelly.net/public_html/index.php/crud/create/?ns=controllers&path=controller_path&ajax=true',
    		dataType : "html",
    		type : 'post',
    		success:function(data)
    		{
    			window.location.reload();
    		}
    	});
    }

	$(document).ready(function(){

		// gets

		 $(".crud-create").click(function(){
	        loadPage('crud','create');
	    });

		 $(".crud-overview").click(function(){
		 	loadPage('crud','retrieve');
		 });

		 $(".crud-menu").click(function(){
			loadPage('crud','order');	
		 });

		 $(".crud-deleted").click(function(){
			loadPage('crud','deleted');
		 });

		 $(".crud-upload").click(function(){
			loadPage('crud','upload');
		 });

		 $(".crud-images").click(function(){
			loadPage('crud','images');
		 });

		 $(".crud-deleted").click(function(){
			loadPage('crud','cropper');
		 });

		 // Posts

		 $(".crud-create-post").click(function(){
		 	savePage('crud','create');
		 });

		 $(".close").click(function(){
		 	$("#modalToggle").modal('hide');
		 });
	});
</script>