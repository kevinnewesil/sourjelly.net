<script type="text/javascript">
	$(document).ready(function(){
		$('.redactor').redactor();
	});
</script>

<form method="post" action="{base}/crud/create/?ns=controllers&amp;path=controller_path" class="form form-horizontal">
	<legend>Create page</legend>
	
	<div class="row">
		<div class="span4">
			<div class="control-group">	
				<label for="title" class="control-label">Page title:</label>
				<div class="controls">
					<input type="text" name="title" value="" placeholder="Page title" id="title"/>
				</div>
			</div>

			<div class="control-group">
				<label for="parent" class="control-label">Belongs to menu item:</label>
				<div class="controls">
					<select name="parent" id="parent">
						<option value="-">No submenu item</option>
						{pagesoptions}
					</select>
				</div>
			</div>
		</div>

		<div class="span6 offset1">
			<div class="tabbable tabs-right"> <!-- Only required for left/right tabs -->
				<ul class="nav nav-tabs">
					<li class="disabled"><a href="#">Extra information</a></li>
					<li class="active"><a href="#meta-data" data-toggle="tab">Meta data</a></li>
					<li><a href="#tab2" data-toggle="tab">Section 2</a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="meta-data">
						<div class="control-group">
							<label for="metaTags" class="control-label">Meta tags:</label>
							<div class="controls">
								<input type="text" name="metaTags" value="" id="metaTags" placeholder="Meta tags">
							</div>
						</div>

						<div class="control-group">
							<label for="metaDescription" class="control-label">Meta description:</label>
							<div class="controls">
								<input type="text" name="metaDescription" value="" id="metaDescription" placeholder="Meta description">
							</div>
						</div>
					</div>
					<div class="tab-pane" id="tab2">
						<p>Howdy, I'm in Section 2.</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="control-group">
		<label for="content" class="control-label">Page content:</label>
		<div class="controls">
			<textarea rows="20" cols="30" name="content" id="content" class="redactor" placeholder="Page content"></textarea>
		</div>
	</div>

	<div class="control-group">
		<label for="visable" class="control-label">visable in main menu:</label>
		<div class="controls">
			<input type="checkbox" name="visable" checked="checked">
		</div>
	</div>

	<div class="control-group">
		<div class="controls">
			<button type="submit" name="submit" value="create" class="btn btn-primary btn-large">Create page</button>
			<button type="reset" class="btn btn-inverse btn-large">Empty form</button>
		</div>
	</div>
</form>
