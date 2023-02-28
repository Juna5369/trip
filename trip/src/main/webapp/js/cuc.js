$("input[value='문의하기']").click(function(){
	location.href="qna"
});

$("input[value='문의내역 확인']").click(function(){
	location.href="res_qna_list"
});

$(".q_btn").mouseenter(function(e){
	$(e.target).css("color", "#e82835");
	$(e.target).css("border", "#e82835 solid 1px");
});

$(".q_btn").mouseleave(function(e){
	$(e.target).css("color", "black");
	$(e.target).css("border", "#ccc solid 1px");
});

$(".cuc_search_btn").mouseenter(function(e){
	$(e.target).css("border", "#e82835 solid 1px");
});

$(".cuc_search_btn").mouseleave(function(e){
	$(e.target).css("border", "#ccc solid 1px");
});

$(".a_l_btn").mouseenter(function(e){
	$(e.target).css("border", "#e82835 solid 1px");
});

$(".a_l_btn").mouseleave(function(e){
	$(e.target).css("border", "#ccc solid 1px");
});

$(".lnb > ul > li > a").mouseenter(function(e){
	$(e.target).css("color", "#e82835");
});

$(".lnb > ul > li > a").mouseleave(function(e){
	$(e.target).css("color", "black");
});

$(".notice_search_btn").mouseenter(function(e){
	$(e.target).css("border", "#e82835 solid 1px");
});

$(".notice_search_btn").mouseleave(function(e){
	$(e.target).css("border", "#ccc solid 1px");
});
