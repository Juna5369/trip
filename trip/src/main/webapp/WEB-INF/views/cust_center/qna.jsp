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
                        <li><a href="faq">자주찾는 질문</a></li>
                        <li><a onclick="goQNA()">1:1 문의</a></li>
                        <li><a onclick="go_res_qna_list()">1:1 문의내역</a></li>
                        <li><a href="notice">공지사항</a></li>
                    </ul>
                </div>
                <div class="main_qna">
                    <div class="qna_title">1:1 게시판 문의</div>
                    <div class="qna_sub">
                        <strong>문의하시기 전 확인해 주세요</strong>
                        <p>고객님의 소중한 의견을 빠르고 정확하게 해결하기 위해 최선을 다하겠습니다.</p>
                        <p>문의에 대한 답변은 <em>[1:1 문의내역]</em> 에서 확인할 수 있습니다.</p>
                    </div>
                    <div class="qna_tbl_box">
                        <table class="qna_tbl">
                            <tbody>
                                <tr>
                                    <th>작성자</th>
                                    <td>${name }</td>
                                </tr>
                                <tr>
                                    <th>예약번호</th>
                                    <td>
	                                    <select name="res_no">
	                                    
	                                    </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th>제목</th>
                                    <td><input class="qna_subj" type="text" placeholder="제목을 입력해 주세요."></td>
                                </tr>
                                <tr>
                                    <th>문의내용</th>
                                    <td><textarea class="qna_cont" placeholder="최대 2500자까지 입력가능"></textarea></td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="qna_btn_box">
                            <input type="button" class="btn_c" value="취소">
                            <input type="button" class="btn_s" value="등록">
                        </div>
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
				type: 'get',
				url: '/getResInfo',
				data: {
					id: '${sessionScope.id }'
				},
				success: function(data){
					
					for(i = 0; i < data.length; i++){
						$("select[name='res_no']").append('<option>' 
								+ data[i].res_no + '</option>');
					}
				}

			});
		});
		
		$(".btn_s").click(function(){
			
			let id = '${sessionScope.id }';
			let res_no = $("select[name='res_no']").val();
			let res_qna_title = $(".qna_subj").val();
			let res_qna_contents = $(".qna_cont").val();
			
			$.ajax({
				type: 'post',
				url: '/postQna',
				data: {
					id: id,
					res_no: res_no,
					res_qna_title: res_qna_title,
					res_qna_contents: res_qna_contents
				},
				success: function(data){
					alert("1:1 문의 등록이 완료되었습니다.");
					location.href="res_qna_list";
				}
			});
		});
		
		$(".btn_c").click(function(){
			location.href="cust_center";
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