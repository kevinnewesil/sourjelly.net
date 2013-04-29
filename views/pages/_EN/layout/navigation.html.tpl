<script type="text/javascript">
	$(window).load(function(){
		$(".sj-hidden").css('display','none');
		$(".sj-hidden-toggle").css('display','none');
	});


	$(document).ready(function(){

		$("#dynamic-navigation").change(function(){
			if($(this).is(":checked") === true){
				$(".sj-hidden").css('display','block');

				if($("#js-function").val() == 'toggle'){
					$(".javascript-toggle").css('display','block');
				}else{
					$(".sj-hidden").css('display','none');
				}

			}else{
				$(".sj-hidden").css('display','none');
			}
		});


		$(".javascript-sort").change(function(){
			$(".sj-hidden-toggle").css('display','none');

			if($("#js-function").val() == 'toggle'){
				$(".javascript-toggle").css('display','block');
			};
		});
	});
</script>

<form class="form form-horizontal" method="post" action="{base}/layouts/navigation/?ns=controllers&amp;path=controller_path">
	<fieldset>
		<legend>Navigation settings</legend>
		<div class="control-group">
			<label for="" class="control-label">Position</label>
			<div class="controls">
				<select type="text">
					<option value="">Absolute</option>
					<option value="">Relative</option>
					<option value="">Fixed</option>
				</select>
			</div>
		</div>

		<div class="control-group">
			<label for="" class="control-label">Position from header</label>
			<div class="controls">
				<select name="" id="">
					<option value="">Above</option>
					<option value="">Below</option>
					<option value="">Left</option>
					<option value="">Right</option>
				</select>
			</div>
		</div>

		<div class="control-group">
			<label for="" class="control-label">Over header</label>
			<div class="controls">
				<select name="" id="">
					<option value="">don't merge layers</option>
					<option value="">In front of</option>
					<option value="">Behind</option>
				</select>
			</div>
		</div>

		<div class="control-group">
			<label for="" class="control-label">Navigation layout sort</label>
			<div class="controls">
				<select name="" id="">
					<option value="">Navbar</option>
					<option value="">Nav pills</option>
					<option value="">Nav stacked</option>
				</select>
			</div>
		</div>

		<div class="control-group">
			<label for="" class="control-label">Navigation width</label>
			<div class="controls">
				<input type="range" min="1" max="100" step="1" value="100" list="powers">
				<span class="help-inline">Width in % value , range from 1 - 100</span>
			</div>

			<datalist id="powers">
				<option value="0">
				<option value="10">
				<option value="20">
				<option value="30">
				<option value="40">
				<option value="50">
				<option value="60">
				<option value="70">
				<option value="80">
				<option value="90">
				<option value="100">
			</datalist>
		</div>

		<div class="control-group">
			<label for="" class="control-label">Dynamic navigation</label>
			<div class="controls"><input type="checkbox" id="dynamic-navigation"></div>
		</div>
	
		<div class="sj-hidden">
			<div class="javascript-sort">
				<div class="control-group">
					<label for="" class="control-label">Dynamic sort</label>
					<div class="controls">
						<select id="js-function" name="js-function">
							<option value="toggle" selected="selected">Toggle</option>
							<option value=""></option>
							<option value=""></option>
							<option value=""></option>
							<option value=""></option>
						</select>
					</div>
				</div>
			</div>

			<div class="sj-hidden-toggle javascript-toggle">
				<div class="control-group">
					<label for="" class="control-label">Animation style</label>
					<div class="controls">
						<select name="" id="">
							<option value="">left to right</option>
							<option value="">Right to left</option>
							<option value="">Up to down</option>
							<option value="">Down to up</option>
						</select>
					</div>
				</div>

				<div class="control-group">
					<label for="" class="control-label">Toggle trigger</label>
					<div class="controls"><select name="" id="">
							<option value="">Box</option>
							<option value="">Image</option>
							<option value="">Logo</option>
							<option value="">Text</option>
						</select>
					</div>
				</div>

			</div>
		</div>

	</fieldset>
</form>