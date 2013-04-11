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
			<th>Naam</th>
			<th>Beschrijving</th>
			<th>Gemaakt op</th>
			<th>Actief</th>
			<th>Pagina links</th>
			<th>Positie</th>
			<th>Verwijdering ongedaan maken</th>
		</tr>
	</thead>
	<tbody>
		{rows}
	</tbody>
</table>
