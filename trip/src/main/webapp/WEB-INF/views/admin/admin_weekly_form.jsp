<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/adminprod2.css">
</head>
<body>
	<%@ include file="../header.jsp"%>
	<%@ include file="../nav.jsp"%>
	<section class="main">
	    <div class="box">
	        <div class="admin_box">
	            <%@include file="admin_nav.jsp"%>
				<form action="weeklyupdate.do" method="post" enctype="multipart/form-data"><br>
					<table>
					<tr>
						<th>Weekly 추천</th>
							<td>
							<select id="prod_main_point" name="prod_main_point">
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
						<th>Weekly 추천 1</th><td>${post.prod_no }</td>
					</tr>
					<tr>
						<th>Weekly 추천 2</th><td>2</td>
					</tr>
					<tr>
						<th>Weekly 추천 3</th><td>3</td>
					</tr>
					<tr>
						<th>Weekly 추천 4</th><td>4</td>
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