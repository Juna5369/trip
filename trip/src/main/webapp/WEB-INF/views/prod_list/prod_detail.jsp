<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%	
	request.setCharacterEncoding("utf-8");
	session.setAttribute("id", "over");
	session.setAttribute("prod_name", "대박여행");
	//session.setAttribute("prod_no", "222");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/detail_style.css">
<link rel="stylesheet" href="../css/detail_style_2.css">
</head>
<body>
<%@include file="../header.jsp" %>
<%@include file="../nav.jsp" %>
 <section class="main2">
<c:forEach var="vo" items="${list }">
<fmt:parseDate var="start" value="${vo.prod_start_date }" pattern="yyyy-MM-dd HH:mm:ss"/>
<fmt:parseDate var="end" value="${vo.prod_end_date }" pattern="yyyy-MM-dd HH:mm:ss"/>
<fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.prod_price_adult }" var="price_adult" />
<fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.prod_price_child }" var="price_child" />
    <div id="wrap">
        <div id="container">
            <div id="product_main">
                <!-- 상품상세보기 메인 감싸기 -->

                <div ID="travel_rool">
                    <!-- 국룰 범위(배경색 회색) -->
                    <div id="travel_rool_text">
                        <!-- 국룰 텍스트 -->
                        여행 전 입국 규정을 확인하세요.</div>
                </div>

                <div id="product_img">
                    <!-- 상품이미지!!!!!!!! -->
                    <img src="../img/${vo.prod_img }" width="700px" height="434px"></div>

                <div id="product_right">
                    <!-- 상품정보 감싸기! 오른쪽부분임! -->

                    <div id="product_title">
                        <!-- 대충 상품 제목 -->
                        ${vo.prod_name }</div>
                        <div id="product_info">
	                        <!-- 프로덕트 내용 -->
	                        <div style="margin-top:10px;">
	                        <em id="product_detail">
	                            ${vo.prod_detail }
	                        </em>
	                        </div>
	                        <div id="hash">
		                        <em id="product_hash">
		                            ${vo.prod_hash }
		                        </em>
	                        </div>
	                        
	                        <div class="product_ico" id="ico">
		                        <div>
		                        	<img src="../img/icon/ico_date.png" width="40">
			                        <div class="ico1">
				                        <em style="font-size:13px;">2박3일</em>
			                        </div>
		                        </div>
		                        <div class="ico2">
				                        <img src="../img/icon/ico_flight01.png" width="40" >
			                        <div>
				                        <em style="font-size:13px; ">LCC</em>
			                        </div>
		                        </div>
		                        <div class="ico3">
				                        <img src="../img/icon/ico_shopping01.png"width="40" >		                        
			                        <div>
				                        <em style="font-size:13px;">쇼핑 1회</em>
			                        </div>
			                    </div>
				                <div class="ico4">
				                        <img src="../img/icon/ico_freetour.png" width="40" >		                        
			                        <div>
				                        <em style="font-size:13px;">자유시간O</em>
			                        </div>
		                    	</div>
	                        </div>
						<div class="product_price">
						<p>성인 1명</p>
						<p><em style="color:black;font-weight:bold; font-size:23px;">${price_adult } </em> 원</p>
						</div>
	                        
                    </div><!-- 인포끝 -->

                </div>
            </div>
            <div id="travel_info">
                <aside>
						<div class="res_travel">
							<div class="res_form">
								<form name="frm" action="" method="">
									<div id="txt_1">인원선택</div>
									<div id="txt_box">
										<span id="many_txt">성인</span>
										<p id="ad_price">${vo.prod_price_adult }</p>
										<span>원</span>
									</div>

									<div id="res_box">
										<div class="many_box">
											<input type="button" name="minus_ad" id="minus_ad"
												class="btn_1 minus_1" value=""> <input type="text"
												name="ad_val" id="ad_val" class="input_1" value="1">
											<input type="button" name="plus_ad" id="plus_ad"
												class="btn_1 plus_1" value="">
										</div>
									</div>
									<br>



									<div id="txt_box">
										<span id="many_txt">아동</span>
										<p id="ch_price">${vo.prod_price_child }</p>
										<span>원</span>
									</div>


									<div id="res_box">
										<div class="many_box">
											<input type="button" name="minus_ch" id="minus_ch"
												class="btn_1 minus_1" value=""> <input type="text"
												name="ch_val" id="ch_val" class="input_1" value="0">
											<input type="button" name="plus_ch" id="plus_ch"
												class="btn_1 plus_1" value="">
										</div>
									</div>

									<div id="total_box">

										<div id="total_sum">총금액</div>
										<input type="text" name="total" id="total" class="input_2"
											value="0" readonly>
										<div id="sp">원</div>
									</div>

									<div id="res_info">
										<div id="res_infotxt">유류할증료&제세공과금 포함<br></div>
										
										<div id="res_infotxt">거긴어때 마일리지 6,546적립예정</div>
										
									</div>


									<div id="res_slide">
										<input type="button" name="res_sld" id="res_sld"
											value="상품가격 안내"> <input type="button" name="sld_img"
											id="sld_img" class="btn_4" value=""> <input
											type="hidden" name="slide" id="slide" value="0">

										<div id="slide_box">
											<ul>
												<li>유류할증료 및 제세공과금은 유가와 환율에 따라 변동 될 수 있습니다.</li>
												<li>아동, 유아요금은 성인 2인과 같은 방 사용조건이며, 미충족시 아동추가 요금이 발생합니다.</li>
												<li>1인 객실 사용시 추가요금 발생됩니다.<br>(1인 객실 사용료 :
													350,000원)
												</li>
											</ul>
										</div>
									</div>

									<div id="btn_box">
										<input type="button" name="res_many" id="res_many"
											class="btn_2" value="예약하기"> <input type="button"
											name="res_like" id="res_like" class="btn_3" value="">
										<input type="hidden" name="like" id="like" value="0">
										<input type="hidden" name="res_id" id="res_id" value="${sessionScope.id }">
										<input type="hidden" name="prod_no" id="prod_no" value="1">
									</div>

								</form>
							</div>
						</div>
					</aside>
                
                <!-- 설명전체 -->
                <div id="travel_main_info">
                    <!-- 메인 좌측설명. -->
                    <div id="travel_main_schedule">
                        <br>
                        <h3>여행 주요 일정</h3>
                        <br>
                        <em>3박 5일 진에어</em>
                        
                        <p>출발 : <fmt:formatDate value="${start }" pattern="yyyy년 MM월 dd일"/> → 총 04시간 40분 소요</p>
                        
                        <p>도착 : <fmt:formatDate value="${end }" pattern="yyyy년 MM월 dd일"/> → 04시간 25분 소요</p>
                        
                        <p>여행도시 : ${vo.prod_city }</p> 
                        <p>예약현황 예약 : ${vo.prod_cur_person }명 좌석 : ${vo.prod_max_person }석 (최소출발 : 성인 ${vo.prod_min_person }명)</p> 
                    </div>
                    <div id="travel_price_detail">
                        <br>
                        <h3>상품가격</h3>
                        <br>
                        <table>
                            <thead>
                                <tr>
                                    <th style="border-left: 0px solid white;">구분</th><th>성인<br>만 12세 이상</th>
                                    <th>아동<br>만 12세 미만 </th>
                                    <th style="border-right: 0px solid white;">유아<br>만 2세 미만 </th >
                                </tr>
                        </thead>
                            <tbody>

                                <td style="border-left: 0px solid white; text-align: center;">기본상품</td><td style="text-align: center;"><em id="product_price">${vo.prod_price_adult}</em>원<br>
                                    유류할증료 104,600원 포함(db)</td>
                                <td style="text-align: center;"><em id="product_price">${vo.prod_price_child}</em>원<br>

                                    유류할증료 104,600원 포함</td>
                                <td style="border-right: 0px solid white; text-align: center;">
                                    성인 경비의 <em id="product_price">10%</em><br>    
                                </td>                                
                            </tbody>
                        </table>
                        <div id="travel_price_detail_text">
                            <ul>
                                <li>
                                유류할증료 및 제세공과금은 유가와 환율에 따라 변동될 수 있습니다.
                            </li>
                            <li>
                                아동, 유아요금은 성인 2인과 같은 방 사용조건이며, 미충족시 아동추가 요금이 발생합니다.<br>
                            </li>
                            <li>
                                1인 객실 사용시 추가요금 발생됩니다.<br>
                            </li>
                            <li>
                                1인 객실 사용료 : 140,000원<br>
                            </li>
                            </ul>
                        </div>
                    </div>
                    <div id="theme_detail">
                        <!-- 테마 설명 스타트 -->
                        <br>
                        <!-- (테마 쪽으로넘어감)<br> -->
                        <hr>
                        <div id="wrap_theme_img"><!-- 이미지덮개 -->
                            <div id="theme_detail_img">
                                <br>휴양+레저
                                <br>나만의 디자인 투어!
                                <br>온전한 나만의 시간, must do 액티비티 추천</div>
                                <img src="../img/theme1_test.jpg" width="837px">
                        </div>
                        <div id="theme_detail_title">
                                <!-- 타이틀 -->
                            <h3 style="padding: 10px 0 10px 0;">테마소개</h3>
                            </div>
                            <div id="theme_detail_info">
                            <!-- 소개시작!-->
                            <hr>
                            <br>
                            <!-- (아래부터 대충 소개 내용입니다) -->
                            <h4>상품 핵심 포인트</h4>
                            <br>
                            <ul>
                                <li>① 편리하고 안전한 진에어 이용</li>
                                <li>② 막탄섬 핵심 관광</li>
                                <li>③ 과일 시장 방문</li>
                                <li>④ 전문가와 함께 수영장 다이빙 강습</li>
                                <li>⑤ 여행의 묘미 전신마사지 1시간</li>
                                <li>⑥ 맛있는 특식 3회</li>
                                <li>⑦ 비교필수! 거품없는 합리적 가격의 선택관광</li>
                            </ul>
                            <br>
                            <h4>거긴어때와 함께, 즐거운 안심여행 "SAFETY&JOY"</h4>
                            <br>
                            <ul>
                                <li>① 호텔/관광지: 국가별 안전지침 준수</li>
                                <li>② 차량: 차량 소독 및 손소독제 비치</li>
                                <li>③ 가이드: 백신 접종 완료, 마스크착용, 체온 측정</li>
                                <li>④ 코로나 지원안: 상세안내 (바로가기)</li>
                            </ul>
                                <br>
                            <h4>해외 긴급 의료지원 서비스 “어시스트카드"</h4>
                                <br>
                            <ul>
                                <li>① 365일 24시간한국알람센터운영</li>
                                <li>② 여행중긴급도움필요시의료지원 / 긴급상황지원</li>
                                <li>③ 서비스상세안내 (바로가기)</li>
                            </ul>
                                <br>
                            
                            <hr>
                            <br>
                            <h4>일본 출입국 및 검역 규정</h4><br>
                            <ul>
                                <li>
                                    ※ 일본 관광 입국 시 백신 예방접종 증명서(3차) 또는 PCR 음성확인서 필수
                                    ※ 출입국 규정은 상황에 따라 변경될 수 있습니다.
                                </li> 
                            </ul>
                            <br>
                            <br>
                            <hr>
                        </div>
                        <div class="termsofservice">
                            <!-- 약관 -->
                            <h3 style="padding-top:10px;">상품약관</h3>
                            <div class="yakwan"><input type="button" value="약관상세보기" onclick="go()"></div>
                            <br>
                            <hr>
                            <br>본 상품의 예약과 취소는 <em>국외여행 특별약관</em>이 적용됨을 알려드립니다.
                            <br>특별약관 적용 시 표준약관보다 높은 취소수수료가 부과될 수 있으며 이 경우 동의절차를 구합니다.
                            <br><br>
                            <h4>계약금 규정</h4>
                            <br><em>
                                예약일 기준 3일 이내에 1인당 300,000원을 납입하셔야합니다.
                            </em>
                            <br><br>
                            <h4>취소료 규정</h4>
                            <br>이 상품은 항공(또는 선박)좌석 또는 호텔객실에 대한 비용을 선납해 놓은 상품으로서, 취소시 하단의 취소료가 적용됨을 양해해 주시기 바랍니다.
                            <div href=#none id="show" onclick=
                            "if(hide.style.display=='none') {
                                hide.style.display='';show.style.display='none'} else 
                                {hide.style.display='none';}">▼더보기</div>
                            <div id="hide" style="display: none">
                                <br>여행 취소시 국외여행표준약관 제 16조 소비자분쟁해결규정에 따라 아래의 비율로 취소료가 부과됩니다. (단, 당사의 귀책사유로 여행출발 취소 경우에도 동일한 규정이 적용됩니다.
                                <br>
                                <br>가. 여행개시 30일전(~30)까지 통보시(2023년02월23일 이전): 계약금환급
                                <br>나. 여행개시 20일전(29~20)까지 통보시(2023년02월24일~2023년03월05일): 여행요금의 10% 배상
                                <br>다. 여행개시 10일전(19~10)까지 통보시(2023년03월06일~2023년03월15일): 여행요금의 15% 배상
                                <br>라. 여행개시 8일전(9~8)까지 통보시(2023년03월16일~2023년03월17일): 여행요금의 20% 배상
                                <br>마. 여행개시 1일전(7~1)까지 통보시(2023년03월18일~2023년03월24일): 여행요금의 30% 배상
                                <br>바. 여행개시 당일 통보시: 여행요금의 50%배상
                                <br>
                                <br>※ 여행출발일 이전 상해,질병,입원,사망등으로 여행을 취소하는 경우 [진단서] 증빙 근거하여 환불이 가능하며 출발일 기준 7일이내 증빙서류를 제출해주시기 바랍니다.(상세규정은 약관참조)
                                <br>
                                <br>
                                <h4>최저출발인원 미 충족 시 계약해제</h4>

                                <br>당사는 최저행사인원이 충족되지 아니하여 여행계약을 해제하는 경우 여행개시 7일전까지 여행자에게 통지하여야 합니다.
                                <br>당사가 여행참가자 수 미달로 전항의 기일내 통지를 하지 아니하고 계약을 해제하는 경우 이미 지급받은 계약금 환급 외에 다음 각 항목의 1의 금액을 여행자에게 배상하여야 합니다.
                                <br>가. 여행개시 7일전(~7)까지 통지시 : 계약금 환급
                                <br>나. 여행개시 1일전(6~1)까지 통지시 : 여행요금의 30% 배상
                                <br>다. 여행개시 당일 통지시 : 여행요금의 50% 배상
                                <br><br>
                                <h4>감염병의 발생으로 당사 또는 여행자의 계약해제</h4>
                                <br>
                                <br>① 감염병 등의 발생으로 아래 각 호의 1에 해당하는 사유가 있는 경우 ‘당사’ 또는 여행자는 제 16조 제 1항의 손해배상액을 지급하지 아니하고 계약해제를 할 수 있습니다.
                                <br>가. 외국정부가 우리 국민에 대해 입국금지·격리조치 등 이에 준하는 명령을 발령하여 계약을 이행할 수 없는 경우
                                <br>나. 계약체결 이후 외교부가 여행지역·국가에 여행경보 3단계(철수권고)·4단계(여행금지)를 발령하여 계약을 이행할 수 없는 경우
                                <br>다. 항공·철도·선박 등의 운항이 중단되어 계약을 이행할 수 없는 경우
                                <br>② 계약체결 이후 외교부가 여행지역·국가에 특별여행주의보를 발령하거나 세계보건기구(WHO)가 감염병 경보 5단계 또는 6단계(세계적 대유행, 펜데믹)를 선언하여 계약을 이행하기 상당히 어려운 경우에는 ‘당사’ 또는 ‘여행자’는 계약해제를 할 수 있으며, 제 16조 제 1항의 손해배상액의 50%를 감경합니다.
                                <br>(단, 세계보건기구(WHO)가 감염병 경보 5단계를 선언한 경우는 감염병이 발생한 해당지역에 한함)
                                <div class="yakwan_no" onclick="
                                if(hide.style.display=='none') {
                                    hide.style.display='';show.innerText=''
                                } else {
                                    hide.style.display='none';
                                    show.style.display='block';
                                    show.innerHTML='▼더보기'}"></a>
                          ▲ 접기</div>
                            </div>
                        </div>
                        <p class="yui_title" style="font-size: 20px;"><em>예약시 유의사항</em></p>
                        <div class="yui" style="padding-left: 20px;">
                            <em style="color: red; font-weight:bold">코로나바이러스감염증-19 관련 안내</em>
                            <br>
                            <br>[국내 코로나19 검사 장소]
                            <br>-선별진료소 <a href="#none">☞바로가기</a>
                            <br>-인천공항 코로나 19 검사센터 <a href="#none">☞바로가기</a>
                            <br>[백신접종증명서 출력]
                            <br>-국내 예방접종완료자 증명서 출력 <a href="#none">☞바로가기</a>
                            <br>[해외->국내 입국시 참고사항]
                            <br>-국내 예방접종완료 해외입국자 자가격리 면제 가능 변경 안내 ☞바로가기
                            <br>[참고 링크]
                            <br>-주 일본 대한민국 대사관 <a href="#none">☞바로가기</a>
                            <br>-주 대한민국 일본 대사관 <a href="#none">☞바로가기</a>
                            <br>-후생노동성 홈페이지(일본어) <a href="#none">☞바로가기</a>
                            <br>※출입국 제한 사항은 사전 고지없이 변경되는 경우도 있으니, 자세한 사항은 위 홈페이지를 참고해 주시기 바랍니다.
                        </div>
                        <div class="yui2" style="padding: 20px;">
                            ※ 외국 국적을 소지하신 분은 항공기 탑승, 출입국 절차에 별도 조건 및 제한이 발생할 수 있습니다. 예약 시 반드시 담당 여행사에 외국 국적자임을 알려 주시기 바랍니다.
                            <br><em style="color: red; font-weight: normal;">※ 해당 상품은 인디비 항공권을 이용하며 실시간 예약 조회 후 항공권을 예약합니다. 인디비 항공권 좌석 소진 시 좌석 상태에 따른 추가 요금이 발생할 수 있습니다.
                                <br>※ 예약 시 반드시 여권상에 명기된 정확한 영문으로 입력 부탁 드립니다. 예약 후 영문 변경이 불가할 수 있으며, 이에 따른 항공권 환불 수수료 혹은 변경 수수료가 발생할 수 있습니다.
                                <br>※ 일정표 상단의 대표이미지는 지역 주요 관광지 이미지 입니다. 실제 일정에 포함된 관광지와는 상이할 수 있습니다.</em>
                        </div>
                            <hr>
                            <div class="guide_info">
                                <br>
                                <h3>가이드/인솔자 및 미팅정보</h3>
                                <br>
                                <table>
                                    <tr>
                                        <th style="padding-right: 30px; font-size: 16px;">가이드</th><td style="font-size: 15px;">인솔자와 가이드가 동일합니다</td>
                                    </tr>
                                     <tr>
                                        <th style="padding-right: 30px; font-size: 16px;">인솔자</th><td style="font-size: 15px;">인솔자가 동행하지 않습니다.</td>
                                     </tr>
                                </table>
                                <div class="meeting">
                                    <div class="meeting_title">
                                        <input type="button" value="미팅장소보기" id="meetingplace" onclick="gomeeting()">
                                       <dd> ◎미팅정보</dd>
                                    </div>
                                    <br><br>
                                        <dd>
                                        
                                        
                                            일시 :  <fmt:formatDate value="${start }" pattern="MM월 dd일 a hh:mm" />
                                        </dd>
                                        <dd>
                                            장소 :  인천공항 <em style="color: rgba(209, 62, 26, 0.966);">제1여객터미널</em> 3층 출국장 <em style="color: rgba(209, 62, 26, 0.966);">서편 14번 출입구 거긴어때 1-4</em> 테이블
                                    </dd>
                                    <ul><br>
                                        <li><em>※터미널과 미팅장소를 꼭 확인하세요!</em></li>
                                        <li>항공사 탑승수속(선박 승선수속) 마감시간까지 수속을 마치지 못한 경우 출국이 거절될 수 있으며 이 경우 당사의 책임범위가 아님을 알려드립니다. 안전한 출국을 위해 거긴어때 미팅시간까지는 반드시 공항(터미널)에 도착해 주시기 바랍니다</li>
                                    </ul>
                                </div>
                            </div>
 
                           	<div id="container2">
								<div id="bar_wrap">
									<div id="bar1">
										<span>여행 후기</span>
									</div>
									<div id="bar2">
										<span>상품 문의</span>
									</div>
								</div>


								<div id="con_wrap">


									<div id="con1">
										<div class="re_1">
										
											<table border="0" width="850px" height="100%" id="tbl_con1">
												<thead>
													<tr><th>번호</th><th>제목</th><th>작성자</th><th>작성일</th><th>상품평점</th></tr>
												</thead>
												<tbody id="tbody_con1">
												<c:forEach var="review" items="${reviews }" varStatus="status" >
													<tr>
														<td class="t1">${review.rev_no }</td><td class="t1" id="title"><span class="t1_btn">${review.rev_title }</span></td><td class="t1">${review.id }</td>
														<td class="t1">${review.rev_date }</td><td class="t1">${review.rev_rating }</td></tr>
													<tr><td colspan="5"></td></tr>
													<tr><td><input type="hidden" id="con1_tVal" class="con1_tVal" value="0"></td></tr>
												</c:forEach>
												</tbody>
											</table>
										</div>
										<hr><br><br>
										<p style="margin:10px">여행 후기를 작성해 보세요.</p>
										<div class="re2">
											<form>
												<div id="re_star" class="re_box">
													<div class="re_tag"><span>서비스에 대하여 전반적으로 만족하셨나요?</span></div>
													<div class="star_rating"> <!-- &#9733;  -->
														<input type="radio" name="star" id="star1" class="stars" value="1" onclick="rating_stars(1)">
														<label for="star1"></label>
														<input type="radio" name="star" id="star2" class="stars" value="2" onclick="rating_stars(2)">
														<label for="star2"></label>
														<input type="radio" name="star" id="star3" class="stars" value="3" onclick="rating_stars(3)">
														<label for="star3"></label>
														<input type="radio" name="star" id="star4" class="stars" value="4" onclick="rating_stars(4)">
														<label for="star4"></label>
														<input type="radio" name="star" id="star5" class="stars" value="5" onclick="rating_stars(5)">
														<label for="star5"></label>
														<input type="hidden" name="star_val" id="star_val" value="">
													</div>
												</div>
												<div id="re_type" class="re_box">
													<div class="re_tag"><span>동반자 유형</span></div>
													<div id="type_select">
														<input type="radio" name="types" id="type1" class="types" value="1" onclick="write_rewiew(this)">
														<label for="type1">홀로 여행</label>
														<input type="radio" name="types" id="type2" class="types" value="2" onclick="write_rewiew(this)">
														<label for="type2">친구 / 커플</label>
														<input type="radio" name="types" id="type3" class="types" value="3" onclick="write_rewiew(this)">
														<label for="type3">아동 동반</label>
														<input type="radio" name="types" id="type4" class="types" value="4" onclick="write_rewiew(this)">
														<label for="type4">부모님 동반</label>
														<input type="radio" name="types" id="type5" class="types" value="5" onclick="write_rewiew(this)">
														<label for="type5">대가족 / 모임</label>
														<input type="hidden" name="sel_types" id="sel_type" value="">
													</div>
												</div>
												
												<div id="re_wrap">
													<div id="re_title" class="re_box1">
														<div class="re_tag"><span>제목</span></div>
														<div id="title_input">
															<input type="text" name="review_title" id="review_title" class="review_input" value="">
														</div>
													</div>
												
													<div id="re_name" class="re_box1">
														<div class="re_tag"><span>이름</span></div>
														<div id="name_input">
															<input type="text" name="review_name" id="review_name" class="review_input" value="${sessionScope.id }" readonly>
														</div>
													</div>
												
													<div id="re_prod" class="re_box2">
														<div class="re_tag"><span>여행 상품</span></div>
														<div id="prod_select">
															<select name="prod_list" id="prod_list" class="review_select">
   		 														<option value="0">상품 목록</option>

															</select>
														</div>
														<div id="prod_info">
															<ul>
																<li>비회원예약 등 기타이유로 여행이력이 확인되지 않는 고객님은 <span class="guest_prod">[예약번호조회]</span>를 이용해주시기 바랍니다.</li>
																<li>최근 1년동안의 여행이력만 보여집니다.</li>
															</ul>
														</div>

														<div id="prod_detail">
															<label for="start_date">출발일</label>
															<input type="text" name="start_date" id="start_date" class="pr_de de1" value="" readonly>
															<label for="days">여행 기간</label>
															<input type="text" name="days" id="days" class="pr_de de2" value="" readonly><br>
															<label for="plane">항공사</label>
															<input type="text" name="plane" id="plane" class="pr_de de3" value="" readonly>
															<label for="hotel">호텔</label>
															<input type="text" name="hotel" id="hotel" class="pr_de de4" value="" readonly><br>
														
														</div>

													</div>
													
													<div id="re_area" class="re_box3">
															<div class="re_tag"><span>내용</span></div>
														<textarea cols="95px" rows="5px" id="re_text" class="re_text"></textarea>
													</div>
													
													<div id="re_security" class="re_box3">
														<div class="re_tag"><span>보안 문자</span></div>
														<div id="se_box">
															<div id="se_box1">
																<input type="text" name="security" id="security" class="se1" value="" readonly>
															</div>
															<div id="se_box2">
																<span>프로그램을 이용한 자동입력을 방지하기 위해 보안절차를 거치고 있습니다.</span><br>
																<span>앞 숫자를 보이는 대로 입력해주세요.</span><span id="new_num">새로고침</span><br>
																<label for="security_num" class="se2">입력</label>
																<input type="text" name="security_num" id="security_num" class="se3" value="">
															</div>
														</div>
													</div>
													
													<div id="re_info" class="re_box4">
														<ul>
															<li>운영취지에 어긋나는 글이나 이미지는 별도의 예고 없이 삭제될 수 있으며, 이용 시 불이익을 받으실 수 있습니다.</li>
															<li>등록하시는 글은 고객님 개인의 주관적 의견이므로, 모두투어와 무관하며 글의 내용에 대한 모든 책임은 고객님에게 있습니다.</li>
															<li>고객 불만을 작성하시는 경우 답변을 드릴 수 없습니다. 불만은 [고객센터 > 고객의소리] 게시판에서 작성하시기 바랍니다.</li>
														</ul>
													</div>
													
													<div id="re_btn" class="re_box5">
														<input type="button" name="review_submit" id="review_submit" class="btn_2" value="등록 하기">
													</div>
													
												</div>
										</form>
											
										</div>
									</div>

									<div id="con2">
										<div class="re_2">
										
											<table border="0" width="850px" height="100%" id="tbl_con2">
												<thead>
													<tr><th>번호</th><th>제목</th><th>작성자</th><th>작성일</th><th>상태</th></tr>
												</thead>
												<tbody id="tbody_con2">
												<c:forEach var="qna" items="${qnas }" varStatus="status" >
													<tr>
														<td class="t1">${qna.qna_no }</td><td class="t1" id="qna_title">${qna.qna_title }</td><td class="t1">${qna.id }</td>
														<td class="t1">${qna.qna_date }</td><td class="t1">없음</td></tr> <!--  reply과 같이 쿼리 돌려서 -->
													<tr><td colspan="5"></td></tr>
													<tr><td><input type="hidden" id="con2_tVal" class="con2_tVal" value="0"></td></tr>
												</c:forEach>
												</tbody>
											</table>
										</div>
										<hr>
									</div>

								</div>
								<!--con_wrap-->
							</div>
							<!--container2-->
                             
                    </div>
                </div>
            </div>
            <div class="termsmodal">
                <div class="termsmodal-bg" onclick="goaway()"></div>
                <div class="termsmodal-wrap">
                        <div class="termsmodal-title">
                            <em class="termsmodal-close" onclick="goaway()">×</em>
                            <h1 style="display:inline-block;">국외여행 특별약관</h1>
                            <br>
                            <br>
                            <hr>
                        </div>
                        <br><br><br><br><br><br><br>
                        <h3>제1조(목적)</h3>
                        <br>이 약관은 ㈜저긴어때?(이하 ‘당사’라 함)와 여행자가 체결한 국외여행계약의 세부 이행 및 준수사항을 정함을 목적으로 합니다.
                        <br> 
                        <br>
                        <h3>제2조(용어의 정의)</h3>
                        <br>여행의 종류 및 정의, 해외여행수속대행업의 정의는 다음과 같습니다.
                        <br>
                        <br>1. 기획여행 : '당사'가 미리 여행목적지 및 관광일정, 여행자에게 제공될 운송 및 숙식서비스 내용(이하 ‘여행서비스’라 함), 여행요금을 정하여 광고 또는 기타 방법으로 여행자를 모집하여 실시하는 여행.
                        <br>
                        <br>2. 희망여행 : 여행자(개인 또는 단체)가 희망하는 여행조건에 따라 '당사'가 운송․숙식․관광 등 여행에 관한 전반적인 계획을 수립하여 실시하는 여행.
                        <br>
                        <br>3. 해외여행 수속대행(이하 ‘수속대행계약’이라 함) : '당사'가 여행자로부터 소정의 수속대행요금을 받기로 약정하고, 여행자의 위탁에 따라 다음에 열거하는 업무(이하 ‘수속대행업무’라 함)를 대행하는 것.
                        <br>
                        <br>1) 사증, 재입국 허가 및 각종 증명서 취득에 관한 수속
                        <br>2) 출입국 수속서류 작성 및 기타 관련업무
                        <br>
                        <br>
                        <h3>제3조('당사'와 여행자 의무)</h3>
                        <br>① '당사'는 여행자에게 안전하고 만족스러운 여행서비스를 제공하기 위하여 여행알선 및 안내․ 운송․ 숙박 등 여행계획의 수립 및 실행과정에서 맡은 바 임무를 충실히 수행하여야 합니다.
                        <br>② 여행자는 안전하고 즐거운 여행을 위하여 여행자간 화합도모 및 '당사'의 여행질서 유지에 적극 협조하여야 합니다.
                        <br><br>
                        <h3>제4조(계약의 구성)</h3>
                        <br>① 여행계약은 여행계약서(붙임)와 여행약관․ 여행일정표(또는 여행 설명서)를 계약내용으로 합니다.
                        <br>② 여행계약서에는 '당사'의 상호, 소재지 및 관광진흥법 제9조에 따른 보증보험 등의 가입(또는 영업보증금의 예치 현황) 내용이 포함되어야 합니다.
                        <br>③ 여행일정표(또는 여행설명서)에는 여행일자별 여행지와 관광내용․ 교통수단․ 쇼핑횟수․ 숙박장소․ 식사 등 여행실시일정 및 '당사'의 제공 서비스 내용과 여행자 유의사항이 포함되어야 합니다.
                        <br><br>
                        <h3>제5조(계약체결의 거절)</h3>
                        <br>'당사'는 여행자에게 다음 각 호의 1에 해당하는 사유가 있을 경우에는 여행자와의 계약체결을 거절할 수 있습니다.
                        <br>    
                        <br>1. 질병, 신체이상 등의 사유로 개별관리가 필요하거나, 단체여행(다른 여행자의 여행에 지장을 초래하는 등)의 원활한 실시에 지장이 있다고 인정되는 경우
                        <br>2. 계약서에 명시한 최대행사인원이 초과된 경우
                        <br>3. 일정표에 명시한 최저행사인원이 미달된 경우
                        <br><br>
                        <h3>제6조(특약)</h3>
                        <br>'당사'와 여행자는 관련법규에 위반되지 않는 범위 내에서 서면(전자문서를 포함한다. 이하 같다)으로 특약을 맺을 수 있습니다. 이 경우 '당사'는 특약의 내용이 표준약관과 다르고 표준약관보다 우선 적용됨을 여행자에게 설명하고 별도의 확인을 받아야 합니다.
                        <br><br>
                        <h3>제7조(계약서 등 교부 및 안전정보 제공)</h3>
                        <br>'당사'는 여행자와 여행계약을 체결한 경우 계약서와 약관 및 여행일정표(또는 여행설명서)를 각 1부씩 여행자에게 교부하고, 여행목적지에 관한 안전정보를 제공하여야 합니다. 또한 여행 출발 전 해당 여행지에 대한 안전정보가 변경된 경우에도 변경된 안전정보를 제공하여야 합니다.
                        <br><br>    
                        <h3>제8조(계약서 및 약관 등 교부 간주)</h3>
                        <br>다음 각 호의 경우 여행계약서와 여행약관 및 여행일정표(또는 여행설명서)가 교부된 것으로 간주합니다.
                        <br>    
                        <br>1. 여행자가 인터넷 등 전자정보망으로 제공된 여행계약서, 약관 및 여행일정표(또는 여행설명서)의 내용에 동의하고 여행계약의 체결을 신청한 데 대해 '당사'가 전자정보망 내지 기계적 장치 등을 이용하여 여행자에게 승낙의 의사를 통지한 경우
                        <br>2. '당사'가 팩시밀리 등 기계적 장치를 이용하여 제공한 여행계약서, 약관 및 여행일정표(또는 여행설명서)의 내용에 대하여 여행자가 동의하고 여행계약의 체결을 신청하는 서면을 송부한 데 대해 '당사'가 전자정보망 내지 기계적 장치 등을 이용하여 여행자에게 승낙의 의사를 통지한 경우
                        <br><br>
                        <h3>제9조('당사'의 책임)</h3>
                        <br>'당사'는 여행 출발시부터 도착시까지 '당사' 본인 또는 그 고용인, 현지여행업자 또는 그 고용인 등(이하 ‘사용인’이라 함)이 제3조제1항에서 규정한 '당사' 임무와 관련하여 여행자에게 고의 또는 과실로 손해를 가한 경우 책임을 집니다.
                        <br><br>    
                        <h3>제10조(여행요금)</h3>
                        <br>① 여행계약서의 여행요금에는 다음 각 호가 포함됩니다. 다만, 희망여행은 당사자간 합의에 따르며, 다음 1.~ 9.호는 여행자 본인이 직접 여행지에서 지불하여야 할 금액이나 당사가 여행자 편의를 위하여 수탁 받아 이를 대신 지불 합니다.
                        <br>1. 항공기, 선박, 철도 등 이용운송기관의 운임(보통운임기준)
                        <br>2. 공항, 역, 부두와 호텔사이 등 송영버스요금
                        <br>3. 숙박요금 및 식사요금
                        <br>4. 안내자경비
                        <br>5. 여행 중 필요한 각종세금
                        <br>6. 국내외 공항․항만세
                        <br>7. 관광진흥개발기금
                        <br>8. 일정표내 관광지 입장료
                        <br>9. 기타 개별계약에 따른 비용
                        <br>10. 여행알선수수료
                        <br>② 제1항에도 불구하고 반드시 현지에서 지불해야 하는 경비가 있는 경우 그 내역과 금액을 여행계약서에 별도로 구분하여 표시하고, '당사'는 그 사유를 안내하여야 합니다.
                        <br>③ 여행자는 계약체결시 계약금(여행요금 중 계약금으로 별도 고지된 금액)을 '당사'에게 지급하여야 하며, 계약금은 여행요금 또는 손해배상액의 전부 또는 일부로 취급합니다.
                        <br>④ 여행자는 제1항의 여행요금 중 계약금을 제외한 잔금을 여행출발 7일전까지 '당사'에게 지급하여야 합니다.
                        <br>⑤ 여행자는 제1항의 여행요금을 당사자가 약정한 바에 따라 카드, 계좌이체 또는 무통장입금 등의 방법으로 지급하여야 합니다.
                        <br>⑥ 희망여행요금에 여행자 보험료가 포함되는 경우 '당사'는 보험회사명, 보상내용 등을 여행자에게 설명하여야 합니다.
                        <br>
                        <br>
                        <h3>제11조(여행요금의 변경)</h3>
                        <br>① 국외여행을 실시함에 있어서 이용운송․숙박기관에 지급하여야 할 요금이 계약체결시보다 5%이상 증감하거나 여행요금에 적용된 외화환율이 계약체결시보다 2% 이상 증감한 경우 '당사' 또는 여행자는 그 증감된 금액 범위 내에서 여행요금의 증감을 상대방에게 청구할 수 있습니다.
                        <br>② '당사'는 제1항의 규정에 따라 여행요금을 증액하였을 때에는 여행출발일 15일전에 여행자에게 통지하여야 합니다.
                        <br><br>
                        <h3>제12조(여행조건의 변경요건 및 요금 등의 정산)</h3>
                        <br>① 계약서 등에 명시된 여행조건은 다음 각 호의 1의 경우에 한하여 변경될 수 있습니다.
                        <br>1. 여행자의 안전과 보호를 위하여 여행자의 요청 또는 현지사정에 의하여 부득이하다고 쌍방이 합의한 경우
                        <br>2. 천재지변, 전란, 정부의 명령, 운송‧숙박기관 등의 파업‧휴업 등으로 여행의 목적을 달성할 수 없는 경우
                        <br>② '당사'가 계약서 등에 명시된 여행일정을 변경하는 경우에는 해당 날짜의 일정이 시작되기 전에 여행자의 서면 동의를 받아야 합니다. 이때 서면동의서에는 변경일시, 변경내용, 변경으로 발생하는 비용이 포함되어야 합니다.
                        <br>③ 천재지변, 사고, 납치 등 긴급한 사유가 발생하여 여행자로부터 여행일정 변경 동의를 받기 어렵다고 인정되는 경우에는 제2항에 따른 일정변경 동의서를 받지 아니할 수 있습니다. 다만, '당사'는 사후에 서면으로 그 변경 사유 및 비용 등을 설명하여야 합니다.
                        <br>④ 제1항의 여행조건 변경 및 제11조의 여행요금 변경으로 인하여 제10조 제1항의 여행요금에 증감이 생기는 경우에는 여행출발 전 변경 분은 여행출발 이전에, 여행 중 변경 분은 여행종료 후 10일 이내에 각각 정산(환급)하여야 합니다.
                        <br>⑤ 제1항의 규정에 의하지 아니하고 여행조건이 변경되거나 제16조 내지 제18조의 규정에 의한 계약의 해제․해지로 인하여 손해배상액이 발생한 경우에는 여행출발 전 발생 분은 여행출발이전에, 여행 중 발생 분은 여행종료 후 10일 이내에 각각 정산(환급)하여야 합니다.
                        <br>⑥ 여행자는 여행출발 후 자기의 사정으로 숙박, 식사, 관광 등 여행요금에 포함된 서비스를 제공받지 못한 경우 '당사'에게 그에 상응하는 요금의 환급을 청구할 수 없습니다. 다만, 여행이 중도에 종료된 경우에는 제18조에 준하여 처리합니다.
                        <br><br>
                        <h3>제13조(여행자 지위의 양도)</h3>
                        <br>① 여행자가 개인사정 등으로 여행자의 지위를 양도하기 위해서는 '당사'의 승낙을 받아야 합니다. 이때 '당사'는 여행자 또는 여행자의 지위를 양도받으려는 자가 양도로 발생하는 비용을 지급할 것을 조건으로 양도를 승낙할 수 있습니다.
                        <br>② 전항의 양도로 발생하는 비용이 있을 경우 '당사'는 기한을 정하여 그 비용의 지급을 청구하여야 합니다.
                        <br>③ '당사'는 계약조건 또는 양도하기 어려운 불가피한 사정 등을 이유로 제1항의 양도를 승낙하지 않을 수 있습니다.
                        <br>④ 제1항의 양도는 '당사'가 승낙한 때 효력이 발생합니다. 다만, '당사'가 양도로 인해 발생한 비용의 지급을 조건으로 승낙한 경우에는 정해진 기한 내에 비용이 지급되는 즉시 효력이 발생합니다.
                        <br>⑤ 여행자의 지위가 양도되면, 여행계약과 관련한 여행자의 모든 권리 및 의무도 그 지위를 양도 받는 자에게 승계됩니다.
                        <br><br>
                        <h3>제14조('당사'의 하자담보 책임)</h3>
                        <br>① 여행자는 여행에 하자가 있는 경우에 '당사'에게 하자의 시정 또는 대금의 감액을 청구할 수 있습니다. 다만, 그 시정에 지나치게 많은 비용이 들거나 그 밖에 시정을 합리적으로 기대할 수 없는 경우에는 시정을 청구할 수 없습니다.
                        <br>② 여행자는 시정 청구, 감액 청구를 갈음하여 손해배상을 청구하거나 시정 청구, 감액 청구와 함께 손해배상을 청구 할 수 있습니다.
                        <br>③ 제1항 및 제2항의 권리는 여행기간 중에도 행사할 수 있으며, 여행종료일부터 6개월 내에 행사하여야 합니다.
                        <br><br>
                        <h3>제15조(손해배상)</h3>
                        <br>① '당사'는 현지 여행업자 등의 고의 또는 과실로 여행자에게 손해를 가한 경우 '당사'는 여행자에게 손해를 배상하여야 합니다.
                        <br>② '당사'의 귀책사유로 여행자의 국외여행에 필요한 사증, 재입국 허가 또는 각종 증명서 등을 취득하지 못하여 여행자의 여행일정에 차질이 생긴 경우 '당사'는 여행자로부터 절차대행을 위하여 받은 금액 전부 및 그 금액의 100%상당액을 여행자에게 배상하여야 합니다.
                        <br>③ '당사'는 항공기, 기차, 선박 등 교통기관의 연발착 또는 교통체증 등으로 인하여 여행자가 입은 손해를 배상하여야 합니다. 다만, '당사'가 고의 또는 과실이 없음을 입증한 때에는 그러하지 아니합니다.
                        <br>④ '당사'는 자기나 그 사용인이 여행자의 수하물 수령, 인도, 보관 등에 관하여 주의를 해태(懈怠)하지 아니하였음을 증명하지 아니하면 여행자의 수하물 멸실, 훼손 또는 연착으로 인한 손해를 배상할 책임을 면하지 못합니다.
                        <br><br>
                        <h3>제16조(여행출발 전 계약해제)</h3>
                        <br>① '당사' 또는 여행자는 여행출발전 이 여행계약을 해제할 수 있습니다. 이 경우 발생하는 손해액은 특별약관에 따라 배상합니다.
                        <br>        가. 여행개시 41일전(~41)까지 통보시 ( ~2023년02월12일): 계약금환급
                        <br>        나. 여행개시 30일전(30~30)까지 통보시 (2023년02월23일~2023년02월23일): 여행요금의 10% 배상
                        <br>        다. 여행개시 20일전(29~20)까지 통보시 (2023년02월24일~2023년03월05일): 여행요금의 15% 배상
                        <br>        라. 여행개시 8일전(19~8)까지 통보시 (2023년03월06일~2023년03월17일): 여행요금의 20% 배상
                        <br>        마. 여행개시 1일전(7~1)까지 통보시 (2023년03월18일~2023년03월24일): 여행요금의 30% 배상
                        <br>        바. 여행당일 통보시 : 여행요금의 50% 배상
                        <br>
                        <br>단, 최저 행사 인원이 충족되지 않아 불가피하게 기획여행을 실시할 수 없는 경우에는 제17조(최저 행사인원 미충족 시 계약해제)
                        의 조항에 의거하여 당사가 여행자에게 배상한다.
                        <br>(※ 여행요금이란 일정표상 명시된 총 상품 가격을 의미한다.)
                        <br>
                        <br>② '당사' 또는 여행자는 여행출발 전에 다음 각 호의 1에 해당하는 사유가 있는 경우 상대방에게 제1항의 손해배상액을 지급하지 아니하고 이 여행계약을 해제할 수 있습니다.
                        <br>1. '당사'가 해제할 수 있는 경우
                        <br>가. 제12조 제1항 제1호 및 제2호 사유의 경우
                        <br>나. 여행자가 다른 여행자에게 폐를 끼치거나 여행의 원활한 실시에 현저한 지장이 있다고 인정될 때
                        <br>다. 질병 등 여행자의 신체에 이상이 발생하여 여행에의 참가가 불가능한 경우
                        <br>라. 여행자가 계약서에 기재된 기일까지 여행요금을 납입하지 아니한 경우
                        <br>
                        <br>2. 여행자가 해제할 수 있는 경우
                        <br>가. 제12조 제1항 제1호 및 제2호의 사유가 있는 경우
                        <br>나. '당사'가 제21조에 따른 공제 또는 보증보험에 가입하지 아니 하였거나 영업보증금을 예치하지 않은 경우
                        <br>다. 여행자의 3촌 이내 친족이 사망한 경우(단, 여행자는 아래와 같은 입증서류를 당사에 제출하여야 한다.)
                        <br>– 친족을 확인할 수 있는 서류(가족관계증명서 등)
                        <br>– 진단서 또는 사체검안서(사망진단서)
                        <br>– 그 밖에 필요한 자료
                        <br>
                        <br>라. 질병 등 여행자의 신체에 이상이 발생하여 여행에의 참가가 불가능한 경우(단, 여행자는 아래와 같은 입증서류를 당사에 제출하여야 한다.)
                        <br>– 진단서
                        <br>– 그밖에 필요한 자료
                        <br>
                        <br>마. 배우자 또는 직계존비속이 신체이상으로 3일 이상 병원(의원)에 입원하여 여행 출발 전까지 퇴원이 곤란한 경우 그 배우자 또는 보호자 1인(단, 여행자는 아래와 같은 입증서류를 당사에 제출하여야 한다.)
                        <br>– 친족을 확인할 수 있는 서류(가족관계증명서 등)
                        <br>– 진단서
                        <br>– 그밖에 필요한 자료
                        <br>
                        <br>바. '당사'의 귀책사유로 계약서 또는 여행일정표(여행설명서)에 기재된 여행일정대로의 여행실시가 불가능해진 경우
                        <br>
                        <br>사. 제11조제1항의 규정에 의한 여행요금의 증액으로 인하여 여행 계속이 어렵다고 인정될 경우
                        <br><br>
                        <h3>제17조(최저행사인원 미 충족시 계약해제)</h3>
                        <br>① '당사'는 최저행사인원이 충족되지 아니하여 여행계약을 해제하는 경우 여행출발 7일전까지 여행자에게 통지하여야 합니다.
                        <br>
                        <br>② '당사'가 여행참가자 수 미달로 전항의 기일내 통지를 하지 아니하고 계약을 해제하는 경우 이미 지급받은 계약금 환급 외에 다음 각 목의 1의 금액을 여행자에게 배상하여야 합니다.
                        <br>
                        <br>가. 여행출발 1일전까지 통지시 : 여행요금의 30%
                        <br>나. 여행출발 당일 통지시 : 여행요금의 50%
                        <br>(※ 여행요금이란 일정표상 명시된 총 상품 가격을 의미한다)
                        <br><br>
                        <h3>제18조(여행출발 후 계약해지)</h3>
                        <br>① '당사' 또는 여행자는 여행출발 후 부득이한 사유가 있는 경우 각 당사자는 여행계약을 해지할 수 있습니다. 다만, 그 사유가 당사자 한쪽의 과실로 인하여 생긴 경우에는 상대방에게 손해를 배상하여야 합니다.
                        <br>② 제1항에 따라 여행계약이 해지된 경우 귀환운송 의무가 있는 '당사'는 여행자를 귀환운송 할 의무가 있습니다.
                        <br>③ 제1항의 계약해지로 인하여 발생하는 추가 비용은 그 해지사유가 어느 당사자의 사정에 속하는 경우에는 그 당사자가 부담하고, 양 당사자 누구의 사정에도 속하지 아니하는 경우에는 각 당사자가 추가 비용의 50%씩을 부담합니다.
                        <br>④ 여행자는 여행에 중대한 하자가 있는 경우에 그 시정이 이루어지지 아니하거나 계약의 내용에 따른 이행을 기대할 수 없는 경우에는 계약을 해지할 수 있습니다.
                        <br>⑤ 제4항에 따라 계약이 해지된 경우 '당사'는 대금청구권을 상실합니다. 다만, 여행자가 실행된 여행으로 이익을 얻은 경우에는 그 이익을 '당사'에게 상환하여야 합니다.
                        <br>⑥ 제4항에 따라 계약이 해지된 경우 '당사'는 계약의 해지로 인하여 필요하게 된 조치를 할 의무를 지며, 계약상 귀환운송 의무가 있으면 여행자를 귀환운송하여야 합니다. 이 경우 귀환운송비용은 원칙적으로 '당사'가 부담하여야 하나, 상당한 이유가 있는 때에는 '당사'는 여행자에게 그 비용의 일부를 청구할 수 있습니다.
                        <br><br>
                        <h3>제19조(여행의 시작과 종료)</h3>
                        <br>여행의 시작은 탑승수속(선박인 경우 승선수속)을 마친 시점으로 하며, 여행의 종료는 여행자가 입국장 보세구역을 벗어나는 시점으로 합니다. 다만, 계약내용상 국내이동이 있을 경우에는 최초 출발지에서 이용하는 운송수단의 출발시각과 도착시각으로 합니다.
                        <br><br>    
                        <h3>제20조(설명의무)</h3>
                        <br>'당사'는 계약서에 정하여져 있는 중요한 내용 및 그 변경사항을 여행자가 이해할 수 있도록 설명하여야 합니다.
                        <br><br>    
                        <h3>제21조(보험가입 등)</h3>
                        <br>'당사'는 이 여행과 관련하여 여행자에게 손해가 발생한 경우 여행자에게 보험금을 지급하기 위한 보험 또는 공제에 가입하거나 영업보증금을 예치하여야 합니다.
                        <br><br>    
                        <h3>22조(기타사항)</h3>
                        <br>① 이 계약에 명시되지 아니한 사항 또는 이 계약의 해석에 관하여 다툼이 있는 경우에는 '당사' 또는 여행자가 합의하여 결정하되, 합의가 이루어지지 아니한 경우에는 관계법령 및 일반관례에 따릅니다.
                        <br>② 특수지역에의 여행으로서 정당한 사유가 있는 경우에는 이 표준약관의 내용과 달리 정할 수 있습니다.
                        <br>③ 이 약관은 기획여행 상품을 기준으로 적용합니다.
                        <br>
                        <br>
                        <h4>부칙</h4>
                        1. (개정일) 이 약관은 2003년 3월 6일부터 시행한다.
                        <br>2. (개정일) 이 약관은 2004년 12월 25일부터 시행한다.
                        <br>3. (개정일) 이 약관은 2005년 4월 5일부터 시행한다.
                        <br>4. (개정일) 이 약관은 2007년 9월 5일부터 시행한다.
                        <br>5. (개정일) 이 약관은 2009년 10월 30일부터 시행한다.
                        <br>6. (개정일) 이 약관은 2011년 10월 10일부터 시행한다.
                        <br>7. (개정일) 이 약관은 2012년 3월 1일부터 시행한다.
                        <br>8. (개정일) 이 약관은 2012년 9월 4일 부터 시행한다.
                        <br>9. (개정일) 이 약관은 2014년 3월 21일 부터 시행한다.
                        <br>10. (개정일) 이 약관은 2014년 9월 16일 부터 시행한다.
                        <br>11. (개정일) 이 약관은 2015년 2월 23일 부터 시행한다.
                        <br>12. (개정일) 이 약관은 2019년 11월 20일 부터 시행한다.
                        <br><br><br><br>
                    </div>
                </div>
            </div>
            <div class="meetingmodal">
                <div class="meetingmodal-bg" onclick="goawaymeeting()"></div>
                <div class="meetingmodal-wrap">
                    <div class="meetingmodal-title">
                        <em class="meetingmodal-close" onclick="goawaymeeting()">×</em>
                        <h1 style="display:inline-block;">미팅장소 약도보기</h1>
                        <br>
                        <br>
                        <hr>
                    </div>
                    <br><br><br><br><br><br>       
                    <img src="../img/meeting.gif" width="670">
                    <br>
                    <br>인천공항 <em style="color: rgba(209, 62, 26, 0.966);">제1여객터미널</em> 3층 출국장<em style="color: rgba(209, 62, 26, 0.966);"> 서편 14번 출입구 거긴어때 1-4 </em>테이블
                    <br>
                    <dd style="font-size:14px; padding-bottom:40px;">
                        <br><em style="color:red">※ 터미널과 미팅장소를 꼭 확인하세요!</em>
                        <br>※항공사 탑승수속(선박 승선수속) 마감시간까지 수속을 마치지 못한 경우 출국이 거절될 수 있으며 이 경우 당사의 책임 범위가 아님을 알려드립니다. 안전한 출국을 위해 거긴어때 미팅시간까지는 반드시 공항(터미널)에 도착해 주시기 바랍니다.
                    </dd>
                </div>
            </div>
        </div>
