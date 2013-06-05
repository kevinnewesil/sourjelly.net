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

var test = 0;

$(document).keydown(function(event){
    if(event.which == 16)
        test = 1;
});

$(document).keyup(function(){
    test = 0;
});

//
// kijkt of shift is ingedrukt, zoja: test =1 anders test =0
// event listening for keydown
//
document.addEventListener('contextmenu', function(e) {

    if(test == 0)
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

            $("#modalToggle").on('hidden',function(){
                $(this).modal('show');
            });
        }
    });
};