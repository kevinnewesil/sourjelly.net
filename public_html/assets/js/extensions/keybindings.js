// Keyboard shortcuts throughout Sour Jelly

var li = [];

$(document).keydown(function (evt) {
	

	// Shortcut for cmmd/ctrl + s to save a doccument currently in editing or creating mode.
	if((li[0] == 91 || li[0] == 17) && evt.keyCode == 83)
	{
		// Prevent the default browser action from happening.
		evt.preventDefault();

		// Search the closest form with the editor class and submit the data.
		$(".redactor").closest("form").find("input[type=submit]").click();
	}

	console.log(li);


	// Clear the array with clicked items so it won't have a key combination memory error
	if(li.length == 2)
		li = [];

	// Push the current event keycode in the array with pressed key codes.
	li.push(evt.keyCode);
});