<tr>
	<td class="tdtitle">{title}</td>
	<td>{created_at}</td>
	<td>{updated_at}</td>
	<td>{parent}</td>
	<td><a href="{base}/crud/update/{id}/?ns=controllers&amp;path=controller_path" class="btn" title="aanpassen"><i class="icon icon-wrench"></i></a></td>
	<td class="Premode"><a href="#prev_{id}" role="button" class="btn " data-toggle="modal"><i class="icon icon-eye-open "></i></a></td>
	<td><a href="#{id}" role="button" class="btn btn-inverse" data-toggle="modal"><i class="icon icon-trash icon-white"></i></a></td>
</tr>

<!-- Modal -->
<div class="modal hide fade" id="{id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<h3 id="myModalLabel">Delete</h3>
	</div>
	<div class="modal-body">
		<p>Are you sure you want to delete this page?</p>
	</div>
	<div class="modal-footer">
		<button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
		<a href="{base}/crud/delete/{id}/?ns=controllers&amp;path=controller_path" title="verwijderen" class="btn btn-primary">Delete!</a>
	</div>
</div>
<div class="modal hide fade" id="prev_{id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<h3 id="myModalLabel">preview mode : {title}</h3>
	</div>
	<div class="modal-body">
		{content}
	</div>
	<div class="modal-footer">
		<button class="btn" data-dismiss="modal" aria-hidden="true">close preview</button>
	</div>
</div>
