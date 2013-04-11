<script type="text/javascript">
	$(document).ready(function(){

		$(".active").click(function(){

			$.ajax({
				url 		: '{ajax}themes.php',
				type 		: 'POST',
				data 		: {
					action 	: 'activate',
					id	   	: $(this).attr("id"),
					current : $(this).html(),
				},
				dataType 	: 'json',
				success: function(data){
					if(data.value == 'true'){
						window.location.reload();
					}else{
						alert('Something went wrong activating the theme...');
					}
				},
			});
		});
	});
</script>

<table class="table table-bordered table-striped table-hover">
	<thead>
		<tr>
			<th>Theme name</th>
			<th>Active</th>
			<th>Edit</th>
			<th>Delete</th>
			<th>Download</th>
		</tr>
	</thead>
	<tbody>
		{rows}
	</tbody>
</table>
