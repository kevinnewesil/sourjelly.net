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
					$('div[id="uploaded-images"]').append('<img src="{assets}img/uploads/' + value + '" height="200px" width="200px" class="span2"/>');
				});
			}
			else
			{
				$("#uploaded-images").append( '<h3> No images found </h3>');
			}
		},
	});

</script>

<div class="well">
	<h2>Images</h2>
	<div class="row" id="uploaded-images"></div>
</div>