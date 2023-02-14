<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/webjars/jquery/3.6.2/dist/jquery.js"></script>
</head>
<body>
	<form action="update.do" method="post" name="frm" >
	<table>
		<tr>
			<td id="content">아이디</td>
			<td><input type="text" name="id" id="uinput" value="${mv.id }"></td>
			
		<tr>
			<td id="content">비밀번호</td>
			<td id="input"><input type="password" name="pw" class="input"></td>
		</tr>
		
		<tr>
			<td id="content">이름</td>
			<td id="input"><input type="text"name="name" class="input" value="${mv.name }" ></td>
		</tr>
		
		<tr>
			<td id="content">생년월일</td>
			<td id="input"><input type="date" name="birth" class="input" value=${mv.birth }></td>
		</tr>
		<tr>
			<td id="content">전화번호</td>
			<td id="input"><input type="text" id="input" name="tel" class="input" value="${mv.tel }" placeholder=" - 없이 11자리를 입력해주세요"></td>
		</tr>
		
		<tr class="emailtr">
			<td id="content">이메일</td>
			<td id="input"><div class="wholeemail">
			<input type="text"name="email" id="email" value="${mv.email }">@<input type="text" name="email2" id="email2"><select id="select" class="input">
												<option>직접입력</option>
												<option>naver.com</option>
												<option>daum.net</option>
												<option>nate.com</option>
											</select></div></td>						
		</tr>
		
		<tr>
			<td id="content">이메일 수신여부</td>
			<td id="input"><input type="checkbox" name="email_check" value="ok" class="input"></td>
		</tr>
		
		<tr>
			<td id="content">우편번호</td>
			<td id="input"><input type="text" id="sample4_postcode" placeholder="우편번호" name="postalcode" class="input" value="${mv.postalcode }"></td>
			<td id="input"><input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="input"></td>
		</tr>
		<tr>
			<td id="content">도로명주소</td>
			<td id="input"><input type="text" id="sample4_roadAddress" placeholder="도로명주소" name="address" class="input" value="${mv.address }"></td>
		</tr>
		<tr>
			<td><span id="guide" style="color: #999; display: none"></span> </td>
		</tr>
		<tr>
			<td id="content">상세주소</td>
			<td id="input"><input type="text" id="sample4_detailAddress" placeholder="상세주소" name="address_detail" class="input" value="${mv.address_detail }"> </td>
		</tr>
		<tr><td id="input"><input type="submit" value="수정하기" onclick="return confirm()" style=border:none id="submit"></td></tr>
	</table> 

	</form>
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
	</script>
</body>
</html>