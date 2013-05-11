<script type="text/javascript">

	$(document).ready(function(){

		$(".sj-hidden").css('display','none');

		$("." + $("#navigationSort").val()).css('display','block');

		$("#navigationSort").change(function(){
			$(".sj-hidden").css('display','none');
			$("." + $("#navigationSort").val()).css('display','block');
		});
	});
</script>

<form class="form form-horizontal" method="post" action="{base}/layouts/header/?ns=controllers&amp;path=controller_path">
	<fieldset>
		<legend>Basics</legend>

		<div class="control-group">
			<label for="navigationSort" class="control-label">Sort</label>
			<div class="controls">
				<select name="navigationSort" id="navigationSort">
					<option value="slider">Slider</option>
					<option value="image">Image</option>
					<option value="text">Text</option>
				</select>
			</div>
		</div>

		<div class="sj-hidden slider">
			<div class="well">
				{images}
			</div>
		</div>
	
		<div class="sj-hidden text control-group">
			<label for="headerText" class="control-label"></label>
			<div class="controls">
				<input type="text" id="">
			</div>
		</div>

	</fieldset>

	<div class="control-group">
		<label for="" class="control-label"></label>
		<div class="controls">
			<input type="submit" class="btn btn-primary btn-large" id="">
		</div>
	</div>

</form>