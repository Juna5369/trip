<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거긴어때</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/find.css">
<script src="/webjars/jquery/3.6.2/dist/jquery.js"></script>
</head>
<body>
	<%@include file="header.jsp"%>
	<%@include file="nav.jsp"%>
<div class="container">
<h3>아이디 찾기</h3>
</div>	
<div id="wrap">
<p class="findId">
입력하신 정보와 일치하는 아이디는 아래와 같습니다.
</p>
<table border="1">
	<tr>
		<td style=background-color:gray;color:white;width:200px;text-align:center;>아이디</td>
		<td style=width:600px>${id }</td>
	</tr>
</table>
</div>

	<%@include file="footer.jsp"%>

</body>
</html>