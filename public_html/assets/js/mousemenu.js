var shift = 0;

$(document).ready(function(){
    $.ajax({
        url : ajaxPath + 'mouse_menu.php',
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



$(document).keydown(function(event){
    if(event.which == 16)
        shift = 1;
});

$(document).keyup(function(){
    shift = 0;
});

//
// kijkt of shift is ingedrukt, zoja: shift =1 anders shift =0
// event listening for keydown
//
document.addEventListener('contextmenu', function(e) {

    if(shift == 0)
    {
        // if statement op e keycode gooien.

        $(".mouse-menu").css({
            left : e.pageX,
            top : e.pageY,
            display : 'block',
        });

        e.preventDefault();
    }
    test = 0;

}, false);


// Remove mouse menu on lose focus

$(document).click(function(evt){
    if(evt.target.id !== 'mouse-menu')
        $(".mouse-menu").css('display','none');
});

function loadAjax(controllerName,functionName)
{

    $.ajax({
        url : basePath + "/" + controllerName + '/' + functionName + '/?ns=controllers&path=controller_path&ajax=true',
        dataType : "html",
        type : "get",

        success : function(data)
        {   
            $(".inner-modal").html(data);
            $("#modalSort").attr('class',controllerName + '-' + functionName)
        }
    });
};