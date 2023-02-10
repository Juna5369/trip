<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/login.css">
<%@include file="regSection.jsp"%>
</head>
<body>

<h1 style=font-weight:bold;text-align:center;margin-top:100px;>로그인</h1>
<h3 style=font-weight:nomal;text-align:center;color:white;background-color:gray;margin-bottom:50px;>회원님의 아이디 비밀번호를 입력해주세요</h3>
	<div class="btn">
		<button id="btn1" onclick="login()" >로그인</button>
		<button id="btn2" onclick="nonlogin()">비로그인 예약조회</button>
	</div>
<div id="demo">
	
</div>	
<form action="login.do" method="post" name="frm" id="form">
<table>
	<tr>
		<td><input type="text" name="id" id="input" placeholder="아이디 입력"></td>
	</tr>
	<tr>
		
		<td><input type="password" name="pw" id="input" placeholder="비밀번호 입력"></td>
	</tr>
	<td><input type="submit" value="로그인" onclick="return check()" id="submit"></td>
</table>
</form>

    <footer>
        <div class="box">
            <div class="footer_text">
                <ul class="bottom_menu">
                    <li>회사소개</li><li>|</li>
                    <li>이용약관</li><li>|</li>
                    <li>개인정보처리방침</li><li>|</li>
                    <li>고객센터</li><li>|</li>
                    <li>제휴문의</li>
                </ul>
                <div>
                    <p class="company_info">회사명 부산 부산진구 중앙대로 749, 혜도빌딩/ 4층 | 대표이사 : 김어때 ㈜ 111-11-11111</p>
                    <p class="company_info"> 통신판매번호 : 2023-부산진구-11111 | 관광사업자 등록번호: 제1111-11호 | 전화번호 : 1111-1111</p>
                    <p class="company_info">© geogineoddae COMPANY All rights reserved.</p>
                </div>
            </div>
        </div>
    </footer>
	<script>
	
	window.addEventListener("load", function() {
		
		button1.style.backgroundColor = "white";
		button1.style.color = "black";
		button2.style.backgroundColor = "gray";
		button2.style.color = "white";
		
	});
	const button1 = document.querySelector("#btn1");
	const button2 = document.querySelector("#btn2");
		function login() {

			var login = document.querySelector("#form");
			login.style.display="none";

			const xhttp = new XMLHttpRequest();
			xhttp.onload = function() {

				document.getElementById("demo").innerHTML = this.responseText;
			}
			xhttp.open("GET", "openlogin.do", true);
			xhttp.send();
			
		}
		function nonlogin() {

			var login = document.querySelector("#form");
			login.style.display="none";

			const xhttp = new XMLHttpRequest();
			xhttp.onload = function() {

				document.getElementById("demo").innerHTML = this.responseText;
			}
			xhttp.open("GET", "nonlogin.do", true);
			xhttp.send();
		}
		function check() {
			if (document.frm.id.value == "") {
				alert("아이디를 입력해주세요");
				document.frm.id.focus;
				return false;
			} else if (document.frm.pw.value == "") {
				alert("패스워드를 입력해주세요");
				document.frm.pw.focus;
				return false;
			} else {
				return true;
			}
		}
		
		button1.addEventListener("click", function(e) {
			e.target.style.backgroundColor = "white";
			e.target.style.color = "black";
			button2.style.backgroundColor = "gray";
			button2.style.color = "white";
		});
		
		button2.addEventListener("click", function(e) {
			e.target.style.backgroundColor = "white";
			e.target.style.color = "black";
			button1.style.backgroundColor = "gray";
			button1.style.color = "white";
		});
	</script>
</body>
</html>