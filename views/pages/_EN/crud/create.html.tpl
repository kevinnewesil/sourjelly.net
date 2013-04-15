<script type="text/javascript">
	$(document).ready(function(){
		$('.redactor').redactor({ minHeight: 250 });

		$(".empty-form").click(function(){
			$("textarea").html('');
			$(".redactor_editor").html('');
		});
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
					<li class="active"><a href="#basicInfo" data-toggle="tab">Basic information</a></li>
					<li><a href="#meta-data" data-toggle="tab">Meta data</a></li>
					<li><a href="#titleProbs" data-toggle="tab">Title properties</a></li>
					<li><a href="#contentProbs" data-toggle="tab">Content properties</a></li>
				</ul>

				<div class="tab-content">
					<div class="tab-pane active" id="basicInfo">

						<div class="control-group">
							<label for="activeFrontEnd" class="control-label">Active on front-end:</label>
							<div class="controls">
								<input type="checkbox" name="activeFrontEnd" id="activeFrontEnd" checked="checked">
							</div>
						</div>
						
						<div class="control-group">
							<label for="activeBackEnd" class="control-label">Active on back-end:</label>
							<div class="controls">
								<input type="checkbox" name="activeBackEnd"id="activeBackEnd">
							</div>
						</div>

						<div class="control-group">
							<label for="visible" class="control-label">visible in main menu:</label>
							<div class="controls">
								<input type="checkbox" name="visible" checked="checked" id="visible">
							</div>
						</div>

					</div>

					<div class="tab-pane" id="meta-data">
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

					<div class="tab-pane" id="titleProbs">
						<div class="control-group">
							<label for="showPagetitle" class="control-label">Show pagetitle:</label>
							<div class="controls">
								<input type="checkbox" name="showPagetitle" id="showPagetitle" checked="checked">
							</div>
						</div>

						<div class="control-group">
							<label for="titleTextAlignment" class="control-label">Text alignment:</label>
							<div class="controls">
								<select name="titleTextAlignment" id="titleTextAlignment">
									<option value="left">Left</option>
									<option value="right">Right</option>
									<option value="center">Center</option>
									<option value="justify">Justify</option>
								</select>
							</div>
						</div>

						<div class="control-group">
							<label for="titleFontSize" class="control-label">Font size:</label>
							<div class="controls">
								<input type="text" name="titleFontSize" id="titleFontSize" value="16" placeholder="16" class="input-mini">
							</div>
						</div>
					</div>

					<div class="tab-pane" id="contentProbs">
						<div class="control-group">
							<label for="contentId" class="control-label">Id:</label>
							<div class="controls">
								<input type="text" name="contentId" value="" id="contentId" placeholder="Id names">
							</div>
						</div>

						<div class="control-group">
							<label for="contentClass" class="control-label">Class:</label>
							<div class="controls">
								<input type="text" name="contentClass" value="" id="contentClass" placeholder="Class names">
							</div>
						</div>

						<div class="control-group">
							<label for="contentTextAlignment" class="control-label">Text alignment:</label>
							<div class="controls">
								<select name="contentTextAlignment" id="contentTextAlignment">
									<option value="left">Left</option>
									<option value="right">Right</option>
									<option value="center">Center</option>
									<option value="justify">Justify</option>
								</select>
							</div>
						</div>
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
		<div class="controls">
			<button type="submit" name="submit" value="create" class="btn btn-primary btn-large">Create page</button>
			<button type="reset" class="btn btn-inverse btn-large empty-form">Empty form</button>
		</div>
	</div>
</form>
