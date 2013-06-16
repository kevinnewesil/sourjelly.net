<h2>
	Modules
</h2>
<div class="tabbable">
	<ul class="nav nav-tabs">
		<li class="active"><a href="#tab1" data-toggle="tab">Via url</a></li>
		<li><a href="#tab2" data-toggle="tab">Via upload</a></li>
		<li><a href="#create" data-toggle="tab">Create new module</a></li>
	</ul>
	
	<div class="tab-content">
	
		<form class="tab-content form form-horizontal" action="" method="POST" enctype="multipart/form-data">

			<div class="tab-pane active" id="tab1">
				<br>
				<input type="text" name="url" value="" placeholder="Link naar download"/>
				<br/><br/>
				<input type="text" name="description_url" value="" placeholder="Description">

				<input type="submit" name="submit" value="submit" class="btn btn-primary btn-large"/>
			</div>

			<div class="tab-pane" id="tab2">
				<br>
				<!-- Making it possible to access multiple files and upload folder in webkit and firefox. -->
				<input type="text" name="description" value="" placeholder="Description">
				<br>
				<input type="file" name="file" class="file input" multiple="" />
				<br/><br/>
				<input type="submit" name="submit" value="submit" class="btn btn-primary btn-large"/>
			</div>
		</form>

		<div id="create" class="tab-pane">
			<form action="{base}/modules/new/?ns=controllers&amp;path=controller_path" class="form-horizontal">
				<fieldset>
					<legend>Create new module</legend>

					<div class="control-group">
						<label for="name" class="control-label">name</label>
						<div class="controls"><input type="text" name="name" id="name"></div>
					</div>

					<div class="control-group">
						<label for="description" class="control-label">description</label>
						<div class="controls"><input type="text" name="description" id="description"></div>
					</div>

					<div class="control-group">
						<label for="submit" class="control-label">create</label>
						<div class="controls"><input type="submit" value="Create" id="submit" class="btn btn-primary btn-large"></div>
					</div>

				</fieldset>
			</form>

		</div>

	</div>
	
</div>
