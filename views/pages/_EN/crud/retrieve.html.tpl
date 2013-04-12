<script type="text/javascript">
	$(document).ready(function(){
		$('.tablesorter').tablesorter();
	});
</script>
<table class="table table-hover table-condensed tablesorter">
	<thead>
		<tr>
			<th colspan="7">Pages</th>
		</tr>
		<tr>
			<th>Title</th>
			<th>Content</th>
			<th>Created at</th>
			<th>Last updated</th>
			<th>Submenu (yes/no)</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
	</thead>
	<tbody>
		{rows}
	</tbody>
</table>
<hr>
