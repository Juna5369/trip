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
	                    <li><a href="admin_prod">공지사항</a></li>
                        <li><a href="admin_prod_list">상품관리</a></li>
                        <li><a href="#">매출 통계</a></li>
                        <li><a href="#">문의 답변</a></li>
	                </ul>
	            </div>
						<div class="middle_title">상품관리</div>
                <div class="main_post">
                    <div class="prod_post">
						
                        <div class="prod_title">
                        </div>
                        <div class="title_area">
							<div class="post_title">
							${post.prod_name }
							</div>
							<div class="post_date">
							
							</div>
                        </div>
						<div class="post_contents">
						<table>
						<tr>
						<th>상품번호</th><td id="prod_no">${post.prod_no }</td>
						</tr>
						<tr>
						<th>상품이름(상품 타이틀 명)</th><td>${post.prod_name }<br></td>
						</tr>
						<tr>
						<th>이미지</th><td><img src="../img/${post.prod_img }" width="300"></td>
						</tr>
						<tr>
						<th>성인</th><td>${post.prod_price_adult }</td>
						</tr>
						<tr>
						<th>아동</th><td>${post.prod_price_child }</td>
						</tr>
						<tr>
						<th>해쉬태그</th><td>${post.prod_hash }</td>
						</tr>
						<tr>
						<th>주요도시</th><td>${post.prod_city }</td>
						</tr>
						<tr>
						<th>부가설명</th><td>${post.prod_detail }</td>
						</tr>
						<tr>
						<th>테마</th><td>${post.prod_theme }</td>
						</tr>
						<tr>
						<th>최대인원(좌석)</th><td>${post.prod_max_person }</td>
						</tr>
						<tr>
						<th>최소인원</th><td>${post.prod_min_person }</td>
						</tr>
						<tr>
						<th>현재인원</th><td>${post.prod_cur_person }</td>
						</tr>
						<tr>
						<th>출발</th><td>${post.prod_start_date }</td>
						</tr>
						<tr>
						<th>도착</th><td>${post.prod_end_date }</td>
						</tr>
						<tr>
						<th>호텔</th><td>${post.prod_hotel }</td>
						</tr>
						<tr>
						<th>비행기</th><td>${post.prod_plane }</td>
						</tr>
						<tr>
						<th>카테고리</th><td>${post.prod_category }</td>
						</tr>
						</table>
						</div>
						
						<div class="btn_area">
							<input type="button" class="u_btn" value="수정">
							<input type="button" class="d_btn" value="삭제">
							<input type="button" class="l_btn" value="목록">
						</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="../footer.jsp"%>
	<script>
		
	
		$(".l_btn").click(function(){
			location.href="admin_prod_list";
		})
		$(".u_btn").click(function(){
			location.href="admin_prod_update?prod_no="+$("#prod_no").text();
		})
		$(".d_btn").click(function(){
			if(confirm('삭제하시면 복구할 수 없습니다. \n정말로 삭제하시겠습니까?')){
				location.href="admin_prod_delete?prod_no="+ $("#prod_no").text();
				alert("삭제 되었습니다.");
			}
		})
	</script>

</body>
</html>