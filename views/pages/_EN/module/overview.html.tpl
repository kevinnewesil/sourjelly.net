<script type="text/javascript">
	$(document).ready(function(){

		$(".active").click(function(){

			$.ajax({
				url 		: '{ajax}modules.php',
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
						alert('Something went wrong activating the module...');
					}
				},
			});
		});
	});
</script>

<table class="table table-bordered table-striped table-hover">
	<thead>
		<tr>
			<th>Name</th>
			<th>Description</th>
			<th>Created at</th>
			<th>Active</th>
			<th>Match</th>
			<th>Position</th>
			<th>Settings</th>
			<th>Delete</th>
		</tr>
	</thead>
	<tbody>
		{rows}
	</tbody>
</table>
