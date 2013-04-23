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
				$("#imgbox").append('<img src="{assets}img/uploads/' +data[key]+ '" alt="" id="' + data[key] + '" class="thumbnail" data-src="holder.js/300x200"/>' + "\r\n");
			});
		},
	});

</script>

<div class="well" id="imgbox">
	
</div>