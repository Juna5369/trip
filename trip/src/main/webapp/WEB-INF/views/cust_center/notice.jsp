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
                <div class="main_notice">
                    <div class="notice_board">
                        <div class="notice_title">공지사항
                            <div class="cuc_search">
                                <input type="button" class="cuc_search_btn" value="검색">
                                <input type="text" class="cuc_search_input" placeholder="검색어를 입력해주세요.">
                            </div>
                        </div>
                        <table class="notice_tbl">
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>등록일</th>
								</tr>
							</thead>
							<tbody>
								
							</tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="../footer.jsp"%>
	<script src="js/cuc.js"></script>
	<script>
	$(document).ready(function(){
		
    	$.ajax({
    		url: "getNoticeList.do",
    		type: "get",
    		dataType: "text",
    		success: function(data){ 

    			let obj = JSON.parse(data);
    			
    			for (i = 0; i < 10; i++) {
    				$(".notice_tbl > tbody").append('<tr><td>' 
    						+ obj[i].not_no + '</td><td>' 
    						+ obj[i].not_title + '</td><td>'
    						+ obj[i].not_date + '</td></tr>');
    				}
    			$(".notice_tbl > tbody").append('<tr><td id="page" colspan="3"></td></tr>');
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
    		},
    		error: function(){
    			alert("error.....");
    		}
    	});
    });
	
	$(".notice_tbl > tbody").on('click', function(e){
		
		if(e.target.tagName == 'SPAN'){
			
			if($(".cuc_search_input").val() == ""){
				
				$("tbody").empty();
				$.ajax({
					url: "getNoticeList.do",
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
									$(".notice_tbl > tbody").append('<tr><td>' 
				    						+ obj[i].not_no + '</td><td>' 
				    						+ obj[i].not_title + '</td><td>'
				    						+ obj[i].not_date + '</td></tr>');
									}
								$("tbody").append('<tr><td id="page" colspan="3"></td></tr>');
	
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
									$(".notice_tbl > tbody").append('<tr><td>' 
				    						+ obj[i].not_no + '</td><td>' 
				    						+ obj[i].not_title + '</td><td>'
				    						+ obj[i].not_date + '</td></tr>');
									}
								$("tbody").append('<tr><td id="page" colspan="3"></td></tr>');
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
								$(".notice_tbl > tbody").append('<tr><td>' 
			    						+ obj[i].not_no + '</td><td>' 
			    						+ obj[i].not_title + '</td><td>'
			    						+ obj[i].not_date + '</td></tr>');
								}
							$("tbody").append('<tr><td id="page" colspan="3"></td></tr>');
						
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
				$("tbody").empty();
				
				let not_title = $(".cuc_search_input").val();
				
				$.ajax({
					url: "getNoticeSearch",
					type: "get",
					data: {
						not_title: not_title
					},
					dataType: "text",
					success: function(data){ 
						
						$(".cuc_search_input").val(not_title);
						
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
									$(".notice_tbl > tbody").append('<tr><td>' 
				    						+ obj[i].not_no + '</td><td>' 
				    						+ obj[i].not_title + '</td><td>'
				    						+ obj[i].not_date + '</td></tr>');
									}
								$("tbody").append('<tr><td id="page" colspan="3"></td></tr>');

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
									$(".notice_tbl > tbody").append('<tr><td>' 
				    						+ obj[i].not_no + '</td><td>' 
				    						+ obj[i].not_title + '</td><td>'
				    						+ obj[i].not_date + '</td></tr>');
									}
								$("tbody").append('<tr><td id="page" colspan="3"></td></tr>');
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
								$(".notice_tbl > tbody").append('<tr><td>' 
			    						+ obj[i].not_no + '</td><td>' 
			    						+ obj[i].not_title + '</td><td>'
			    						+ obj[i].not_date + '</td></tr>');
								}
							$("tbody").append('<tr><td id="page" colspan="3"></td></tr>');
						
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
	
	$(".cuc_search_btn").on('click', not_search);
	$(".cuc_search_input").keyup(function(e){
		if(e.keyCode == 13){
			not_search();
		}
	});
	
	function not_search(){
		
		$("tbody").empty();
		
		let not_title = $(".cuc_search_input").val();
		
		$.ajax({
			url: "getNoticeSearch",
			type: "get",
			data: {
				not_title: not_title
			},
			dataType: "text",
			success: function(data){ 
				
				$(".cuc_search_input").val(not_title);
				
				let obj = JSON.parse(data);
    			
    			for (i = 0; i < 10; i++) {
    				$(".notice_tbl > tbody").append('<tr><td>' 
    						+ obj[i].not_no + '</td><td>' 
    						+ obj[i].not_title + '</td><td>'
    						+ obj[i].not_date + '</td></tr>');
    				}
    			$(".notice_tbl > tbody").append('<tr><td id="page" colspan="3"></td></tr>');
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
			},
			error: function(){
				alert("error.....");
			}
		});
	}
	
	$(".notice_tbl > tbody").on('click', function(e){
		if(e.target.parentNode.tagName == 'TR' && e.target.parentNode.firstChild.id != 'page'){
			location.href="notice_post?not_no="+e.target.parentElement.firstChild.innerText;
		}
	});
	
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
</body>
</html>