</c:forEach>
        </section>    
        <%@include file="../footer.jsp" %>
   <script> 
  
	const plus_ad = document.querySelector("#plus_ad");
	plus_ad.addEventListener('click', ad_plus);
	const minus_ad = document.querySelector("#minus_ad");
	minus_ad.addEventListener('click', ad_minus);
	const ad_val = document.querySelector("#ad_val");
	ad_val.addEventListener('keyup', ad_person);

	const plus_ch = document.querySelector("#plus_ch");
	plus_ch.addEventListener('click', ch_plus);
	const minus_ch = document.querySelector("#minus_ch");
	minus_ch.addEventListener('click', ch_minus);
	const ch_val = document.querySelector("#ch_val");
	ch_val.addEventListener('keyup', ch_person);

//	const res_many = document.querySelector("#res_many");
//	res_many.addEventListener('click', many_res);
	const res_like = document.querySelector("#res_like");
	res_like.addEventListener('click', like_res);

	const ad_price = document.querySelector("#ad_price");
	const ch_price = document.querySelector("#ch_price");
	const total = document.querySelector("#total");
	total.value = ad_price.innerText;

	const res_sld = document.querySelector("#res_sld");
	res_sld.addEventListener('click', sld_res);
	const sld_img = document.querySelector("#sld_img");
	sld_img.addEventListener('click', sld_res);
	const slide_box = document.querySelector("#slide_box");
	
	const tbody_con1 = document.querySelector("#tbody_con1");
	tbody_con1.addEventListener('click', con1_tbody);	
	
	const tbody_con2 = document.querySelector("#tbody_con2");
	tbody_con2.addEventListener('click', con2_tbody);
	
	const types = document.getElementsByName("types");
	const sel_types = document.querySelector("#sel_type");
	const re_wrap = document.querySelector("#re_wrap");
	
	const star_val = document.querySelector("#star_val");
	
