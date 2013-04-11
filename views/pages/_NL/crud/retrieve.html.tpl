<script type="text/javascript">
	$(document).ready(function(){
		$('.tablesorter').tablesorter();
	});
</script>
<table class="table table-hover table-condensed tablesorter">
	<thead>
		<tr>
			<th colspan="7">Pagina's</th>
		</tr>
		<tr>
			<th>Titel</th>
			<th>Content</th>
			<th>Gemaakt op</th>
			<th>laatste update</th>
			<th>Submenu (ja/nee)</th>
			<th>pas aan</th>
			<th>Verwijder</th>
		</tr>
	</thead>
	<tbody>
		{rows}
	</tbody>
</table>
<hr>