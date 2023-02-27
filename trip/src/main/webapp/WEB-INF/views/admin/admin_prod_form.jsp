<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<form action="insertProd.do" method="post" enctype="multipart/form-data"><br>
					<table>
						<tr>
							<th>상품이름(상품 타이틀 명)</th><td><input type="text" name="prod_name"></td>
						</tr>
						<tr>
							<th>성인</th><td><input type="text" name="prod_price_adult"style="width:130px;padding-right:10px;"> 원</td>
						</tr>
						<tr>
							<th>아동</th><td><input type="text" name="prod_price_child"style="width:130px;padding-right:10px;"> 원</td>
						</tr>
						<tr>
							<th>해쉬태그</th><td><input type="text" name="prod_hash" value="#"></td>
						</tr>
						<tr>
							<th>주요도시</th><td><input type="text" name="prod_city"></td>
						</tr>
						<tr>
							<th>이미지</th><td><input type="file" name="prod_iii"></td>
						</tr>
						<tr>
							<th>부가설명</th><td><input type="text" name="prod_detail"></td>
						</tr>
						<tr>
							<th>테마</th><td><input type="text" name="prod_theme"></td>
						</tr>
						<tr>
							<th>최대인원(좌석)</th><td><input type="text" name="prod_max_person"></td>
						</tr>
						<tr>
							<th>최소인원</th><td><input type="text" name="prod_min_person"></td>
						</tr>
						<tr>
							<th>현재인원</th><td><input type="text" name="prod_cur_person"></td>
						</tr>
						<tr>
							<th>출발</th><td><input type="datetime-local" id="date"name="prod_start_date"></td>
						</tr>
						<tr>
							<th>도착</th><td><input type="datetime-local"id="date" name="prod_end_date"></td>
						</tr>
						<tr>
							<th>호텔</th><td><input type="text" name="prod_hotel"></td>
						</tr>
						<tr>
							<th>비행기</th><td><input type="text" name="prod_plane"></td>
						</tr>
						<tr>
							<th>카테고리</th>
							<td>
							<select id="prod_category" name="prod_category">
								<option value="japan">일본/몽골/홍콩</option>
								<option value="seasia">동남아/대만/아시아</option>
								<option value="eu">유럽/아프리카/중동</option>
								<option value="au">사이판/호주/뉴질랜드</option>
								<option value="usa">하와이/미주/캐나다</option>
								<option value="kr">부산/지방출발</option>
							 </select>
							</td>
						</tr>
					</table>
				<input type="submit" value="가입완료" class="u_btn">
				</form>
			</div>
		</div>
	        
	    
	</section>
	<%@ include file="../footer.jsp"%>
</body>
</html>