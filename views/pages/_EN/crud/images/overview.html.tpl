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
				img += '<img src="{assets}img/uploads/' + data[key] + '" alt="" id="' + data[key] + '" class="thumbnail" data-src="holder.js/300x200"/>' + "\r\n";
			});
		},
	});

	$("#imgbox").html(img);

</script>

<div class="well" id="imgbox">
	
</div>