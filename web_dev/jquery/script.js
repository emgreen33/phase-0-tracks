// Before you can safely use jQuery to do anything to your page, you need to ensure that the page is in a state where it's ready to be manipulated. With jQuery, we accomplish this by putting our code in a function, and then passing that function to $(document).ready().

$( document ).ready(function() {
  console.log( 'ready!' );
});


$(function(){
    $("p").click(function(){
        $(this).hide();
    });
});

$(function(){
    $("li").click(function(){
        $(this).hide();
    });
});

$(function(){
 $("#msgid").html("This is another test by JQuery");
});

$(function(){
    $("#welcome-section").mouseenter(function(){
        alert("You entered the welcome-section!");
    });
});

// $(function(){
//     $("#welcome-section").mouseleave(function(){
//         alert("Bye! You left the welcome!");
//     });
// });
// Expose jQuery to the global object
window.jQuery = window.$ = jQuery;

