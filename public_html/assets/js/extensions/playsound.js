(function($){

  $.extend({
    playSound: function(){
      return $("<embed src='"+arguments[0]+"' hidden='true' autostart='true' loop='false' class='playSound'>").appendTo('body');
    }
  });

})(jQuery);

$(document).ready(function(){
	$("#search_form").submit(function(){
		if ($("#search").val() == 'hahgay'){
			$.playSound('{assets}sounds/hahgay.mp3');
		    return false;
		} else if ($("#search").val() == 'tell me a joke'){
			$.playSound('{assets}sounds/drumjoke.mp3');
			return false;
		}
	});
});