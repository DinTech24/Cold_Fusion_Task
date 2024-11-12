	$(document).ready(function(){

       $( "#accordion" ).accordion();

    $(".headSection1").click(function(){
        $(".fade1").addClass("fa-chevron-up");
        $(".fade1").removeClass("fa-chevron-down");
        
    });

    $(".headSection2").click(function(){
        $(".fade2").addClass("fa-chevron-up");
        $(".fade2").removeClass("fa-chevron-down");
        
    });

    $(".headSection3").click(function(){
        $(".fade3").addClass("fa-chevron-up");
        $(".fade3").removeClass("fa-chevron-down");
        
    });

    $(".headSection4").click(function(){
        $(".fade4").addClass("fa-chevron-up");
        $(".fade4").removeClass("fa-chevron-down");

    });

    $(".headSection1").mouseleave(function(){
        $(".fade1").addClass("fa-chevron-down");
        $(".fade1").removeClass("fa-chevron-up");
        
    });

    $(".headSection2").mouseleave(function(){
        $(".fade2").addClass("fa-chevron-down");
        $(".fade2").removeClass("fa-chevron-up");
        
    });

    $(".headSection3").mouseleave(function(){
        $(".fade3").addClass("fa-chevron-down");
        $(".fade3").removeClass("fa-chevron-up");
        
    });

    $(".headSection4").mouseleave(function(){
        $(".fade4").addClass("fa-chevron-down");
        $(".fade4").removeClass("fa-chevron-up");
        
    });


});