//	const res_id = document.querySelector("#res_id");
//	const prod_pno = document.querySelector("#prod_pno");
	
    function go(){
        document.querySelector(".termsmodal").style.display='block'; //스타일중에 디스플레이를 블록으로 바꿔라
     
     }
     
     function goaway(){
        document.querySelector(".termsmodal").style.display='none'; //스타일중에 디스플레이를 블록으로 바꿔라
        
     }
     // const meetingplace = document.getElementById("meeitingplace");
     // meetingplace.addEventListener("click", gomeeting);
     function gomeeting(){
        document.querySelector(".meetingmodal").style.display='block'; //스타일중에 디스플레이를 블록으로 바꿔라
     
     }
     
     function goawaymeeting(){
        document.querySelector(".meetingmodal").style.display='none'; //스타일중에 디스플레이를 블록으로 바꿔라
     }

 	prod_show();
	function prod_show(){
		$("#prod_list option:eq(0)").after("<option value='${sessionScope.prod_no}'>'${sessionScope.prod_name}'</option>");
	}
	
	$(function(){
		$("#prod_list").change(function(){
			alert(this.value); // 마찬가지로 ajax로 구현하고 상품번호로 상품정보 들고와서 값 넣어주면 됨
		});
	});

	function rating_stars(n){
		let star_1 = document.querySelector('label[for="star1"]');
		let star_2 = document.querySelector('label[for="star2"]');
		let star_3 = document.querySelector('label[for="star3"]');
		let star_4 = document.querySelector('label[for="star4"]');
		let star_5 = document.querySelector('label[for="star5"]');
		
		if(n == "1"){
		//	star_val.value = e.target.value;
			star_val.value = 1;
			star_1.style.backgroundColor="#e82835";
			star_2.style.backgroundColor="#f0f0f0";
			star_3.style.backgroundColor="#f0f0f0";
			star_4.style.backgroundColor="#f0f0f0";
			star_5.style.backgroundColor="#f0f0f0";
		}else if(n == "2"){
		//	star_val.value = e.target.value;
			star_val.value = 2;
			star_1.style.backgroundColor="#e82835";
			star_2.style.backgroundColor="#e82835";
			star_3.style.backgroundColor="#f0f0f0";
			star_4.style.backgroundColor="#f0f0f0";
			star_5.style.backgroundColor="#f0f0f0";
		}else if(n == "3"){
		//	star_val.value = e.target.value;
			star_val.value = 3;
			star_1.style.backgroundColor="#e82835";
			star_2.style.backgroundColor="#e82835";
			star_3.style.backgroundColor="#e82835";
			star_4.style.backgroundColor="#f0f0f0";
			star_5.style.backgroundColor="#f0f0f0";
		}else if(n == "4"){
		//	star_val.value = e.target.value;
			star_val.value = 4;
			star_1.style.backgroundColor="#e82835";
			star_2.style.backgroundColor="#e82835";
			star_3.style.backgroundColor="#e82835";
			star_4.style.backgroundColor="#e82835";
			star_5.style.backgroundColor="#f0f0f0";
		}else if(n == "5"){
		//	star_val.value = e.target.value;
			star_val.value = 5;
			star_1.style.backgroundColor="#e82835";
			star_2.style.backgroundColor="#e82835";
			star_3.style.backgroundColor="#e82835";
			star_4.style.backgroundColor="#e82835";
			star_5.style.backgroundColor="#e82835";
		}
	}

	let type_string = ["홀로 여행", "친구 / 커플", "아동 동반", " 부모님 동반", "대가족 / 모임"];
	function write_rewiew(e){
		var tmp_value = $('input:radio[name=types]:checked').val();
		sel_type.value=type_string[parseInt(tmp_value)-1];
		re_wrap.style.display="block";
	}
	
	const new_num = document.querySelector("#new_num");
	const security = document.querySelector("#security");
	new_num.addEventListener('click',checkBot);
	checkBot();
	
	function rand(min, max) {
		  return Math.floor(Math.random() * (max - min + 1)) + min;
	}

	function checkBot(){
		security.value = rand(10000, 99999);
	}
	
	function con1_tbody(e){
		const con1_tVal = document.querySelector("#con1_tVal");
		var con1_review = document.querySelector(".con1_review");
		
		const xhttp = new XMLHttpRequest();

		xhttp.onload = function() {
			let jsonStr = this.responseText; 
			let obj = JSON.parse(jsonStr);
			e.target.parentElement.previousElementSibling.parentElement.nextElementSibling.firstElementChild.replaceChildren();

			var con1_Val = e.target.parentElement.previousElementSibling.parentElement.nextElementSibling.nextElementSibling.firstElementChild.firstElementChild.value;

				if(e.target.parentElement.previousElementSibling.parentElement.nextElementSibling.nextElementSibling.firstElementChild.firstElementChild.value === "0"){
					e.target.parentElement.previousElementSibling.parentElement.nextElementSibling.firstElementChild.style.display = "table-cell";
					e.target.parentElement.previousElementSibling.parentElement.nextElementSibling.nextElementSibling.firstElementChild.firstElementChild.value = 1;
				}else if(e.target.parentElement.previousElementSibling.parentElement.nextElementSibling.nextElementSibling.firstElementChild.firstElementChild.value === "1"){
					e.target.parentElement.previousElementSibling.parentElement.nextElementSibling.firstElementChild.style.display = "none";
					e.target.parentElement.previousElementSibling.parentElement.nextElementSibling.nextElementSibling.firstElementChild.firstElementChild.value = 0;
				}
				
				
			for(let i = 0; i < obj.length; i++){
				e.target.parentElement.previousElementSibling.parentElement.nextElementSibling.firstElementChild.innerHTML += '<div class="con1_review">' 
					
				+ '<div id="a1"><input type="text" class="td_con1" value="출발일" readonly><p class="sp_con1">' + obj[i].prod_start_date + '</p>'
				+ '<input type="text" class="td2_con1" value="귀국일" readonly><p class="sp_con1">' + obj[i].prod_end_date + '</p><br></div>'
				+ '<div id="a2"><input type="text" class="td_con1" value="항공사" readonly><p class="sp_con1">' + obj[i].prod_plane + '</p>'
				+ '<input type="text" class="td2_con1" value="호텔" readonly><p class="sp_con1">' + obj[i].prod_hotel + '</p><br></div>'
				+ '<div id="a3"><input type="text" class="td3_con1" value="내용" readonly><p class="sp2_con1">' + obj[i].rev_contents + '</p></div></div>'
			}
		}

		if(e.target.className == "t1_btn"){
			let reno = e.target.parentElement.previousElementSibling.innerHTML;
			let no = parseInt(reno);
			xhttp.open("GET", "board1?rev_no="+no,true);  
			xhttp.send();
		}
	}
	
	function con2_tbody(e){   // 제목 클릭시 아이디 값 넘겨 받아서 일치 여부 확인 후 일치시 혹은 관리자일시 내용 뜨게 하면 될듯
		const con2_tVal = document.querySelector("#con2_tVal");
		var con2_review = document.querySelector(".con2_review");
		
		const xhttp = new XMLHttpRequest();

		xhttp.onload = function() {
			let jsonStr = this.responseText; 
			let obj = JSON.parse(jsonStr);

			var con2_Val = e.target.previousElementSibling.parentElement.nextElementSibling.nextElementSibling.firstElementChild.firstElementChild.value;
				
				if(e.target.previousElementSibling.parentElement.nextElementSibling.nextElementSibling.firstElementChild.firstElementChild.value === "0"){
					e.target.previousElementSibling.parentElement.nextElementSibling.firstElementChild.style.display = "table-cell";
					e.target.previousElementSibling.parentElement.nextElementSibling.nextElementSibling.firstElementChild.firstElementChild.value = 1;
				}else if(e.target.previousElementSibling.parentElement.nextElementSibling.nextElementSibling.firstElementChild.firstElementChild.value === "1"){
					e.target.previousElementSibling.parentElement.nextElementSibling.firstElementChild.style.display = "none";
					e.target.previousElementSibling.parentElement.nextElementSibling.nextElementSibling.firstElementChild.firstElementChild.value = 0;
				}
				
				
			for(let i = 0; i < obj.length; i++){
				e.target.previousElementSibling.parentElement.nextElementSibling.firstElementChild.innerHTML += '<div class="con2_review">' 
					
	//			+ '<div id="a1"><input type="text" class="td_con1" value="출발일" readonly><p class="sp_con1">' + obj[i].start_date + '</p>'
	//			+ '<input type="text" class="td2_con1" value="여행기간" readonly><p class="sp_con1">' + obj[i].days + '</p><br></div>'
	//			+ '<div id="a2"><input type="text" class="td_con1" value="항공사" readonly><p class="sp_con1">' + obj[i].plane + '</p>'
	//			+ '<input type="text" class="td2_con1" value="호텔" readonly><p class="sp_con1">' + obj[i].hotel + '</p><br></div>'
				+ '<div id="a3"><input type="text" class="td3_con1" value="내용" readonly><p class="sp2_con1">' + obj[i].qna_contents + '</p></div></div>'
			}
		}

		if(e.target.id == "qna_title"){
			let reno = e.target.previousElementSibling.innerHTML;
			let no = parseInt(reno);
			xhttp.open("GET", "board2?qna_no="+no,true);  
			xhttp.send();
		}
	}

	$("#bar1").click(function() {
		$("#con1").css("display", "block");
		$("#bar1").css("background-color", "#e82835");
		$("#bar1").css("color", "white");
		$("#bar2").css("color", "black");
		$("#bar2").css("background-color", "white");
		$("#con2").css("display", "none");
	});

	$("#bar2").click(function() {
		$("#con2").css("display", "block");
		$("#bar2").css("background-color", "#e82835");
		$("#bar2").css("color", "white");
		$("#bar1").css("color", "black");
		$("#bar1").css("background-color", "white");
		$("#con1").css("display", "none");
	});
	
	function ad_plus() {
		let pre_Aval1 = parseInt(ad_val.value);
		let ad_price1 = won(ad_price.innerText);
		let pre_Cval1 = parseInt(ch_val.value);
		let ch_price1 = won(ch_price.innerText);

		if (ad_val.value < 5) {
			ad_val.value = pre_Aval1 + 1;
			total.value = format((ad_price1) * (ad_val.value) + (ch_price1)
					* (pre_Cval1));
		} else {
			alert("최대5명까지 가능합니다.");
		}
	}
	function ad_minus() {
		let pre_Aval2 = parseInt(ad_val.value);
		let ad_price2 = won(ad_price.innerText);
		let pre_Cval2 = parseInt(ch_val.value);
		let ch_price2 = won(ch_price.innerText);

		if (ad_val.value >= 2) {
			ad_val.value = pre_Aval2 - 1;
			total.value = format((ad_price2) * (ad_val.value) + (ch_price2)
					* (pre_Cval2));
		} else {
			alert("1명이상 예약가능합니다.");
		}
	}
	function ad_person(e) {
		let ad_price3 = won(ad_price.innerText);
		let pre_Cval3 = parseInt(ch_val.value);
		let ch_price3 = won(ch_price.innerText);

		if ((e.target.value >= 1 && e.target.value <= 5)
				|| e.target.value === "") {
			total.value = format((e.target.value) * (ad_price3)
					+ (ch_price3) * (pre_Cval3));
		} else {
			alert("1명이상 5명이하로 예약 가능합니다.");
		}
	}
	function ch_plus() {
		let pre_Aval4 = parseInt(ad_val.value); // 현재 성인 인원수
		let ad_price4 = won(ad_price.innerText); // 현재 성인 가격
		let pre_Cval4 = parseInt(ch_val.value); // 현재 아동 인원수
		let ch_price4 = won(ch_price.innerText); // 현재 아동 가격

		if (ch_val.value < 4) {
			ch_val.value = pre_Cval4 + 1;
			total.value = format((ch_price4) * (ch_val.value) + (ad_price4)
					* (pre_Aval4));
		} else {
			alert("최대4명까지 가능합니다.");
		}
	}
	function ch_minus() {
		let pre_Aval5 = parseInt(ad_val.value);
		let ad_price5 = won(ad_price.innerText);
		let pre_Cval5 = parseInt(ch_val.value);
		let ch_price5 = won(ch_price.innerText);

		if (ch_val.value >= 1) {
			ch_val.value = pre_Cval5 - 1;
			total.value = format((ch_price5) * (ch_val.value) + (ad_price5)
					* (pre_Aval5));
		} else {
			alert("선택할 수 없습니다.")
		}
	}
	function ch_person(e) {
		let pre_Aval6 = parseInt(ad_val.value);
		let ad_price6 = won(ad_price.innerText);
		let ch_price6 = won(ch_price.innerText);

		if ((e.target.value >= 0 && e.target.value <= 4)
				|| e.target.value === "") {
			total.value = format((e.target.value) * (ch_price6)
					+ (ad_price6) * (pre_Aval6));
		} else {
			alert("4명이하로 예약 가능합니다.");
		}
	}
