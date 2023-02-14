$(document).ready(function() {
	var lnb1 = $('.nav_list > li');
    var lnb2 = $('.dropdown_nav');
    var lnb3 = $('.nav_sub1 > li');
    var lnb4 = $('.nav_sub2');

    lnb1.mouseover(function(e) {
        $(e.target).parent().find('div.dropdown_nav').stop();
        $(e.target).parent().find('div.dropdown_nav').slideDown('fast');
        $(e.target).parent().find('div.dropdown_nav').css("display", "block");
        //$("#nav").css("border-bottom", "1px solid #ccc");
        if($(e.target).text()=='해외'){
            $("#red_line").css("visibility", "visible");
            $("#red_line").css("left", "310px");
        }
        if($(e.target).text()=='테마'){
            $("#red_line").css("visibility", "visible");
            $("#red_line").css("left", "500px");
        }
        if($(e.target).text()=='제주/국내'){
            $("#red_line").css("visibility", "visible");
            $("#red_line").css("left", "690px");
        }
        
    });
    lnb1.mouseleave(function(e) {
        $(e.target).parent().find('div.dropdown_nav').stop();
        $(e.target).parent().find('div.dropdown_nav').slideUp('fast');
        $(e.target).parent().find('div.dropdown_nav').hide();
        $("#red_line").css("visibility", "hidden");
        //$("#nav").css("border-bottom", "transparent");
    });
    lnb2.mouseleave(function(e){
        lnb2.stop();
        lnb2.slideUp('fast');
        lnb2.hide();
        
    });

    lnb3.mouseenter(function(e) {
        $(e.target).find('.nav_sub2').stop();
        $(e.target).find('.nav_sub2').slideDown('fast');
        $(e.target).find('.nav_sub2').css("display", "block");
        
    });
    lnb3.mouseleave(function(e) {
        $(e.target).parent().find('.nav_sub2').stop();
        $(e.target).parent().find('.nav_sub2').slideUp('fast');
        $(e.target).parent().find('.nav_sub2').hide();
    });

    lnb4.mouseleave(function(e){
        lnb4.stop();
        lnb4.slideUp('fast');
        lnb4.hide();
    });

});