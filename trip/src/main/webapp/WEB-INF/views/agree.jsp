<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/css/agree.css">
<link rel="stylesheet" href="/css/main.css">
<script src="/webjars/jquery/3.6.2/dist/jquery.js"></script>
</head>
<body>

	<div class="wrap">
		<div class="header">

			<h1>
				<a href="/"> <img src="/img/geogineoddae_logo.png">
				</a>
			</h1>
			<h2 class="h2">개인 회원가입</h2>
		</div>
		<div class="container">
			<div class="inner">
				<div class="step1">
					<div class="chk_group all_agree">
						<ul class="clearfix">
							<li><input type="checkbox" class="check_all" id="chk1">
								<label for="chk1"><span></span> 전체약관에 동의합니다. </label></li>

						</ul>

					</div>
					<p class="mgb_20">필수동의항목</p>
					<div class="chk_group check_agree_box">
						<ul class="clearfix">
							<li><input type="checkbox" id="chk2" class="chk2"> <label
								for="chk2" class="AC1" id="AC1" title="거긴어때 이용약관"> <span
									class></span> "거긴어때 이용약관(필수)"
							</label> <a href="javascript:void(0);" class="agree_view" onclick="openModal()"> <span class="blind">약관보기</span>
							</a></li>
							<li><input type="checkbox" id="chk3"> <label
								for="chk3"> <span></span> "개인정보 수집 및 이용에 대한 안내(필수)"
							</label> <a href="javascript:void(0);" class="agree_view" onclick="openModal()"> <span class="blind">약관보기</span>
							</a></li>
							<li><input type="checkbox" id="chk4"> <label
								for="chk4"> <span></span> "개인정보 위탁 안내(필수)"
							</label> <a href="javascript:void(0);" class="agree_view" onclick="openModal()"> <span class="blind">약관보기</span>
							</a></li>
						</ul>
						<p class="notice_txt">* 개인정보의 수집, 제공 및 활요에 동의하지 않을 권리가 있으며,
							미동의시 회원가입 및 여행서비스의 제공이 제한됩니다.</p>
					</div>
					<p>선택동의항목</p>
					<div class="chk_group check_agree_box sel_agree">
						<ul class="clearfix">
							<li><input type="checkbox" id="chk5"> <label
								for="chk5"> <span></span> "고유식별정보 수집 및 이용에 대한 안내(선택)"
							</label> <a href="javascript:void(0);" class="agree_view" onclick="openModal()"> <span class="blind">약관보기</span>
							</a></li>
							<li><input type="checkbox" id="chk6"> <label
								for="chk6"> <span></span> "개인정보 제3자 제공 및 공 elt유 안내(선택)"
							</label> <a href="javascript:void(0);" class="agree_view" onclick="openModal()"> <span class="blind">약관보기</span>
							</a></li>

							<li><input type="checkbox" id="chk7"> <label
								for="chk7"> <span></span> "개인정보 수집 및 이용에 대한 공유 안내(선택)"
							</label> <a href="javascript:void(0);" class="agree_view" onclick="openModal()"> <span class="blind">약관보기</span>
							</a></li>

						</ul>
						<p class="notic_txt">* 개인정보 제3자 제공 및 공유에 동의하지 않을 권리가 있으며 ,
							미동의시 일부 여행서비스의 제공이 제한될 수 있습니다.</p>
					</div>
				</div>
				<div class="btn_area">
					<a href="javascript:void(0);" onclick="return agree()"
						class="btn_agree_"> <span class="blind">동의합니다</span>
					</a> <a href="/" class="btn_no_agree"> <span class="blind">동의하지않습니다</span>
					</a>
				</div>
			</div>

		</div>

	</div>
	 <div class="modal">
        <div class="modal-content">
          <span class="close">&times;</span>
			<p>제1조 목적 본 이용약관은 “본 사이트"의 서비스의 이용조건과 운영에 관한 제반사항 규정을 목적으로 합니다.<br><br>

				제2조 용어의 정의 본 약관에서 사용되는 주요한 용어의 정의는 다음과 같습니다.<br>
				① 회원 : 본 사이트의 약관에 동의하고 개인정보를 제공하여 회원등록을 한 자로서, 사이트와의 이용계약을 체결하고 사이트를 이용하는 이용자를 말합니다.<br>
				② 이용계약
				: 본 사이트 이용과 관련하여 사이트와 회원간에 체결 하는 계약을 말합니다.<br>
				 ③ 회원 아이디(이하 "ID") : 회원의
				식별과 회원의 서비스 이용을 위하여 회원별로 부여하는 고유한 문자와 숫자의 조합을 말합니다.<br>
				④ 비밀번호 : 회원이
				부여받은 ID와 일치된 회원임을 확인하고 회원의 권익보호를 위하여 회원이 선정한 문자와 숫자의 조합을 말합니다.<br>
				 ⑤ 운영자
				: 서비스에 홈페이지를 개설하여 운영하는 운영자를 말합니다.<br>
				 ⑥ 해지 : 회원이 이용계약을 해약하는 것을 말합니다.<br><br>
				제3조 약관외 준칙 운영자는 필요한 경우 별도로 운영정책을 공지 안내할 수 있으며, 본 약관과 운영정책이 중첩될 경우 운영정책이 우선 적용됩니다.<br></p>
		</div>
      </div>
      
	<%@include file="footer.jsp"%>
	<script>
	function openModal() {
		  document.querySelector('.modal').style.display = 'block';
		}

		// 모달창 닫기
		function closeModal() {
		  document.querySelector('.modal').style.display = 'none';
		}

		// 모달창 닫기 버튼 클릭 이벤트
		document.querySelector('.close').addEventListener('click', closeModal);

		// 모달창 외부 클릭 이벤트
		window.addEventListener('click', function(event) {
		  if (event.target == document.querySelector('.modal')) {
		    closeModal();
		  }
		});
	
	
		$(".check_all").change("click", function() {
			var $this = $(this);
			var checked = $this.prop('checked');
			for (var i = 1; i < 8; i++) {

				$('input[id=chk' + i + ']').prop('checked', checked);
			}

		});

		function agree() {

			
				if ($('input[id=chk2]').prop('checked') && $('input[id=chk3]').prop('checked') &&$('input[id=chk4]').prop('checked')) {
					location.href = "regMember";
					return true;
				}else{
					alert("필수항목을 모두 체크해주세요.")
					return false;
				}
				
					
				

			

		}
	</script>
</body>
</html>