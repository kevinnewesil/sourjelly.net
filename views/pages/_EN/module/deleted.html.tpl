<script type="text/javascript">
	$(document).ready(function(){

		$(".undelete").click(function(){
			$.ajax({
				url 		: '{ajax}modules.php',
				type 		: 'POST',
				data 		: {
					action 	: 'undelete',
					id	   	: $(this).attr("id"),
				},
				dataType 	: 'json',
				success: function(data){
					if(data.value == 'true'){
						window.location.reload();
					}else{
						alert('Iets ging fout met het activeren van de module..');
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
			<th>Un-delete</th>
		</tr>
	</thead>
	<tbody>
		{rows}
	</tbody>
</table>
