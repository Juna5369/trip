<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/webjars/jquery/3.6.2/dist/jquery.js"></script>
<%@include file="regSection.jsp" %>
<link rel="stylesheet" href="css/reg.css">
</head>
<body>
<h1 style=font-weight:bold;text-align:center;margin-top:100px;>회원정보 입력</h1>
<h3 style=font-weight:nomal;text-align:center;color:white;background-color:gray;margin-bottom:50px;>회원님의 정보를 입력해주시길 바랍니다</h3>
	<form action="regMember" method="post" name="frm" >
	<table>
		<tr>
			<td id="content">아이디</td>
			<td><input type="text" name="id" id="input"></td>
			<td><input type="button"onclick="idCheck()" value="아이디 중복체크" id="input"></td>
			<td><div id="demo">${message }</div></td>
		</tr>
		<tr>
			<td id="content">비밀번호</td>
			<td id="input"><input type="password" name="pw" id="input"></td>
		</tr>
		
		<tr>
			<td id="content">이름</td>
			<td id="input"><input type="text"name="name" id="input"></td>
		</tr>
		
		<tr>
			<td id="content">생년월일</td>
			<td id="input"><input type="date" name="birth" id="input"></td>
		</tr>
		
		<tr>
			<td id="content">성별</td>
			<td id="input">여자<input type="radio"name="gender" value="woman"> 남자<input type="radio" name="gender" value="man"></td>
		</tr>
		
		<tr>
			<td id="content">전화번호</td>
			<td id="input"><input type="text" id="input" name="tel" id="input" placeholder=" - 없이 11자리를 입력해주세요"></td>
		</tr>
		
		<tr class="emailtr">
			<td id="content">이메일</td>
			<td id="input"><div id="wholeemail">
			<input type="text"name="email" id="email">@<input type="text" name="email2" id="email"><select id="select" class="input">
												<option>직접입력</option>
												<option>naver.com</option>
												<option>daum.net</option>
												<option>nate.com</option>
											</select></div></td>						
		</tr>
		
		<tr>
			<td id="content">이메일 수신여부</td>
			<td id="input"><input type="checkbox" name="email_check" value="ok" id="input"></td>
		</tr>
		
		<tr>
			<td id="content">우편번호</td>
			<td id="input"><input type="text" id="sample4_postcode" placeholder="우편번호" name="postalcode" class="input"></td>
			<td id="input"><input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="input"></td>
		</tr>
		<tr>
			<td id="content">도로명주소</td>
			<td id="input"><input type="text" id="sample4_roadAddress" placeholder="도로명주소" name="address" class="input"></td>
		</tr>
		<tr>
			<td><span id="guide" style="color: #999; display: none"></span> </td>
		</tr>
		<tr>
			<td id="content">상세주소</td>
			<td id="input"><input type="text" id="sample4_detailAddress" placeholder="상세주소" name="address_detail" class="input"> </td>
		</tr>
		<tr><td id="input"><input type="submit" value="회원가입" onclick="return confirm()" style=border:none id="submit"></td></tr>
	</table> 

	</form>
		<footer>
		<div class="box">
			<div class="footer_text">
				<ul class="bottom_menu">
					<li>회사소개</li>
					<li>|</li>
					<li>이용약관</li>
					<li>|</li>
					<li>개인정보처리방침</li>
					<li>|</li>
					<li>고객센터</li>
					<li>|</li>
					<li>제휴문의</li>
				</ul>
				<div>
					<p class="company_info">회사명 부산 부산진구 중앙대로 749, 혜도빌딩/ 4층 | 대표이사 :
						김어때 ㈜ 111-11-11111</p>
					<p class="company_info">통신판매번호 : 2023-부산진구-11111 | 관광사업자 등록번호:
						제1111-11호 | 전화번호 : 1111-1111</p>
					<p class="company_info">© geogineoddae COMPANY All rights
						reserved.</p>
				</div>
			</div>
		</div>
	</footer>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		$("#select").change(function(){
			if($("#select").val()=="직접입력"){
				$("input[name=email2]").val("");
			}else{
				$("input[name=email2]").val($("#select").val());
			}
		});
			
		function sample4_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var roadAddr = data.roadAddress; // 도로명 주소 변수
							var extraRoadAddr = ''; // 참고 항목 변수

							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraRoadAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraRoadAddr += (extraRoadAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample4_postcode').value = data.zonecode;
							document.getElementById("sample4_roadAddress").value = roadAddr;
							
							// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.

							var guideTextBox = document.getElementById("guide");
							// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
							if (data.autoRoadAddress) {
								var expRoadAddr = data.autoRoadAddress
										+ extraRoadAddr;
								guideTextBox.innerHTML = '(예상 도로명 주소 : '
										+ expRoadAddr + ')';
								guideTextBox.style.display = 'block';

							} else {
								guideTextBox.innerHTML = '';
								guideTextBox.style.display = 'none';
							}
						}
					}).open();
		}
		function idCheck() {
			if (document.frm.id.value == "") {
				alert("아이디를 입력하세요");
				document.frm.id.focus();
				return false;
			}
			let param = document.frm.id.value;
			const xhttp = new XMLHttpRequest();
			xhttp.onload = function() {
				document.getElementById("demo").innerHTML = this.responseText;
			}
			xhttp.open("GET", "idOverCheck?id=" + param, true);
			xhttp.send();
		}
		function confirm(){
			if (document.frm.id.value == "") {
				alert("아이디를 입력해주세요");
				document.frm.id.focus();
				return false;
			} else if (document.frm.pw.value == "") {
				alert("비밀번호를 입력해주세요");
				document.frm.pw.focus();
				return false;
			} else if(document.frm.name.value==""){
				alert("이름을 입력해주세요");
				document.frm.name.focus();
				return false;
			} else if(document.frm.birth.value==""){
				alert("생년월일을 선택해주세요");
				document.frm.birth.focus();
				return false;
			} else if(document.frm.tel.value==""){
				alert("전화번호를 입력해주세요");
				document.frm.tel.focus();
				return false;
			} else if(document.frm.email.value==""){
				alert("이메일을 입력해주세요");
				document.frm.tel.focus();
				return false;
			} else if(document.frm.postalcode.value==""){
				alert("우편번호를 입력해주세요");
				document.frm.postalcode.focus();
				return false;	
			} else if(document.frm.address.value==""){
				alert("주소를 입력해주세요");
				document.frm.address.focus();
				return false;
			} else if(document.frm.address_detail.value==""){
				alert("상세주소를 입력해주세요");
				document.frm.address_detail.focus();
				return false;	
			}else if (document.getElementById("demo").innerText != "사용가능") {
				alert("아이디 중복체크를 먼저 해주세요");
				document.frm.id.focus();
				return false;
			} else {
				
				alert("회원가입 완료")
				return true;
			}
			
		}
		
		
	</script>
</body>
</html>