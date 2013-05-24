<script type="text/javascript">

	// set vars
	var returnValue = true;
	
	function changeVisibility()
	{
		$(".sj-hidden").css('display','block');

		if($("#js-function").val() == 'toggle')
		{
			$(".sj-hidden-toggle").css('display','block');
			
			$("#toggle-trigger").val() == 'text' ? $("#toggle-trigger-text").css('display','inline') : console.log('image') ;
		}
		else if($("#js-function").val() =='slideIn')
		{
			$(".sj-hidden-slideIn").css('display','block');
		}
	}

	function setInvisible(everything)
	{
		everything = typeof everything !== 'undefined' ? true : false;

		if(everything === true)
			$(".sj-hidden").css('display','none');

		$(".sj-hidden-toggle").css('display','none');
		$(".sj-hidden-slideIn").css('display','none');	
		$("#toggle-trigger-text").css('display','none');
	}

	function saveNavigation(action,data)
	{
		$.ajax({
			url : '{ajax}layout.php',
			dataType : 'json',
			type : 'post',
			data : {
				action : action,
				data : data,
			},

			success : function(data)
			{
				returnValue = data[0];
			},

			error : function(data)
			{
				returnValue = false;
			},
		});
	}

	function setSelect()
	{
		$("select[name=positionFromHeader]").find("option[value={positionFromHeader_value}]").attr('selected',true);
		$("select[name=zIndex]").find("option[value={zIndex_value}]").attr('selected',true);
		$("select[name=jsFunction]").find("option[value={jsFunction_value}]").attr('selected',true);
		$("select[name=toggleAnimationStyle]").find("option[value={toggleAnimationStyle_value}]").attr('selected',true);
		$("select[name=toggleTrigger]").find("option[value={toggleTrigger_value}]").attr('selected',true);
		$("select[name=slideInAnimationStyle]").find("option[value={slideInAnimationStyle_value}]").attr('selected',true);
	}

	// Set document styling to zero visibility on non active/used html form attributes
	$(window).load(function(){
		
		setSelect();
		setInvisible(true);

		if($("#dynamic-navigation").is(":checked") === true)
			changeVisibility();
	});

	$(document).ready(function(){

		// Function to dynamically change visibility inside document on change html attributes.

		$("#dynamic-navigation").change(function(){
			if($(this).is(":checked") === true)
				changeVisibility();
			else
				setInvisible(true);
		});


		$(".javascript-sort").change(function(){			
			setInvisible(false);
			changeVisibility();
		});

		$("#toggle-trigger").change(function(){
			$(this).val() == 'text' ? $("#toggle-trigger-text").css('display','inline') : console.log('image') ;
		});

		// On submit of form.
		$(".form").submit(function(){
			
			var data = {};

			$(".form input, .form select").each(function(){
				if($(this).attr('type') == 'checkbox' || $(this).attr('type') == 'submit')
					return true;

				name = $(this).attr('name');
				value = $(this).val();
				data[name] = value;
			});

			$('.form input[type=checkbox]').each(function(){
				name = $(this).attr('name');
				if($(this).is(":checked"))
					value = '1';
				else
					value = '0';
				data[name] = value;
			});

			saveNavigation('saveNavigationSettings',data);

			if(returnValue === true)
				alert('update successfull');
			else
				alert('something went wrong saving the navigation layout settings');

			return false;
		});

		$(".form input, .form select").change(function(){

			data = {};

			if($(this).siblings('.image').length > 0)
				$(this).siblings().remove('.image');

			name = $(this).attr('name');

			if($(this).attr('type') == 'checkbox')
				if($(this).is(":checked"))
						val = 1;
					else
						val = 0;
			else
				val  = $(this).val();

			data[name] = val;

			saveNavigation('saveNavigationSettings',data);

			if(returnValue === true)
				$('<img src="{assets}img/icons/checked.gif?x=' + Math.random() + '" alt="success" class="image">').appendTo($(this).parent());
			else
				$('<img src="{assets}img/icons/cross.gif?x=' + Math.random() + '" alt="error" class="image">').appendTo($(this).parent());

		});

		$(".image").click(function(){
			$(this).remove();
		});

	});
</script>

<form class="form form-horizontal" method="post" action="{base}/layouts/navigation/?ns=controllers&amp;path=controller_path">
	<fieldset>
		<legend>Navigation settings</legend>

		<div class="control-group">
			<label for="header" class="control-label">Position from header</label>
			<div class="controls">
				<select name="positionFromHeader" id="header">
					<option value="above">Above</option>
					<option value="below">Below</option>
					<option value="left">Left</option>
					<option value="right">Right</option>
				</select>
			</div>
		</div>

		<div class="control-group">
			<label for="z-index" class="control-label">Over header</label>
			<div class="controls">
				<select name="zIndex" id="z-index">
					<option value="0">don't merge layers</option>
					<option value="1000">In front of</option>
					<option value="-1000">Behind</option>
				</select>
			</div>
		</div>

		<div class="control-group">
			<label for="always-visible" class="control-label">Always visible</label>
			<div class="controls"><input type="checkbox" id="always-visible" name="alwaysVisible" {alwaysVisible_value}></div>
		</div>		

		<div class="control-group">
			<label for="dynamic-navigation" class="control-label">Dynamic navigation</label>
			<div class="controls"><input type="checkbox" id="dynamic-navigation" name="dynamicNavigation" {dynamicNavigation_value}></div>
		</div>
	
		<div class="sj-hidden">
			<div class="javascript-sort">
				<div class="control-group">
					<label for="js-function" class="control-label">Dynamic sort</label>
					<div class="controls">
						<select id="js-function" name="jsFunction">
							<option value="toggle">Toggle</option>
							<option value="slideIn">Slide in</option>
						</select>
					</div>
				</div>
			</div>

			<div class="sj-hidden-toggle">
				<div class="control-group">
					<label for="animation-style" class="control-label">Toggle animation style</label>
					<div class="controls">
						<select name="toggleAnimationStyle" id="animation-style">
							<option value="left">left to right</option>
							<option value="right">Right to left</option>
							<option value="top">Up to down</option>
							<option value="bottom">Down to up</option>
						</select>
					</div>
				</div>

				<div class="control-group">
					<label for="toggle-trigger" class="control-label">Toggle trigger</label>
					<div class="controls">
						<select name="toggleTrigger" id="toggle-trigger">
							<option value="text">Text</option>
							<option value="image">Image</option>
						</select>

						<input type="text" name="toggleTriggerText" value="{toggleTriggerText_value}" placeholder="Text" id="toggle-trigger-text">
						
					</div>
				</div>
			</div>

			<div class="sj-hidden-slideIn">
				<div class="control-group">
					<label for="slidein" class="control-label">Slide in animation style</label>
					<div class="controls">
						<select name="slideInAnimationStyle" id="slidein">
							<option value="left">Left to right</option>
							<option value="right">Right to left</option>
							<option value="top">Up to down</option>
							<option value="bottom">Down to up</option>
						</select>
					</div>
				</div>
			</div>
		</div>

		<div class="control-group">
			<label for="submit" class="control-label">Save!</label>
			<div class="controls"><input type="submit" name="submit" value="save" id="submit" class="btn btn-large btn-primary"></div>
		</div>

	</fieldset>
</form>