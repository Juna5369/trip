<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/cuc.css">
</head>
<body>
	<%@ include file="../header.jsp"%>
	<%@ include file="../nav.jsp"%>
	<section class="main">
        <div class="box">
            <div class="cuc_box">
                <%@include file="cust_nav.jsp"%>
                <div class="main_faq">
                    <div class="faq_board">
                        <div class="faq_title">자주 찾는 질문
                        	<div class="cuc_search">
                                <input type="button" class="cuc_search_btn" value="검색">
                                <input type="text" class="cuc_search_input" placeholder="검색어를 입력해주세요.">
                            </div>
                        </div>
                        <ul class="faq_list">
							
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="../footer.jsp"%>
	<script src="js/cuc.js"></script>
	<script>
	$(document).ready(function(){
		
		if('${keyword }' == ''){
			$.ajax({
				url: "getFAQList",
				type: "get",
				dataType: "text",
				success: function(data){
					let obj = JSON.parse(data);
					
					for(i = 0; i < 10; i++){
						$(".faq_list").append('<li class="list_li"><div class="faq_subj"><strong>'
								+ obj[i].faq_title + '</strong><div class="downside"></div></div><div class="faq_cont">' 
								+ obj[i].faq_contents + '</div></li>' 
						);
					}
					$(".faq_list").append('<li id="page"></li>');
	    			if(obj.length > 10){
	    				
	    				if(obj.length > 100){
	    					for(let j = 1; j < 11; j++){
	        					if(j == 1){
	        						$("#page").append("<span class='current_page'>" + j + "</span>");
	        					}else{
	    	    					$("#page").append("<span>"+ j + "</span>");
	        					}
	        				}
	    					$("#page").append("<span>></span>");	
	    				}else{
	    					for(let j = 1; j < obj.length/10+1; j++){
	        					if(j == 1){
	        						$("#page").append("<span class='current_page'>" + j + "</span>");
	        					}else{
	    	    					$("#page").append("<span>"+ j + "</span>");
	        					}
	        				}
	    				}
	    			}
				}
			});
			
		}else{
			search2('${keyword }');
			$(".cuc_search_input").val('${keyword }');
		}
	});
	
	$(".faq_list").on('click', function(e){
		
		if(e.target.tagName == 'SPAN'){
			
			if($(".cuc_search_input").val() == ""){
				
				$(".faq_list").empty();
				$.ajax({
					url: "getFAQList",
					type: "get",
					dataType: "text",
					success: function(data){ 
						
						let obj = JSON.parse(data);
						let targetnum = parseInt($(e.target).parent().children().first().text());
						if(isNaN(targetnum)){
							targetnum = parseInt($(e.target).parent().children().first().next().text());
						}
						
						if(isNaN(e.target.innerText)){
							if(e.target.innerText == ">"){
								
								let i = (targetnum+10)*10-10;
								
								for (i; i < (targetnum+10)*10; i++) {
									if(i == obj.length){
										break;
									}
									$(".faq_list").append('<li class="list_li"><div class="faq_subj"><strong>'
											+ obj[i].faq_title + '</strong><div class="downside"></div></div><div class="faq_cont">' 
											+ obj[i].faq_contents + '</div></li>' 
									);
								}
								$(".faq_list").append('<li id="page"></li>');
								
								if(obj.length > (targetnum+19)*10){
									$("#page").append("<span><</span>");
									for(let j = targetnum+10; j < targetnum+20; j++ ){
										if(j == targetnum+10){
											$("#page").append("<span class='current_page'>" + j + "</span>");
										}else{
											$("#page").append("<span>"+ j +"</span>");
										}	
									}
									$("#page").append("<span>></span>");
								}else {
									$("#page").append("<span><</span>");
									for(let j = targetnum+10; j < obj.length/10+1; j++ ){
										if(j == targetnum+10){
											$("#page").append("<span class='current_page'>" + j + "</span>");
										}else{
											$("#page").append("<span>"+ j +"</span>");
										}	
									}
								}
							}else if(e.target.innerText == "<"){
								
								let i = (targetnum-1)*10-10;
								
								for (i; i < (targetnum-1)*10; i++) {
									if(i == obj.length){
										break;
									}
									$(".faq_list").append('<li class="list_li"><div class="faq_subj"><strong>'
											+ obj[i].faq_title + '</strong><div class="downside"></div></div><div class="faq_cont">' 
											+ obj[i].faq_contents + '</div></li>' 
									);
								}
								$(".faq_list").append('<li id="page"></li>');
								if(targetnum > 12){
									$("#page").append("<span><</span>");
								}
								if(obj.length > (targetnum-1)*10){
									for(let j = targetnum-10; j < targetnum; j++ ){
										if(j == targetnum-1){
											$("#page").append("<span class='current_page'>" + j + "</span>");
										}else{
											$("#page").append("<span>"+ j +"</span>");
										}	
									}
									$("#page").append("<span>></span>");
								}else {
									for(let j = targetnum-10; j < obj.length/10+1; j++ ){
										if(j == targetnum-1){
											$("#page").append("<span class='current_page'>" + j + "</span>");
										}else{
											$("#page").append("<span>"+ j +"</span>");
										}	
									}
								}
							}
						}else{
							
							let i = (e.target.innerText)*10-10;
							
							for (i; i < e.target.innerText*10; i++) {
								if(i == obj.length){
									break;
								}
								$(".faq_list").append('<li class="list_li"><div class="faq_subj"><strong>'
										+ obj[i].faq_title + '</strong><div class="downside"></div></div><div class="faq_cont">' 
										+ obj[i].faq_contents + '</div></li>' 
								);
							}
							$(".faq_list").append('<li id="page"></li>');
							
							if(targetnum > 10){
								$("#page").append("<span><</span>");
							}
							if(obj.length > (targetnum+9)*10){
								for(let j = targetnum; j < targetnum+10; j++ ){
									if(j == e.target.innerText){
										$("#page").append("<span class='current_page'>" + j + "</span>");
									}else{
										$("#page").append("<span>"+ j +"</span>");
									}	
								}
								$("#page").append("<span>></span>");
							}else {
								for(let j = targetnum; j < obj.length/10+1; j++ ){
									if(j == e.target.innerText){
										$("#page").append("<span class='current_page'>" + j + "</span>");
									}else{
										$("#page").append("<span>"+ j +"</span>");
									}	
								}
							}
						}
					},
					error: function(){
						alert("error.....");
					}
				});
			
			}else{
				$(".faq_list").empty();
				
				let faq_title = $(".cuc_search_input").val();
				
				$.ajax({
					url: "getFAQListByTitle",
					type: "get",
					data: {
						faq_title: faq_title
					},
					dataType: "text",
					success: function(data){ 
						
						$(".cuc_search_input").val(faq_title);
						
						let obj = JSON.parse(data);
						let targetnum = parseInt($(e.target).parent().children().first().text());
						if(isNaN(targetnum)){
							targetnum = parseInt($(e.target).parent().children().first().next().text());
						}
						
						if(isNaN(e.target.innerText)){
							if(e.target.innerText == ">"){
								
								let i = (targetnum+10)*10-10;
								
								for (i; i < (targetnum+10)*10; i++) {
									if(i == obj.length){
										break;
									}
									$(".faq_list").append('<li class="list_li"><div class="faq_subj"><strong>'
											+ obj[i].faq_title + '</strong><div class="downside"></div></div><div class="faq_cont">' 
											+ obj[i].faq_contents + '</div></li>' 
									);
								}
								$(".faq_list").append('<li id="page"></li>');

								if(obj.length > (targetnum+19)*10){
									$("#page").append("<span><</span>");
									for(let j = targetnum+10; j < targetnum+20; j++ ){
										if(j == targetnum+10){
											$("#page").append("<span class='current_page'>" + j + "</span>");
										}else{
											$("#page").append("<span>"+ j +"</span>");
										}	
									}
									$("#page").append("<span>></span>");
								}else {
									$("#page").append("<span><</span>");
									for(let j = targetnum+10; j < obj.length/10+1; j++ ){
										if(j == targetnum+10){
											$("#page").append("<span class='current_page'>" + j + "</span>");
										}else{
											$("#page").append("<span>"+ j +"</span>");
										}	
									}
								}
							}else if(e.target.innerText == "<"){
								
								let i = (targetnum-1)*10-10;
								
								for (i; i < (targetnum-1)*10; i++) {
									if(i == obj.length){
										break;
									}
									$(".faq_list").append('<li class="list_li"><div class="faq_subj"><strong>'
											+ obj[i].faq_title + '</strong><div class="downside"></div></div><div class="faq_cont">' 
											+ obj[i].faq_contents + '</div></li>' 
									);
								}
								$(".faq_list").append('<li id="page"></li>');
								if(targetnum > 12){
									$("#page").append("<span><</span>");
								}
								if(obj.length > (targetnum-1)*10){
									for(let j = targetnum-10; j < targetnum; j++ ){
										if(j == targetnum-1){
											$("#page").append("<span class='current_page'>" + j + "</span>");
										}else{
											$("#page").append("<span>"+ j +"</span>");
										}	
									}
									$("#page").append("<span>></span>");
								}else {
									for(let j = targetnum-10; j < obj.length/10+1; j++ ){
										if(j == targetnum-1){
											$("#page").append("<span class='current_page'>" + j + "</span>");
										}else{
											$("#page").append("<span>"+ j +"</span>");
										}	
									}
								}
							}
						}else{
							
							let i = (e.target.innerText)*10-10;
							
							for (i; i < e.target.innerText*10; i++) {
								if(i == obj.length){
									break;
								}
								$(".faq_list").append('<li class="list_li"><div class="faq_subj"><strong>'
										+ obj[i].faq_title + '</strong><div class="downside"></div></div><div class="faq_cont">' 
										+ obj[i].faq_contents + '</div></li>' 
								);
							}
							$(".faq_list").append('<li id="page"></li>');
						
							if(targetnum > 10){
								$("#page").append("<span><</span>");
							}
							if(obj.length > (targetnum+9)*10){
								for(let j = targetnum; j < targetnum+10; j++ ){
									if(j == e.target.innerText){
										$("#page").append("<span class='current_page'>" + j + "</span>");
									}else{
										$("#page").append("<span>"+ j +"</span>");
									}	
								}
								$("#page").append("<span>></span>");
							}else {
								for(let j = targetnum; j < obj.length/10+1; j++ ){
									if(j == e.target.innerText){
										$("#page").append("<span class='current_page'>" + j + "</span>");
									}else{
										$("#page").append("<span>"+ j +"</span>");
									}	
								}
							}
						}
					},
					error: function(){
						alert("error.....");
					}
				});
			}
		}
	});

	$(".cuc_search_btn").click(search);
	$(".cuc_search_input").keyup(function(e){
		if(e.keyCode == 13){
			search();
		}
	});
	
	$(".faq_list").on("click", function(e){

		if($(e.target).next().hasClass("faq_cont") == true){
			if($(e.target).next().css("display") == "none"){
				$(e.target).next().show();
				$(e.target).children().last().css("background-image", "url(/img/upside.png)");
			}else {
				$(e.target).next().hide();
				$(e.target).children().last().css("background-image", "url(/img/downside.png)");
			}
		}
	});
	
	function search(){
		let faq_title = $(".cuc_search_input").val();
		$(".faq_list").empty();
		$.ajax({
			url: "getFAQListByTitle",
			type: "get",
			data: {
				faq_title: faq_title
			},
			dataType: "text",
			success: function(data){
				let obj = JSON.parse(data);
				
				for(i = 0; i < 10; i++){
					$(".faq_list").append('<li class="list_li"><div class="faq_subj"><strong>'
							+ obj[i].faq_title + '</strong><div class="downside"></div></div><div class="faq_cont">' 
							+ obj[i].faq_contents + '</div></li>' 
					);
				}
				$(".faq_list").append('<li id="page"></li>');
				if(obj.length > 10){
    				
    				if(obj.length > 100){
    					for(let j = 1; j < 11; j++){
        					if(j == 1){
        						$("#page").append("<span class='current_page'>" + j + "</span>");
        					}else{
    	    					$("#page").append("<span>"+ j + "</span>");
        					}
        				}
    					$("#page").append("<span>></span>");	
    				}else{
    					for(let j = 1; j < obj.length/10+1; j++){
        					if(j == 1){
        						$("#page").append("<span class='current_page'>" + j + "</span>");
        					}else{
    	    					$("#page").append("<span>"+ j + "</span>");
        					}
        				}
    				}
    			}
			}
		});
	};
	
	function search2(keyword){
		let faq_title = keyword;
		$(".faq_list").empty();
		$.ajax({
			url: "getFAQListByTitle",
			type: "get",
			data: {
				faq_title: faq_title
			},
			dataType: "text",
			success: function(data){
				
				$(".cuc_search_input").val(faq_title);
				
				let obj = JSON.parse(data);
				
				for(i = 0; i < 10; i++){
					$(".faq_list").append('<li class="list_li"><div class="faq_subj"><span>'
							+ obj[i].faq_title + '</span><div class="downside"></div></div><div class="faq_cont">' 
							+ obj[i].faq_contents + '</div></li>' 
					);
				}
				$(".faq_list").append('<li id="page"></li>');
				if(obj.length > 10){
    				
    				if(obj.length > 100){
    					for(let j = 1; j < 11; j++){
        					if(j == 1){
        						$("#page").append("<span class='current_page'>" + j + "</span>");
        					}else{
    	    					$("#page").append("<span>"+ j + "</span>");
        					}
        				}
    					$("#page").append("<span>></span>");	
    				}else{
    					for(let j = 1; j < obj.length/10+1; j++){
        					if(j == 1){
        						$("#page").append("<span class='current_page'>" + j + "</span>");
        					}else{
    	    					$("#page").append("<span>"+ j + "</span>");
        					}
        				}
    				}
    			}
			}
		});
	};
	
	function goQNA(){
		if('${sessionScope.id }' == ""){
			location.href="login";
		}else{
			location.href="qna";
		}
	}
	
	function go_res_qna_list(){
		if('${sessionScope.id }' == ""){
			location.href="login";
		}else{
			location.href="res_qna_list";
		}
	}
	</script>
</html>