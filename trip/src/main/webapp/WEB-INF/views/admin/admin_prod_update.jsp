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
	            <%@include file="admin_nav.jsp"%>
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
						<form action="admin_prod_update.do" method="post" enctype="multipart/form-data">
						<div class="post_contents">
							<table>
								<tr>
									<th>상품번호</th><td><input type="text" name="prod_no" value="${post.prod_no }" readonly></td>
								</tr>
								<tr>
									<th>상품이름(상품 타이틀 명)</th><td><input type="text" name="prod_name" value="${post.prod_name }"></td>
								</tr>
								<tr>
									<th>이미지</th><td><input type="file" name="prod_iii" value="${post.prod_img }"></td>
								</tr>
								<tr>
									<th>성인</th><td><input type="text" name="prod_price_adult" value="${post.prod_price_adult }"style="width:130px;padding-right:10px;"> 원</td>
								</tr>
								<tr>
									<th>아동</th><td><input type="text" name="prod_price_child" value="${post.prod_price_child }"style="width:130px;padding-right:10px;"> 원</td>
								</tr>
								<tr>
									<th>해쉬태그</th><td><input type="text" name="prod_hash" value="${post.prod_hash }"></td>
								</tr>
								<tr>
									<th>주요도시</th><td><input type="text" name="prod_city" value="${post.prod_city }"></td>
								</tr>
								<tr>
									<th>부가설명</th><td><input type="text" name="prod_detail" value="${post.prod_detail }"></td>
								</tr>
								<tr>
									<th>테마</th><td><input type="text" name="prod_theme" value="${post.prod_theme }"></td>
								</tr>
								<tr>
									<th>최대인원(좌석)</th><td><input type="text" name="prod_max_person" value="${post.prod_max_person }"></td>
								</tr>
								<tr>
									<th>최소인원</th><td><input type="text" name="prod_min_person" value="${post.prod_min_person }"></td>
								</tr>
								<tr>
									<th>현재인원</th><td><input type="text" name="prod_cur_person" value="${post.prod_cur_person }"></td>
								</tr>
								<tr>
									<th>출발</th><td><input type="datetime-local" id="date" name="prod_start_date" value="${post.prod_start_date }"></td>
								</tr>
								<tr>
									<th>도착</th><td><input type="datetime-local" id="date" name="prod_end_date" value="${post.prod_end_date }"></td>
								</tr>
								<tr>
									<th>호텔</th><td><input type="text" name="prod_hotel" value="${post.prod_hotel }"></td>
								</tr>
								<tr>
									<th>비행기</th><td><input type="text" name="prod_plane" value="${post.prod_plane }"></td>
								</tr>
								<tr>
									<th>카테고리</th><td><select id="prod_category" name="prod_category">
									<c:if test="${post.prod_category eq 'japan' }">
									 <option value="japan">일본/몽골/홍콩</option>
									 <option value="seasia">동남아/대만/아시아</option>
									 <option value="eu">유럽/아프리카/중동</option>
									 <option value="au">사이판/호주/뉴질랜드</option>
									 <option value="usa">하와이/미주/캐나다</option>
									 <option value="kr">부산/지방출발</option>
									</c:if>
									
									<c:if test="${post.prod_category eq 'seasia' }">
									 <option value="seasia">동남아/대만/아시아</option>
									 <option value="japan">일본/몽골/홍콩</option>
									 <option value="eu">유럽/아프리카/중동</option>
									 <option value="au">사이판/호주/뉴질랜드</option>
									 <option value="usa">하와이/미주/캐나다</option>
									 <option value="kr">부산/지방출발</option>
									</c:if>
									<c:if test="${post.prod_category eq 'eu' }">
									 <option value="eu">유럽/아프리카/중동</option>
									 <option value="seasia">동남아/대만/아시아</option>
									 <option value="japan">일본/몽골/홍콩</option>
									 <option value="au">사이판/호주/뉴질랜드</option>
									 <option value="usa">하와이/미주/캐나다</option>
									 <option value="kr">부산/지방출발</option>
									</c:if>
									<c:if test="${post.prod_category eq 'au' }">
									 <option value="au">사이판/호주/뉴질랜드</option>
									 <option value="seasia">동남아/대만/아시아</option>
									 <option value="japan">일본/몽골/홍콩</option>
									 <option value="eu">유럽/아프리카/중동</option>
									 <option value="usa">하와이/미주/캐나다</option>
									 <option value="kr">부산/지방출발</option>
									</c:if>
									<c:if test="${post.prod_category eq 'usa' }">
									 <option value="usa">하와이/미주/캐나다</option>
									 <option value="seasia">동남아/대만/아시아</option>
									 <option value="japan">일본/몽골/홍콩</option>
									 <option value="eu">유럽/아프리카/중동</option>
									 <option value="au">사이판/호주/뉴질랜드</option>
									 <option value="kr">부산/지방출발</option>
									</c:if>
									<c:if test="${post.prod_category eq 'kr' }">
									 <option value="kr">부산/지방출발</option>
									 <option value="usa">하와이/미주/캐나다</option>
									 <option value="seasia">동남아/대만/아시아</option>
									 <option value="japan">일본/몽골/홍콩</option>
									 <option value="eu">유럽/아프리카/중동</option>
									 <option value="au">사이판/호주/뉴질랜드</option>
									</c:if>
									
									</select>
									 </td>
								</tr>
							</table>
						</div>
						<div class="btn_area">							
							<input type="button" class="l_btn" value="목록">
							<input type="submit" class="u_btn" value="수정완료">
						</div>
						</form>
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
	</script>

</body>

</html>