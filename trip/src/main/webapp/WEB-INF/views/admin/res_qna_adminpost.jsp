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
                <div class="lnb">
                    <div class="lnb_title">
                        <a href="cust_center">고객센터</a>
                    </div>
                    <ul>
                        <li><a href="#">요소</a></li>
                        <li><a href="#">요소</a></li>
                        <li><a href="#">요소</a></li>
                        <li><a href="#">요소</a></li>
                    </ul>
                </div>
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
							<div class="post_date">
								${post2.res_reply_date }
							</div>
                        </div>
						<div class="post_contents">
							<textarea class="qna_cont" id="rc" placeholder="최대 2500자까지 입력가능">${post2.res_reply_contents }</textarea>
						</div>
						
						<div class="btn_area">
							<input type="button" class="l_btn" value="목록">
							<input type="button" class="s_btn" value="등록/수정">
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
		})

	</script>
</body>
</html>