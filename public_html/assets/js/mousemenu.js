$(document).ready(function(){
    $.ajax({
        url : '../../../../ajax/mouse_menu.php',
        data : {
            action : 'load-menu-html',
        },
        dataType : "json",
        type : "post",

        success : function(data)
        {
            $("body").append(data);
        }
    });
});

if (document.addEventListener) {
    document.addEventListener('contextmenu', function(e) {

        $(".mouse-menu").css({
            left : e.pageX,
            top : e.pageY,
            display : 'block',
        });

        e.preventDefault();
    }, false);
} else {
    document.attachEvent('oncontextmenu', function() {
        alert("You've tried to open context menu");
        window.event.returnValue = false;
    });
}

// Remove mouse menu on lose focus

$(document).click(function(evt){
    if(evt.target.id !== 'mouse-menu')
        $(".mouse-menu").css('display','none');
});