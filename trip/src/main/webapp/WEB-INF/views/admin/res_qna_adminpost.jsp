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
                <%@include file="admin_nav.jsp"%>
                <div class="main_post">
                    <div class="notice_post">
                        <div class="notice_title">1:1 고객 문의
                        </div>
                        <div class="title_area">
							<div class="post_title">
								${post.res_qna_title }
							</div>
							<div class="post_date">
								${post.res_qna_date }
							</div>
                        </div>
						<div class="post_contents">
							${post.res_qna_contents }
						</div>
						<div class="notice_title">1:1 문의 답변
                        </div>
                        <div class="ad_title_area">
							<div class="ad_post_title">
								<input class="qna_subj" id="rs" type="text" placeholder="제목을 입력해 주세요." value="${post2.res_reply_title }">
							</div>
							<div class="ad_date">
								${post2.res_reply_date }
							</div>
                        </div>
						<div class="post_contents">
							<textarea class="qna_cont" id="rc" placeholder="최대 2500자까지 입력가능">${post2.res_reply_contents }</textarea>
						</div>
						
						<div class="btn_area">
							<input type="button" class="l_btn" value="목록">
							<input type="button" class="s_btn" value="등록/수정">
							<c:if test="${post2.res_reply_no != null}">
							<input type="button" class="d_btn" value="삭제">
							</c:if>
							<input type="hidden" class="rno" value="${post2.res_reply_no }">
						</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="../footer.jsp"%>
	<script>
		$(".l_btn").click(function(){
			location.href="res_qna_admin";
		})
		$(".s_btn").click(function(){
			
			let rqn = '${post.res_qna_no }';
			let rqe = "답변완료";
			
			if($(".rno").val() == ""){
				$(".rno").val(0);
			}
			let rno = $(".rno").val();
			let rrs = $("#rs").val();
			let rrc = $("#rc").val();

			$.ajax({
				url: 'res_qna_reply',
				type: 'post',
				data: {
					res_qna_no: rqn,
					res_qna_ean: rqe,
					res_reply_no: rno,
					res_reply_title: rrs,
					res_reply_contents: rrc
				},
				success: function() {
					alert('등록 수정 완료');
					location.href="res_qna_admin";
				}
				
			});
		});
		$(".d_btn").click(function(){
			let rno = $(".rno").val();
			
			$.ajax({
				url: 'deleteResReply',
				type: 'delete',
				data: {
					res_reply_no: rno,
				},
				success: function() {
					alert('삭제 완료');
					location.href="res_qna_admin";
				}
				
			});
		});

	</script>
</body>
</html>