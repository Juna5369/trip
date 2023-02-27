$(".lnb > ul > li > a").mouseenter(function(e){
	$(e.target).css("color", "#e82835");
});

$(".lnb > ul > li > a").mouseleave(function(e){
	$(e.target).css("color", "black");
});
