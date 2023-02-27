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
                <div class="main_post">
                    <div class="notice_post">
                        <div class="notice_title">1:1문의 내역
                        </div>
                        <div class="ad_title_area">
							<div class="ad_post_title">
								<input class="qna_subj" id="rs" type="text" placeholder="제목을 입력해 주세요." value="${post.res_qna_title }">
								
							</div>
							<div class="ad_date">
								${post.res_qna_date }
							</div>
                        </div>
						<div class="post_contents">
							<textarea class="qna_cont" id="rc" placeholder="최대 2500자까지 입력가능">${post.res_qna_contents }</textarea>
						</div>
						<c:if test="${post2.res_reply_title == null }">
							<div class="btn_area">
								<input type="button" class="l_btn" value="목록">
								<input type="button" class="s_btn" value="수정">
								<input type="button" class="d_btn" value="삭제">
								<input type="hidden" value="${post.res_qna_no }">
							</div>
						</c:if>
						<c:if test="${post2.res_reply_title != null }">
							<div class="notice_title">1:1문의 답변 내역
	                        </div>
							<div class="title_area">
								<div class="post_title">
									${post2.res_reply_title }
								</div>
								<div class="post_date">
									${post2.res_reply_date }
								</div>
	                        </div>
							<div class="post_contents">
								${post2.res_reply_contents }
							</div> 
						<div class="btn_area">
							<input type="button" class="l_btn" value="목록">
						</div>
						</c:if>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="../footer.jsp"%>
	<script>
		$(".l_btn").click(function(){
			location.href="res_qna_list";
		})
		
		$(".s_btn").click(function(){
			let rqno = "${post.res_qna_no }";
			let rqt = $("#rs").val();
			let rqc = $("#rc").val();
			
			$.ajax({
				url: 'updateResQNA',
				type: 'put',
				data: {
					res_qna_no: rqno,
					res_qna_title: rqt,
					res_qna_contents: rqc
				},
				success: function() {
					alert('수정 완료');
				}
				
			});
			
		});
		
		$(".d_btn").click(function(){
			let rqno = "${post.res_qna_no }";
			
			$.ajax({
				url: 'deleteResQNA',
				type: 'delete',
				data: {
					res_qna_no: rqno,
				},
				success: function() {
					alert('삭제 완료');
					location.href="res_qna_list";
				}
				
			});
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