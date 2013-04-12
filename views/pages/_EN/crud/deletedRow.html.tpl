<tr>
	<td>{title}</td>
	<td class="comment">{content}</td>
	<td>{created_at}</td>
	<td>{updated_at}</td>
	<td>{parent}</td>
	<td><a href="#{id}" role="button" class="btn btn-inverse" data-toggle="modal"><i class="icon icon-ok icon-white"></i></a></td>
</tr>

<!-- Modal -->
<div class="modal hide fade" id="{id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<h3 id="myModalLabel">Undo delete</h3>
	</div>
	<div class="modal-body">
		<p>Are you sure you want to re-activate the page?</p>
	</div>
	<div class="modal-footer">
		<button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
		<a href="{base}/crud/undoDelete/{id}/?ns=controllers&amp;path=controller_path" title="verwijderen" class="btn btn-primary">Continue!</a>
	</div>
</div>
