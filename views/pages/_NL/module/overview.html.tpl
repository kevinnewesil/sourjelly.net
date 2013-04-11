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
			<th>Naam</th>
			<th>Beschrijving</th>
			<th>Gemaakt op</th>
			<th>Actief</th>
			<th>Pagina links</th>
			<th>Positie op pagina</th>
			<th>Instellingen</th>
			<th>Verwijderen</th>
		</tr>
	</thead>
	<tbody>
		{rows}
	</tbody>
</table>
