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
		<h3 id="myModalLabel">Verwijderen ongedaan maken</h3>
	</div>
	<div class="modal-body">
		<p>Weet U zeker dat U de verwijdering ongedaan wilt maken?</p>
	</div>
	<div class="modal-footer">
		<button class="btn" data-dismiss="modal" aria-hidden="true">Annuleer</button>
		<a href="{base}/crud/undoDelete/{id}/?ns=controllers&amp;path=controller_path" title="verwijderen" class="btn btn-primary">Doorgaan!</a>
	</div>
</div>
