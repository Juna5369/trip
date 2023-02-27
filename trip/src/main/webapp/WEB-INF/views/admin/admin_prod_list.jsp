<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/adminprod.css">
</head>
<body>
	<%@ include file="../header.jsp"%>
	<%@ include file="../nav.jsp"%>
	<section class="main">
     <div class="box">
	        <div class="admin_box">
	            <div class="lnb">
	                <div class="lnb_title">
	                    <a href="#">관리페이지</a>
	                </div>
	                <ul>
	                    <li><a href="admin_notice">공지사항</a></li>
                        <li><a href="admin_prod_list">상품관리</a></li>
                        <li><a href="#">매출 통계</a></li>
                        <li><a href="#">문의 답변</a></li>
	                </ul>
	            </div>
	            <div class="middle_title">상품관리</div>
				<table class="prod_tbl">
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
                <div class="btn_area">
                	<input type="button" class="r_btn" style="margin-left:500px;" value="상품등록">
				</div>
			</div>
		</div>
    </section>
	<%@ include file="../footer.jsp"%>
	<script src="js/admin.js"></script>
	<script>
	$(".r_btn").click(function(){
		location.href="prodform";
	})

	$(document).ready(function(){
		
    	$.ajax({
    		url: "admin_prod_list.do",
    		type: "get",
    		dataType: "text",
    		success: function(data){ 

    			let obj = JSON.parse(data);
    			
    			for (i = 0; i < 10; i++) {
    				$(".prod_tbl > tbody").append('<tr><td>' 
    						+ obj[i].prod_no + '</td><td>' 
    						+ obj[i].prod_name + '</td><td>'
    						+ obj[i].prod_start_date + '</td></tr>');
    				}
    			$(".prod_tbl > tbody").append('<tr><td id="page" colspan="3"></td></tr>');
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
	
	
	
	
	
	
	$(".prod_tbl > tbody").on('click', function(e){
		
		if(e.target.tagName == 'SPAN'){
			
			$("tbody").empty();
			$.ajax({
				url: "admin_prod_list.do",
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
								$(".prod_tbl > tbody").append('<tr><td>' 
			    						+ obj[i].prod_no + '</td><td>' 
			    						+ obj[i].prod_name + '</td><td>'
			    						+ obj[i].prod_start_date + '</td></tr>');
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
								$(".prod_tbl > tbody").append('<tr><td>' 
			    						+ obj[i].prod_no + '</td><td>' 
			    						+ obj[i].prod_name + '</td><td>'
			    						+ obj[i].prod_start_date + '</td></tr>');
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
							$(".prod_tbl > tbody").append('<tr><td>' 
		    						+ obj[i].prod_no + '</td><td>' 
		    						+ obj[i].prod_name + '</td><td>'
		    						+ obj[i].prod_start_date + '</td></tr>');
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
	});
	
	$(".prod_tbl > tbody").on('click', function(e){
		if(e.target.parentNode.tagName == 'TR' && e.target.parentNode.firstChild.id != 'page'){
			location.href="admin_prod_detail?prod_no="+e.target.parentElement.firstChild.innerText;
		}
	});
	</script>
</body>
</html>