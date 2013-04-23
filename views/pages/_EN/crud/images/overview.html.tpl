<script type="text/javascript">
	$.ajax({
		url : '{ajax}image_loader.php',
		async : true,
		dataType : 'json',
		global : false,
		type : 'post',
		data : {
			action : 'loadQuick'
		},

		success : function(data){
			if (data[0] !== false) {
				$(data).each(function(key,value){
					$("#uploaded-images").append('<img src="{assets}img/uploads/' + value + '" height="200px" width="200px" class="span2" onmouseover="hover(\''+ value +'\')" onmouseleave="unhover()" id="' + value + '"/>');
				});
			}
			else if(data[0] === false)
			{
				$("#uploaded-images").append( '<h3> No images found </h3>');
			}
		},
	});

	function hover(file)
	{
		filename = file.toString();
		filepath = '{assets}img/uploads/' + file.toString();

		$(".delete-button").fadeIn('fast');
		$(".delete-button").css('position' , 'absolute' );
		$(".delete-button").css('top' , $('img[src="' + filepath + '"]').position().top );
		$(".delete-button").css('left' , $('img[src="' + filepath + '"]').position().left + 160 );

		$(".delete-button").attr("id" , filepath);
		$(".delete-button").attr("alt" , filename);
	};

	function unhover()
	{
		$(".delete-button").fadeOut('slow');
	};

	function clicked()
	{	
		$.ajax({
			url : '{ajax}image_loader.php',
			async : true,
			dataType : 'json',
			global : false,
			type : 'post',
			data : {
				action : 'removeImg',
				filepath : $('.delete-button').attr('id'),
			},

			success : function (data){

				if(data[0] === true)
				{
					$('img[src="{assets}img/uploads/' + $('.delete-button').attr('alt') + '"]').remove();
					alert('Image deleted succesfully');
				}
				else
					alert('something went wrong deleting the image');
			}

		});
	};
</script>

<div class="well">
	<h2>Images</h2>
	<div class="row" id="uploaded-images">
		<img src="{assets}img/icons/delete-button.png" class="img-rounded delete-button" style="display:none;" onClick="clicked();"/>
	</div>
</div>