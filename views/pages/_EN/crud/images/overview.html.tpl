<script type="text/javascript">

	$.ajax({
		url : '{ajax}image_loader.php',
		async : false,
		dataType : 'json',
		global : false,
		type : 'post',
		data : {
			action : 'loadQuick'
		},
		success : function(data){
			$(data).each(function(key,value){
				$("#uploaded-images").append('<div class="thumbnail">
										<img src="{assets}img/uploads/' + value + '" alt="" id="' + value + '" data-src="holder.js/300x200"/>' + "\r\n"
									+ '</div>');
			});
		},
	});

</script>

<div class="well" id="uploaded-images">
	
</div>