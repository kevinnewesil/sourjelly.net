$(document).ready(function(){
    $.ajax({
        url : '/sourjelly.net/ajax/mouse_menu.php',
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

document.addEventListener('contextmenu', function(e) {
    $(".mouse-menu").css({
        left : e.pageX,
        top : e.pageY,
        display : 'block',
    });

    e.preventDefault();

}, false);


// Remove mouse menu on lose focus

$(document).click(function(evt){
    if(evt.target.id !== 'mouse-menu')
        $(".mouse-menu").css('display','none');
});


