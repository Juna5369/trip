<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거긴어때</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="/css/login.css">
<script src="/webjars/jquery/3.6.2/dist/jquery.js"></script>
</head>
<body>
	<%@include file="header.jsp"%>
	<%@include file="nav.jsp"%>
	<div class="box">
		<h1>로그인</h1>
		<h3>회원님의 아이디 비밀번호를 입력해주세요</h3>
		
		<div class="btn">
			<button id="btn1" onclick="login()">로그인</button>
			<button id="btn2" onclick="nonlogin()">비로그인 예약조회</button>
		</div>
		
		<div id="demo"></div>
	
		<form action="login.do" method="post" name="frm" id="form">
			<table>
				<tr>
					<td>
						<input type="text" name="id" class="input" placeholder="아이디 입력">
					</td>
				</tr>
				<tr>
					<td>
						<input type="password" name="pw" class="input" placeholder="비밀번호 입력">
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="로그인" onclick="return check1()" id="submit">
					</td>
				</tr>
			</table>
	
			<div id="find">
				<a href='javascript:void(0);' onclick="findId()">아이디 찾기</a> | 
				<a href='javascript:void(0);' onclick="findPw()">비밀번호 찾기</a> | 
				<a href="agree">회원가입</a>
			</div>
		</form>
	
		<form action="findPw" method="post" name="frm2" class="form2">
			<input type="text" name="id" class="input_find" placeholder="아이디 입력">
			<div class="wholeemail">
				<input type="text" name="email" id="email" placeholder="이메일 입력">@
				<input type="text" name="email2" id="email2">
				
				<select id="select" class="input_find2">
					<option>직접입력</option>
					<option>naver.com</option>
					<option>daum.net</option>
					<option>nate.com</option>
				</select>
			</div>
			<input type="submit" value="비밀번호 찾기" onclick="return pwCheck()" id="submit2" class="input2">
		</form>

		<form action="nonMember" method="get" name="frm2" id="form2">
			<table>
				<tr>
					<td><input type="text" name="res_no" id="input_res"
						placeholder="예약번호 입력"></td>
				</tr>
	
				<tr>
					<td><input type="password" name="prod_no" id="input_pro"
						placeholder="상품번호 입력"></td>
				</tr>
				<tr>
					<td><input type="submit" value="예약조회하기"
						onclick="return check2()" id="submit_2"></td>
				</tr>
			</table>
	
			<div id="find">
				<a href='javascript:void(0);' onclick="findId()">아이디 찾기</a> | 
				<a href='javascript:void(0);' onclick="findPw()">비밀번호 찾기</a> | 
				<a href="agree">회원가입</a>
			</div>
		</form>
	</div>
	<%@include file="footer.jsp"%>
	<script>
		window.addEventListener("load", function() {

			button1.style.backgroundColor = "white";
			button1.style.color = "black";
			button2.style.backgroundColor = "gray";
			button2.style.color = "white";

		});
		$("#select").change(function() {
			if ($("#select").val() == "직접입력") {
				$("input[name=email2]").val("");
			} else {
				$("input[name=email2]").val($("#select").val());
			}
		});

		const button1 = document.querySelector("#btn1");
		const button2 = document.querySelector("#btn2");
		function login() {

			var login = document.querySelector("#form");
			var login2 = document.querySelector("#form2");
			login2.style.display = "none";
			login.style.display = "block";
			

		}
		function nonlogin() {

			var login1 = document.querySelector("#form");
			var login2 = document.querySelector("#form2");
			login1.style.display = "none";
			login2.style.display = "block";

			
		}
		function check1() {
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
		function check2() {
			if (document.frm2.res_no.value == "") {
				alert("예약번호를 입력해주세요");
				document.frm2.res_no.focus;
				return false;
			} else if (document.frm2.prod_no.value == "") {
				alert("상품번호를 입력해주세요");
				document.frm2.prod_no.focus;
				return false;
			} else {
				return true;
			}
		}
		function idCheck() {
			if (document.frm1.name.value == "") {
				alert("이름을 입력해주세요");
				document.frm1.name.focus;
				return false;
			} else if (document.frm1.tel.value == "") {
				alert("전화번호를 입력해주세요");
				document.frm1.tel.focus;
				return false;
			} else {
				return true;
			}
		}
		function pwCheck() {
			if (document.frm2.id.value == "") {
				alert("아이디를 입력해주세요");
				document.frm2.id.focus;
				return false;
			} else if (document.frm2.email.value == "") {
				alert("이메일을 입력해주세요");
				document.frm2.email.focus;
				return false;
			} else if (document.frm2.email2.value == "") {
				alert("이메일을 입력해주세요")
				document.frm2.email2.focus;
				return false;
			} else {
				return true;

			}
		}

		button1.addEventListener("click", function(e) {
			e.target.style.backgroundColor = "white";
			e.target.style.color = "black";
			e.target.style.backgroundImage = "url('img/check_icon.png')";
			button2.style.backgroundColor = "gray";
			button2.style.color = "white";
			button2.style.backgroundImage = "url()";
		});

		button2.addEventListener("click", function(e) {
			e.target.style.backgroundColor = "white";
			e.target.style.color = "black";
			e.target.style.backgroundImage = "url('img/check_icon.png')";
			button1.style.backgroundColor = "gray";
			button1.style.color = "white";
			button1.style.backgroundImage = "url()";
		});
		function findId() {
			document.querySelector("h3").innerText = "회원님의 이름과 전화번호를 입력해주세요";
			document.querySelector("h1").innerText = "아이디찾기";
			var login = document.querySelector("#form");
			login.style.display = "none";
			button1.style.display = "none";
			button2.style.display = "none";

			const xhttp = new XMLHttpRequest();
			xhttp.onload = function() {

				document.getElementById("demo").innerHTML = this.responseText;
			}
			xhttp.open("GET", "idPop", true);
			xhttp.send();

		}
		function findPw() {

			document.querySelector("h3").innerText = "회원님의 아이디와 이메일을 입력해주세요";
			document.querySelector("h1").innerText = "비밀번호찾기";
			var login = document.querySelector("#form");
			const form = document.querySelector(".form2");
			form.style.display = "block";
			login.style.display = "none";
			button1.style.display = "none";
			button2.style.display = "none";
		}
	</script>
</body>
</html>