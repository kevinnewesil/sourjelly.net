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
			<th>Thema naam</th>
			<th>Actief (klik om te activeren)</th>
			<th>Bewerk</th>
			<th>Verwijder</th>
			<th>Download</th>
		</tr>
	</thead>
	<tbody>
		{rows}
	</tbody>
</table>