/*
	function many_res() {
		let ad_Aval = ad_val.value;
		let ch_Cval = ch_val.value;
		let like_val = like.value;
		let sum_p = total.value;
		let user = res_id.value; 
		let pno = prod_pno.value;

		location.href="reservation_page?res_adult="+ad_Aval+"&res_child="+ch_Cval+"&res_like="+like_val+"&res_price="+sum_p+"&prod_no="+pno+"&id="+user;
	}
*/
	function like_res() {
		let like = document.querySelector("#like");
		if (like.value === "0") {
			res_like.style.background = 'url("img/heart_liked.png") no-repeat';
			res_like.style.backgroundSize = "30px";
			res_like.style.backgroundPosition = "center";
			like.value = "1";
		} else if (like.value === "1") {
			res_like.style.background = 'url("img/heart.png") no-repeat';
			res_like.style.backgroundSize = "30px";
			res_like.style.backgroundPosition = "center";
			like.value = "0";
		}
	}
	function sld_res() {
		let slide = document.querySelector("#slide");
		if (slide.value === "0") {
			slide_box.style.display = "block";
			sld_img.style.background = 'url("img/upload.png") no-repeat';
			sld_img.style.backgroundSize = "20px";
			sld_img.style.backgroundPosition = "center";
			slide.value = "1";
		} else if (slide.value === "1") {
			slide_box.style.display = "none";
			sld_img.style.background = 'url("img/download.png") no-repeat';
			sld_img.style.backgroundSize = "20px";
			sld_img.style.backgroundPosition = "center";
			slide.value = "0";
		}
	}
	function won(num) {
		return parseInt(num.replace(/,/g, ''));
	}
	function format(a) {
		let result = a.toLocaleString('ko-KR');
		return result;
	}
    
     
    </script>
</body>
</html>