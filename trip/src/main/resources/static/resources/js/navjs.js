$(document).ready(function() {
	var lnb = $('.nav_list > li');
    var nb = $('.dropdown_nav');


    lnb.mouseenter(function(e) {
            
        $(e.target).parent().find('div.dropdown_nav').stop();
        $(e.target).parent().find('div.dropdown_nav').slideDown('fast');
        $(e.target).parent().find('div.dropdown_nav').css("display", "block");
        
    });
    lnb.mouseleave(function(e) {
        $(e.target).parent().find('div.dropdown_nav').stop();
        $(e.target).parent().find('div.dropdown_nav').slideUp('fast');
        $(e.target).parent().find('div.dropdown_nav').hide();
    });
    nb.mouseleave(function(e){
        nb.stop();
        nb.slideUp('fast');
        nb.hide();
    });
/*  lnb.mouseenter(function(e) {
        $('e > li > .dropdown_nav').stop();
        $('e > li > .dropdown_nav').finish();
        $('e > li > .dropdown_nav').show();
		$('e > li > .dropdown_nav').slideDown("500");
		$('e > li > .dropdown_nav').css("display", "flex");
		
	});

	lnb.mouseleave(function(e) {
        $('e > li > .dropdown_nav').stop();
        $('e > li > .dropdown_nav').slideUp("slow");
        //$('#main_menu > li > ul').slideUp("fast");
        
	});
    lnb.mouseenter(function(e) {
        
        $(e.target).find('.dropdown_nav').stop();
        $(e.target).find('.dropdown_nav').slideDown('fast');
        $(e.target).find('.dropdown_nav').css("display", "block");
        
    });
*/    
});