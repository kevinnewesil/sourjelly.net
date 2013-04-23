<script type="text/javascript">

	var img = '';

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
				img += '<img src="{assets}img/uploads/' + data[key] + '" alt="" id="' + data[key] + '" class="thumb"/>';
			});
		},
		
		$("#imgbox").html(img);
	});

</script>

<div class="well" id="imgbox">
	
</div>