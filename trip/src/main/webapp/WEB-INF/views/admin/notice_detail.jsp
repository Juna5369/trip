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
	                    <a href="admin">관리페이지</a>
	                </div>
	                <ul>
	                    <li><a href="admin_notice">공지사항</a></li>
                        <li><a href="admin_prod_list">상품관리</a></li>
                        <li><a href="#">매출 통계</a></li>
                        <li><a href="#">문의 답변</a></li>
	                </ul>
	            </div>
                <div class="main_post">
                    <div class="notice_post">
                        <div class="notice_title">공지사항
                        </div>
                        <div class="ad_title_area">
							<div class="ad_post_title">
								<input class="qna_subj" id="rs" type="text" placeholder="제목을 입력해 주세요." value="${post.not_title }">
							</div>
                        </div>
						<div class="post_contents">
							<textarea class="qna_cont" id="rc" placeholder="최대 2500자까지 입력가능">${post.not_contents }</textarea>	
						</div>        
						<div class="btn_area">
							<input type="button" class="l_btn" value="목록">
							<input type="button" class="s_btn" value="수정">
							<input type="button" class="d_btn" value="삭제">
							<input type="hidden" class="nno" value="${post.not_no }">
						</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="../footer.jsp"%>
	<script>
		$(".l_btn").click(function(){
			location.href="admin_notice";
		});
		
		$(".s_btn").click(function(){
			let nno = $(".nno").val();
			let nt = $("#rs").val();
			let nc = $("#rc").val();
			
			$.ajax({
				url: 'updateNotice',
				type: 'put',
				data: {
					not_no: nno,
					not_title: nt,
					not_contents: nc
				},
				success: function() {
					alert('수정 완료');
					location.href="admin_notice";
				}
				
			});
			
		});
		
		$(".d_btn").click(function(){
			let nno = $(".nno").val();
			
			$.ajax({
				url: 'deleteNotice',
				type: 'delete',
				data: {
					not_no: nno,
				},
				success: function() {
					alert('삭제 완료');
					location.href="admin_notice";
				}
				
			});
		});
	</script>
</body>
</html>