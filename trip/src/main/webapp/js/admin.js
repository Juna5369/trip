$(".lnb > ul > li > a").mouseenter(function(e){
	$(e.target).css("color", "#e82835");
});

$(".lnb > ul > li > a").mouseleave(function(e){
	$(e.target).css("color", "black");
});

$(".r_btn").mouseenter(function(e){
	$(e.target).css("border", "#e82835 solid 1px");
});

$(".r_btn").mouseleave(function(e){
	$(e.target).css("border", "#ccc solid 1px");
});
