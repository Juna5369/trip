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
							<th>상품포인트</th><td><textarea cols="80" rows="20">
<ul>
    <li>① 편리하고 안전한 진에어 이용</li>
    <li>② 막탄섬 핵심 관광</li>
    <li>③ 과일 시장 방문</li>
    <li>④ 전문가와 함께 수영장 다이빙 강습</li>
    <li>⑤ 여행의 묘미 전신마사지 1시간</li>
    <li>⑥ 맛있는 특식 3회</li>
    <li>⑦ 비교필수! 거품없는 합리적 가격의 선택관광</li>
</ul>
							</textarea></td>
						</tr>
						<tr>
							<th>테마</th><td>
								<select id="prod_theme" name="prod_theme">
									<option value="">없음</option>
									<option value="honey">허니문</option>
									<option value="golf">골프</option>
									<option value="cruise">크루즈</option>
								</select>
							</td>
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
						<tr>
							<th>Weekly 상품</th>
							<td>
							<select id="prod_weekly" name="prod_weekly">
								<option value="">미선택</option>
								<option value="1">1번</option>
								<option value="2">2번</option>
								<option value="3">3번</option>
								<option value="4">4번</option>
							 </select>
							</td>
						</tr>
					</table>
				<input type="submit" value="등록완료" class="u_btn">
				</form>
			</div>
		</div>
	        
	    
	</section>
	<%@ include file="../footer.jsp"%>
</body>
</html>