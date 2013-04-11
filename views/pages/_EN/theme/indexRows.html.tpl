<tr>
	<td>{title}</td>
	<td class="active" id="activate~{id}~{title}">{active}</td>
	<td><a href="{base}/themes/update/{id}/?ns=controllers&amp;path=controller_path" class="btn" title="aanpassen"><i class="icon icon-wrench"></i></a></td>
	<td><a href="#{id}" role="button" class="btn btn-inverse" data-toggle="modal"><i class="icon icon-trash icon-white"></i></a></td>
	<td><a href="#" role="button" class="btn btn-primary" class="download" id="download_id"><i class="icon icon-circle-arrow-down"></i></a></td>
</tr>

<!-- Modal -->
<div class="modal hide fade" id="{id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<h3 id="myModalLabel">Delete</h3>
	</div>
	<div class="modal-body">
		<p>Are you sure you want to delete this theme?</p>
	</div>
	<div class="modal-footer">
		<button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
		<a href="{base}/themes/delete/{id}/?ns=controllers&amp;path=controller_path" title="verwijderen" class="btn btn-primary">Delete!</a>
	</div>
</div>
