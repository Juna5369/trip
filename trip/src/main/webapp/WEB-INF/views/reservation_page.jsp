<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="../css/reservation_style.css">
</head>
<body>
    <div id="wrap">
        <div id="container">
            <div id="product_main">
                <!-- 상품상세보기 메인 감싸기 -->
                
                <form name="frm" action="/pay" method="post">

                <div id="travel_rool">
                    <!-- 국룰 범위(배경색 회색) -->
                       <p>■출발확정■[가볍게힐링_큐슈 온천 3일] 후쿠오카/아소/유후인/벳부 (힐튼+온천호텔)</p>
                </div>
				<div id="reser_product">
                	<div id="reser_con">
                		<div id="prod_many">
                    		<div id="many_1">
                    			<div id="many_txt"><span id="sp_txt">총 합계 금액</span></div>
                    			<input type="text" name="total_sum" id="total_sum" value="" readonly>
                    			<span id="sp_won">원</span>
                    		</div>
                    		
                    		
                    		<div id="many_2">
                    			<div id="many_txt"><span id="sp_txt">인원별 금액</span></div>
                    			<div id="many_con">
                    <!-- 			
                    				<div id="many_ad">  
                    					<label id="detail_lbl" for="detail_ad">성인</label>
                    					<input type="text" name="detail_ad1" id="detail_ad1" class="input_sum_2" value="799,000" readonly>
                    					<label id="detail_lbl" for="detail_ad">원 x </label>
                    					<input type="text" name="detail_ad2" id="detail_ad2" class="input_sum_2" value="1" readonly>
                    					<label id="detail_lbl" for="detail_ad">명</label>
                    					<input type="text" name="ad_sum" id="ad_sum" class="input_sum" value="" readonly>
                    					<span id="sp_won">원</span>
                    				</div>
                      			
                    				<div id="many_ch">
                    				    <label id="detail_lbl" for="detail_ch">아동</label>
                    					<input type="text" name="detail_ch1" id="detail_ch1" class="input_sum_2" value="499,000" readonly>
                    					<label id="detail_lbl" for="detail_ch">원 x</label>
                    					<input type="text" name="detail_ch2" id="detail_ch2" class="input_sum_2" value="0" readonly>
                    					<label id="detail_lbl" for="detail_ch">명</label>
                    					<input type="text" name="ch_sum" id="ch_sum" class="input_sum" value="" readonly>
                    					<span id="sp_won">원</span>
                    				</div>
                    -->
                    			   	<div id="many_ad">  
                    					<label id="detail_lbl" for="detail_ad">성인</label>
                    					<input type="text" name="detail_ad1" id="detail_ad1" class="input_sum_2" value="${prodvo.prod_price_adult }" readonly>
                    					<label id="detail_lbl" for="detail_ad">원 x </label>
                    					<input type="text" name="detail_ad2" id="detail_ad2" class="input_sum_2" value="${resdto.ad_val }" readonly>
                    					<label id="detail_lbl" for="detail_ad">명</label>
                    					<input type="text" name="ad_sum" id="ad_sum" class="input_sum" value="" readonly>
                    					<span id="sp_won">원</span>
                    				</div>
                      			
                    				<div id="many_ch">
                    				    <label id="detail_lbl" for="detail_ch">아동</label>
                    					<input type="text" name="detail_ch1" id="detail_ch1" class="input_sum_2" value="${prodvo.prod_price_child }" readonly>
                    					<label id="detail_lbl" for="detail_ch">원 x</label>
                    					<input type="text" name="detail_ch2" id="detail_ch2" class="input_sum_2" value="${resdto.ch_val }" readonly>
                    					<label id="detail_lbl" for="detail_ch">명</label>
                    					<input type="text" name="ch_sum" id="ch_sum" class="input_sum" value="" readonly>
                    					<span id="sp_won">원</span>
                    				</div>
                    
                    
                    
                    			</div>
 
                    		</div>
                		
                		</div>
            		</div>
                	<div id="reser_info">
                	    <div id="res_info">
                	    	<div id="info">
                    		<h3 id="h3_1">예약금 및 전체 금액 결제 안내</h3>
                    			<ul>
                    				<li>예약 후 3일 이내에 여행경비의 10% 이상을 결제하셔야 합니다.</li>
                    				<li>전체 금액은 반드시 예약 담당자와 상담 하신 후 결제 진행 부탁 드립니다.</li>
                    				<li>유가 및 환율 변동에 따라 총 상품요금은 변경될 수 있습니다.</li>
                    			</ul><br><br><br>
                    			<h3 id="h3_1">예약/결제 취소 관련</h3>
                    			<ul>
                    				<li><p>인터넷상에서 예약/결제 취소 및 변경은 불가능하오니, 예약/결제 취소나 여행자정보
                    			 		변경을 원하시면 반드시 예약담당자에게 연락해 주시기 바랍니다.</p></li>
                    			</ul>
                    		</div>
                		</div>
                	</div>
                	<div id="warning">
                		<p id="p_1">여유 좌석보다 초과로 예약을 하실 경우, <span id="s_1">대기예약</span>으로 진행됩니다. 출발 여부 관련해서는 담당 상담원과 확인 부탁드립니다.</p>
                	</div>
                	
                </div>
            <div id="travel_info">
               
                <div class="travel_main_info">
         
                 	<div class="infoCon_1">
                 		<div><h3>총 여행 인원</h3></div>
                 	</div>
                 	<div class="infoCon_2">
                 		<div id="con_2">
                 		
                <!--  		
         					<div id="res_boxcon_ad">
        					<label for="boxcon1" id="lbl"> <span id="sp_t">성인</span> (만 12세 이상) </label>
       			 				<div class="many_boxcon" id="boxcon1">
            						<input type="button" name="minus_adcon" id="minus_adcon" class="btn_1 minus_1" value="" >
            						<input type="text" name="ad_valcon" id="ad_valcon" class="input_1" value="1">
            						<input type="button" name="plus_adcon" id="plus_adcon" class="btn_1 plus_1" value="" >
        					</div></div>
        					<div id="res_boxcon_ch"> 
        					<label for="boxcon2" id="lbl"> <span id="sp_t">아동</span> (만 12세 미만) </label>
        						<div class="many_boxcon" id="boxcon2">
            						<input type="button" name="minus_chcon" id="minus_chcon" class="btn_1 minus_1" value="" >
            						<input type="text" name="ch_valcon" id="ch_valcon" class="input_1" value="0">
            						<input type="button" name="plus_chcon" id="plus_chcon" class="btn_1 plus_1" value="" >
       	 					</div></div>
       	 	 	 -->	
       	 	 
       	 	 				<div id="res_boxcon_ad">
        					<label for="boxcon1" id="lbl"> <span id="sp_t">성인</span> (만 12세 이상) </label>
       			 				<div class="many_boxcon" id="boxcon1">
            						<input type="button" name="minus_adcon" id="minus_adcon" class="btn_1 minus_1" value="" >
            						<input type="text" name="res_adult" id="ad_valcon" class="input_1" value="${resdto.ad_val }">
            						<input type="button" name="plus_adcon" id="plus_adcon" class="btn_1 plus_1" value="" >
        					</div></div>
        					<div id="res_boxcon_ch"> 
        					<label for="boxcon2" id="lbl"> <span id="sp_t">아동</span> (만 12세 미만) </label>
        						<div class="many_boxcon" id="boxcon2">
            						<input type="button" name="minus_chcon" id="minus_chcon" class="btn_1 minus_1" value="" >
            						<input type="text" name="res_child" id="ch_valcon" class="input_1" value="${resdto.ch_val }">
            						<input type="button" name="plus_chcon" id="plus_chcon" class="btn_1 plus_1" value="" >
       	 					</div></div>
       	 					
        				</div>
                 	</div>
                 	<div class="infoCon_3">
                 		<div class="check_wrap">
	                 		<input type="text" name="user_id" id="user_id" class="input_3" value="${memvo.name }" readonly>
	                 		<span>님도 여행에 참여 하십니까?</span>
  							<input type="checkbox" id="goCheck_btn"/>
  							<label for="goCheck_btn"><span>네, 참여합니다.</span></label>
						</div>
                 	</div>

                </div>
                
                <div class="travel_member_info">
                 	<div class="info_title">
                 		<div id="info_tleft">여행자 정보</div>
                 		<div id="info_tright"><span id="star">*</span> 필수정보 입력</div>
                 	</div>
                 	<div class="info_sub">
                 		<div id="sub_title">성인 1</div>
                 		<div id="sub_left">여행대표자</div>
                 		<div id="sub_right">MT번호 인증 시<span id="mile"> 7,137마일</span> 적립가능</div>
                 	</div>
                 	<div class="info_member">
                 	<form name="frm">
                 	 	<input type="text" name="k_name" id="k_name" class="info_input info_input1 imp" value="" placeholder="* 한글 이름">   
                 	 	
                 	<!--	<input type="text"  name="k_name" id="k_name" class="info_input info_input1 imp" value="" placeholder="* 한글 이름" onkeyup="name_han('test')"/> -->
                 		<input type="text" name="e_first" id="e_first" class="info_input info_input1 imp" value="" placeholder="* 영문 성">
                 		<input type="text" name="e_sec" id="e_sec" class="info_input info_input2 imp" placeholder="* 영문 이름">
                 		<input type="button" name="k_nat" id="k_nat" class="info_btn info_btn1" value="내국인">
                 		<input type="button" name="f_nat" id="f_nat" class="info_btns info_btn1" value="외국인"><br>
                 		<input type="hidden" name="nation" id="nation" value="0"> <!-- 0내국인 1외국인 -->
                 		
                 		<input type="text" name="birth" id="birth" class="info_input info_input1 imp" value="" oninput="oninputBirth(this)" maxlength="8" placeholder="* 생년월일 8자리">
                 	<!-- 	<input type="text" name="phone" id="phone" class="info_input info_input1" value="" placeholder="휴대폰 번호 ('-'없이 숫자만 입력)">    oninput="oninputPhone(this)"-->
                 		<input type="text" name="phone" id="phone" class="info_input info_input1 form-control imp" oninput="oninputPhone(this)" maxlength="13" placeholder="* 휴대폰 번호 (숫자만 입력)">
                 		
                 		<input type="text" name="e_mail" id="e_mail" class="info_input info_input2" value="" placeholder="이메일 주소"> <!-- 이메일도 찾아보기 -->
                 		<input type="button" name="male" id="male" class="info_btn info_btn1" value="남자">
                 		<input type="button" name="female" id="female" class="info_btns info_btn1" value="여자"><br>
                 		<input type="hidden" name="sex" id="sex" value="0"> <!-- 0남자 1여자 -->
                 		<textarea rows="4px" cols="130px" name="res_desc" class="area" placeholder="문의/추가요청사항
(여행상담용 연락처가 상기 정보와 다를 경우 이름과 전화번호를 별도 기재해 주시기 바랍니다)"></textarea>
        				</form>
                 	<div id="info_warning">
                 		<div>
                 			<p><span id="in_wn">영문이름, 생년월일, 여권만료일 등 여권정보가 잘못되어 있을 경우, 출국이 불가</span>하니 다시 한번 확인 부탁드립니다.</p>
                 			<p id="in_p"><span id="in_wn">만 18세 미만의 고객은 단독 예약이 불가</span>하오니, 모두투어 고객센터(1544-5252)로 문의 바랍니다.</p>
						</div>
                 	</div>
                 	
                 	</div>

                </div>
                
                <div class="travel_agree_info">
					<div id="agree_title">여행 약관 및 개인정보 취급 방침 동의</div>
					
					<div class="agree" id="agree1">
                		<input type="button" name="ag1_check" id="ag1_check" class="ag_check" value="">
                		<input type="hidden" name="ag1_chBtn" id="ag1_chBtn" value="0">
                		<span id="ag1_sp" class="ag_sp1">국외여행특별약관동의</span>
                		<span id="ag1_sp2" class="ag_sp2"></span>
                		<input type="hidden" name="ag1_btn" id="ag1_btn" value="0">
                	</div>
						<div id="agree1_desc" class="agree_desc agree_desc1">
							<br><p>이 상품은 [특별약관] 상품입니다.</p><br>
							<p>취소 시 [국외]여행표준약관 제6조 특약에 의한 자체 특별약관이 적용되며, 공정거래위원회 소비자분쟁해결기준 제2018-02호에 우선합니다.</p>
							<p>분쟁해결기준보다 높은 수수료가 부과될 수 있고, 별도의 동의절차를 거치니 필히 규정을 확인해주시기 바랍니다.</p><br>
							
							<p>■특별 약관</p><br>
							
							<p>▶여행자의 여행계약 해제 요청 시 여행약관에 의거하여 취소료가 부과됩니다.</p><br>
							
							<p>- 여행개시 30일전까지( ～30) 취소 통보 시 – 계약금 환급</p>
							<p>- 여행개시 20일전까지(29～20) 취소 통보 시 – 여행경비의 10% 배상</p>
							<p>- 여행개시 10일전까지(19～10) 취소 통보 시 – 여행경비의 15% 배상</p>
							<p>- 여행개시 8일전까지( 9～ 8) 취소 통보 시 – 여행경비의 20% 배상</p>
							<p>- 여행개시 1일전까지( 7～ 1) 취소 통보 시 – 여행경비의 30% 배상</p>
							<p>- 여행(출발일) 당일 취소 통보 시 – 여행경비의 50% 배상</p><br>

							<p>본 상품은 항공권 예약 확정 이후 취소 시 상기 취소료 외에 항공권 취소 수수료 관련 아래와 같은 비용이 추가로 발생됩니다.</p>
							<p>-예약 확정 후 취소 시 : 1인 10만원씩 부과(예약 유지를 위한 항공사 선입금)</p>
							<p>-발권 후 취소 시 : 항공료 전액환불불가(항공료는 담당자에게 체크 바랍니다)</p>
							<p>-발권일 : 출발 13일전 / (주말,공휴일이 발권일인 경우 이전 영업일에 적용)</p><br>
						
							<p>제1조(목적)</p>
							<p>이 약관은 (주)모두투어네트워크(이하 “여행사”라 합니다)와 여행자가 체결한 국외여행계약의 세부 이행 및 준수사항을 정함을 목적으로 합니다.</p><br>
							<p>제2조(용어의 정의)</p>
							<p>여행의 종류 및 정의, 해외여행수속대행업의 정의는 다음과 같습니다.</p>
							<p>1. 기획여행 : 여행사가 미리 여행목적지 및 관광일정, 여행자에게 제공될 운송 및 숙식서비스 내용(이하 ‘여행서비스’라 함), 여행요금을 정하여 광고 또는 기타 방법으로 여행자를 모집하여 실시하는 여행.</p>
							<p>2. 희망여행 : 여행자(개인 또는 단체)가 희망하는 여행조건에 따라 여행사가 운송․숙식․관광 등 여행에 관한 전반적인 계획을 수립하여 실시하는 여행.</p>
							<p>3. 해외여행 수속대행(이하 ‘수속대행계약’이라 함) : 여행사가 여행자로부터 소정의 수속대행요금을 받기로 약정하고, 여행자의 위탁에 따라 다음에 열거하는 업무(이하 ‘수속대행업무’라 함)를 대행하는 것.</p>
							<p>1) 사증, 재입국 허가 및 각종 증명서 취득에 관한 수속</p>
							<p>2) 출입국 수속서류 작성 및 기타 관련업무</p>
							<p>제3조(여행사와 여행자 의무)</p>
							<p>여행의 종류 및 정의, 해외여행수속대행업의 정의는 다음과 같다.</p>
							<p>① 여행사는 여행자에게 안전하고 만족스러운 여행서비스를 제공하기 위하여 여행알선 및 안내․운송․숙박 등 여행계획의 수립 및 실행과정에서 맡은 바 임무를 충실히 수행하여야 합니다.</p>
							<p>② 여행자는 안전하고 즐거운 여행을 위하여 여행자간 화합도모 및 여행사의 여행질서 유지에 적극 협조하여야 합니다.</p><br>
							<p>제4조(계약의 구성)</p>
							<p>① 여행계약은 여행계약서(붙임)와 여행약관․여행일정표(또는 여행 설명서)를 계약내용으로 합니다.</p>
							<p>② 여행계약서에는 여행사의 상호, 소재지 및 관광진흥법 제9조에 따른 보증보험 등의 가입(또는 영업보증금의 예치 현황) 내용이 포함되어야 합니다.</p>
							<p>③ 여행일정표(또는 여행설명서)에는 여행일자별 여행지와 관광내용․교통수단․쇼핑횟수․숙박장소․식사 등 여행실시일정 및 여행사 제공 서비스 내용과 여행자 유의사항이 포함되어야 합니다.</p><br>
							<p>제5조(계약체결의 거절)</p>
							<p>여행사는 여행자에게 다음 각 호의 1에 해당하는 사유가 있을 경우에는 여행자와의 계약체결을 거절할 수 있습니다.</p>
							<p>1. 질병, 신체이상 등의 사유로 개별관리가 필요하거나, 단체여행(다른 여행자의 여행에 지장을 초래하는 등)의 원활한 실시에 지장이 있다고 인정되는 경우</p>
							<p>2. 계약서에 명시한 최대행사인원이 초과된 경우</p><br>
							<p>제6조(특약)</p>
							<p>여행사와 여행자는 관련법규에 위반되지 않는 범위 내에서 서면(전자문서를 포함한다. 이하 같다)으로 특약을 맺을 수 있습니다.</p>
							<p>이 경우 여행사는 특약의 내용이 표준약관과 다르고 표준약관보다 우선 적용됨을 여행자에게 설명하고 별도의 확인을 받아야 합니다.</p><br>
							<p>제7조(계약서 등 교부 및 안전정보 제공)</p>
							<p>여행사는 여행자와 여행계약을 체결한 경우 계약서와 약관 및 여행일정표(또는 여행설명서)를 각 1부씩 여행자에게 교부하고, 여행목적지에 관한 안전정보를 제공하여야 합니다.</p>
							<p>또한 여행 출발 전 해당 여행지에 대한 안전정보가 변경된 경우에도 변경된 안전정보를 제공하여야 합니다.</p><br>
							<p>제8조(계약서 및 약관 등 교부 간주)</p>
							<p>다음 각 호의 경우 여행계약서와 여행약관 및 여행일정표(또는 여행설명서)가 교부된 것으로 간주합니다.</p>
							<p>1. 여행자가 인터넷 등 전자정보망으로 제공된 여행계약서, 약관 및 여행일정표(또는 여행설명서)의 내용에 동의하고 여행계약의 체결을 신청한 데 대해 여행사가 전자정보망 내지 기계적 장치 등을 이용하여 여행자에게 승낙의 의사를 통지한 경우</p>
							<p>2. 여행사가 팩시밀리 등 기계적 장치를 이용하여 제공한 여행계약서, 약관 및 여행일정표(또는 여행설명서)의 내용에 대하여 여행자가 동의하고 여행계약의 체결을 신청하는 서면을 송부한 데 대해 여행사가 전자정보망 내지 기계적 장치 등을 이용하여 여행자에게 승낙의 의사를 통지한 경우</p><br>
							<p>제9조(여행사의 책임)</p>
							<p>여행사는 여행 출발시부터 도착시까지 여행사 본인 또는 그 고용인, 현지여행사 또는 그 고용인 등(이하 ‘사용인’이라 함)이 제3조제1항에서 규정한 여행사 임무와 관련하여 여행자에게 고의 또는 과실로 손해를 가한 경우 책임을 집니다.</p><br>
							<p>제10조(여행요금)</p>
							<p>① 여행계약서의 여행요금에는 다음 각 호가 포함됩니다. 다만, 희망여행은 당사자간 합의에 따릅니다.</p>
							<p>1. 항공기, 선박, 철도 등 이용운송기관의 운임(보통운임기준)</p>
							<p>2. 공항, 역, 부두와 호텔사이 등 송영버스요금</p>
							<p>3. 숙박요금 및 식사요금</p>
							<p>4. 안내자경비</p>
							<p>5. 여행 중 필요한 각종세금</p>
							<p>6. 국내외 공항․항만세</p>
							<p>7. 관광진흥개발기금</p>
							<p>8. 일정표내 관광지 입장료</p>
							<p>9. 기타 개별계약에 따른 비용</p>
							<p>② 제1항에도 불구하고 반드시 현지에서 지불해야 하는 경비가 있는 경우 그 내역과 금액을 여행계약서에 별도로 구분하여 표시하고, 여행사는 그 사유를 안내하여야 합니다.</p>
							<p>③ 여행자는 계약체결시 계약금(여행요금 중 10%이하 금액)을 여행사에게 지급하여야 하며, 계약금은 여행요금 또는 손해배상액의 전부 또는 일부로 취급합니다.</p>
							<p>④ 여행자는 제1항의 여행요금 중 계약금을 제외한 잔금을 여행출발 7일전까지 여행사에게 지급하여야 합니다.</p>
							<p>⑤ 여행자는 제1항의 여행요금을 당사자가 약정한 바에 따라 카드, 계좌이체 또는 무통장입금 등의 방법으로 지급하여야 합니다.</p>
							<p>⑥ 희망여행요금에 여행자 보험료가 포함되는 경우 여행사는 보험회사명, 보상내용 등을 여행자에게 설명하여야 합니다.</p><br>
							<p>제11조(여행요금의 변경)</p>
							<p>① 국외여행을 실시함에 있어서 이용운송․숙박기관에 지급하여야 할 요금이 계약체결시보다 5%이상 증감하거나 여행요금에 적용된 외화환율이 계약체결시보다 2% 이상 증감한 경우 여행사 또는 여행자는 그 증감된 금액 범위 내에서 여행요금의 증감을 상대방에게 청구할 수 있습니다.</p>
							<p>② 여행사는 제1항의 규정에 따라 여행요금을 증액하였을 때에는 여행 출발일 15일전에 여행자에게 통지하여야 합니다.</p><br>
							<p>제12조(여행조건의 변경요건 및 요금 등의 정산)</p>
							<p>① 계약서 등에 명시된 여행조건은 다음 각 호의 1의 경우에 한하여 변경될 수 있습니다.</p>
							<p>1. 여행자의 안전과 보호를 위하여 여행자의 요청 또는 현지사정에 의하여 부득이하다고 쌍방이 합의한 경우</p>
							<p>2. 천재지변, 전란, 정부의 명령, 운송‧숙박기관 등의 파업‧휴업 등으로 여행의 목적을 달성할 수 없는 경우</p>
							<p>② 여행사가 계약서 등에 명시된 여행일정을 변경하는 경우에는 해당 날짜의 일정이 시작되기 전에 여행자의 서면 동의를 받아야 합니다. 이때 서면동의서에는 변경일시, 변경내용, 변경으로 발생하는 비용이 포함되어야 합니다.</p>
							<p>③ 천재지변, 사고, 납치 등 긴급한 사유가 발생하여 여행자로부터 여행일정 변경 동의를 받기 어렵다고 인정되는 경우에는 제2항에 따른 일정변경 동의서를 받지 아니할 수 있습니다. 다만, 여행사는 사후에 서면으로 그 변경 사유 및 비용 등을 설명하여야 합니다.</p>
							<p>④ 제1항의 여행조건 변경 및 제11조의 여행요금 변경으로 인하여 제10조 제1항의 여행요금에 증감이 생기는 경우에는 여행출발 전 변경 분은 여행출발 이전에, 여행 중 변경 분은 여행종료 후 10일 이내에 각각 정산(환급)하여야 합니다.</p>
							<p>⑤ 제1항의 규정에 의하지 아니하고 여행조건이 변경되거나 제16조 내지 제18조의 규정에 의한 계약의 해제․해지로 인하여 손해배상액이 발생한 경우에는 여행출발 전 발생 분은 여행 출발 이전에, 여행 중 발생 분은 여행종료 후 10일 이내에 각각 정산(환급)하여야 합니다.</p>
							<p>⑥ 여행자는 여행출발 후 자기의 사정으로 숙박, 식사, 관광 등 여행요금에 포함된 서비스를 제공받지 못한 경우 여행사에게 그에 상응하는 요금의 환급을 청구할 수 없습니다. 다만, 여행이 중도에 종료된 경우에는 제18조에 준하여 처리합니다.</p><br>
							<p>제13조(여행자 지위의 양도)</p>
							<p>① 여행자가 개인사정 등으로 여행자의 지위를 양도하기 위해서는 여행사의 승낙을 받아야 합니다. 이때 여행사는 여행자 또는 여행자의 지위를 양도받으려는 자가 양도로 발생하는 비용을 지급할 것을 조건으로 양도를 승낙할 수 있습니다.</p>
							<p>② 전항의 양도로 발생하는 비용이 있을 경우 여행사는 기한을 정하여 그 비용의 지급을 청구하여야 합니다.</p>
							<p>③ 여행사는 계약조건 또는 양도하기 어려운 불가피한 사정 등을 이유로 제1항의 양도를 승낙하지 않을 수 있습니다.</p>
							<p>④ 제1항의 양도는 여행사가 승낙한 때 효력이 발생합니다. 다만, 여행사가 양도로 인해 발생한 비용의 지급을 조건으로 승낙한 경우에는 정해진 기한 내에 비용이 지급되는 즉시 효력이 발생합니다.</p>
							<p>⑤ 여행자의 지위가 양도되면, 여행계약과 관련한 여행자의 모든 권리 및 의무도 그 지위를 양도 받는 자에게 승계됩니다.</p><br>
							<p>제14조(여행사의 하자담보 책임)</p>
							<p>① 여행자는 여행에 하자가 있는 경우에 여행사에게 하자의 시정 또는 대금의 감액을 청구할 수 있습니다. 다만, 그 시정에 지나치게 많은 비용이 들거나 그 밖에 시정을 합리적으로 기대할 수 없는 경우에는 시정을 청구할 수 없습니다.</p>
							<p>② 여행자는 시정 청구, 감액 청구를 갈음하여 손해배상을 청구하거나 시정 청구, 감액 청구와 함께 손해배상을 청구 할 수 있습니다.</p>
							<p>③ 제1항 및 제2항의 권리는 여행기간 중에도 행사할 수 있으며, 여행종료일부터 6개월 내에 행사하여야 합니다.</p><br>
							<p>제15조(손해배상)</p>
							<p>① 여행사는 현지여행사 등의 고의 또는 과실로 여행자에게 손해를 가한 경우 여행사는 여행자에게 손해를 배상하여야 합니다.</p>
							<p>② 여행사의 귀책사유로 여행자의 국외여행에 필요한 사증, 재입국 허가 또는 각종 증명서 등을 취득하지 못하여 여행자의 여행일정에 차질이 생긴 경우 여행사는 여행자로부터 절차대행을 위하여 받은 금액 전부 및 그 금액의 100%상당액을 여행자에게 배상하여야 합니다.</p>
							<p>③ 여행사는 항공기, 기차, 선박 등 교통기관의 연발착 또는 교통체증 등으로 인하여 여행자가 입은 손해를 배상하여야 합니다. 다만, 여행사가 고의 또는 과실이 없음을 입증한 때에는 그러하지 아니합니다.</p>
							<p>④ 여행사는 자기나 그 사용인이 여행자의 수하물 수령, 인도, 보관 등에 관하여 주의를 해태(懈怠)하지 아니하였음을 증명하지 아니하면 여행자의 수하물 멸실, 훼손 또는 연착으로 인한 손해를 배상할 책임을 면하지 못합니다.</p><br>
							<p>제16조(여행출발 전 계약해제)</p>
							<p>① 여행사 또는 여행자는 여행 출발 전 이 여행계약을 해제할 수 있습니다. 이 경우 발생하는 손해액은 ‘소비자분쟁해결기준’(공정거래위원회 고시)에 따라 배상합니다.</p>
							<p>② 여행사 또는 여행자는 여행출발 전에 다음 각 호의 1에 해당하는 사유가 있는 경우 상대방에게 제1항의 손해배상액을 지급하지 아니하고 이 여행계약을 해제할 수 있습니다.</p>
							<p>1. 여행사가 해제할 수 있는 경우</p>
							<p>가. 제12조 제1항 제1호 및 제2호 사유의 경우</p>
							<p>나. 여행자가 다른 여행자에게 폐를 끼치거나 여행의 원활한 실시에 현저한 지장이 있다고 인정될 때</p>
							<p>다. 질병 등 여행자의 신체에 이상이 발생하여 여행에의 참가가 불가능한 경우</p>
							<p>라. 여행자가 계약서에 기재된 기일까지 여행요금을 납입하지 아니한 경우</p>
							<p>2. 여행자가 해제할 수 있는 경우</p>
							<p>가. 제12조 제1항 제1호 및 제2호의 사유가 있는 경우</p>
							<p>나. 여행사가 제21조에 따른 공제 또는 보증보험에 가입하지 아니 하였거나 영업보증금을 예치하지 않은 경우</p>
							<p>다. 여행자의 3촌 이내 친족이 사망한 경우</p><br>
							<p>*당사제출용 증빙서류</p>
							<p>- 친족을 확인 할 수 있는 서류(가족관계증명서 등…)</p>
							<p>- 진단서 또는 사체검안서(사망진단서)</p>
							<p>- 그 밖의 필요서류</p>
							<p>라. 질병 등 여행자의 신체에 이상이 발생하여 여행에의 참가가 불가능한 경우</p><br>
							<p>*당사제출용 증빙서류</p>
							<p>- 진단서</p>
							<p>- 그 밖의 필요 서류</p>
							<p>마. 배우자 또는 직계존비속이 신체이상으로 3일 이상 병원(의원)에 입원하여 여행 출발 전까지 퇴원이 곤란한 경우 그 배우자 또는 보호자 1인</p><br>
							<p>*당사제출용 증빙서류</p>
							<p>- 친족을 확인할 수 있는 서류(가족관계증명서 등…)</p>
							<p>- 진단서</p>
							<p>- 그 밖의 필요서류</p>
							<p>바. 여행사의 귀책사유로 계약서 또는 여행일정표(여행설명서)에 기재된 여행일정대로의 여행실시가 불가능해진 경우</p>
							<p>사. 제10조제1항의 규정에 의한 여행요금의 증액으로 인하여 여행 계속이 어렵다고 인정될 경우</p><br>
							<p>제17조(최저행사인원 미 충족시 계약해제)</p>
							<p>① 여행사는 최저행사인원이 충족되지 아니하여 여행계약을 해제하는 경우 여행출발 7일전까지 여행자에게 통지하여야 합니다.</p>
							<p>② 여행사가 여행참가자 수 미달로 전항의 기일내 통지를 하지 아니하고 계약을 해제하는 경우 이미 지급받은 계약금 환급 외에 다음 각 목의 1의 금액을 여행자에게 배상하여야 합니다.</p>
							<p>가. 여행출발 1일전까지 통지시 : 여행요금의 30%</p>
							<p>나. 여행출발 당일 통지시 : 여행요금의 50%</p><br>
							<p>제18조(여행출발 후 계약해지)</p>
							<p>① 여행사 또는 여행자는 여행출발 후 부득이한 사유가 있는 경우 각 당사자는 여행계약을 해지할 수 있습니다. 다만, 그 사유가 당사자 한쪽의 과실로 인하여 생긴 경우에는 상대방에게 손해를 배상하여야 합니다.</p>
							<p>② 제1항에 따라 여행계약이 해지된 경우 귀환운송 의무가 있는 여행사는 여행자를 귀환운송 할 의무가 있습니다.</p>
							<p>③ 제1항의 계약해지로 인하여 발생하는 추가 비용은 그 해지사유가 어느 당사자의 사정에 속하는 경우에는 그 당사자가 부담하고, 양 당사자 누구의 사정에도 속하지 아니하는 경우에는 각 당사자가 추가 비용의 50%씩을 부담합니다.</p>
							<p>④ 여행자는 여행에 중대한 하자가 있는 경우에 그 시정이 이루어지지 아니하거나 계약의 내용에 따른 이행을 기대할 수 없는 경우에는 계약을 해지할 수 있습니다.</p>
							<p>⑤ 제4항에 따라 계약이 해지된 경우 여행사는 대금청구권을 상실합니다. 다만, 여행자가 실행된 여행으로 이익을 얻은 경우에는 그 이익을 여행사에게 상환하여야 합니다.</p>
							<p>⑥ 제4항에 따라 계약이 해지된 경우 여행사는 계약의 해지로 인하여 필요하게 된 조치를 할 의무를 지며, 계약상 귀환운송 의무가 있으면 여행자를 귀환 운송하여야 합니다. 이 경우 귀환운송비용은 원칙적으로 여행사가 부담하여야 하나, 상당한 이유가 있는 때에는 여행사는 여행자에게 그 비용의 일부를 청구할 수 있습니다.</p><br>
							<p>제19조(여행의 시작과 종료)</p>
							<p>여행의 시작은 탑승수속(선박인 경우 승선수속)을 마친 시점으로 하며, 여행의 종료는 여행자가 입국장 보세구역을 벗어나는 시점으로 합니다. 다만, 계약내용상 국내이동이 있을 경우에는 최초 출발지에서 이용하는 운송수단의 출발시각과 도착시각으로 합니다.</p><br>
							<p>제20조(설명의무)</p>
							<p>여행사는 계약서에 정하여져 있는 중요한 내용 및 그 변경사항을 여행자가 이해할 수 있도록 설명하여야 합니다.</p><br>
							<p>제21조(보험가입 등)</p>
							<p>여행사는 이 여행과 관련하여 여행자에게 손해가 발생한 경우 여행자에게 보험금을 지급하기 위한 보험 또는 공제에 가입하거나 영업보증금을 예치하여야 합니다.</p><br>
							<p>제22조(기타사항)</p>
							<p>① 이 계약에 명시되지 아니한 사항 또는 이 계약의 해석에 관하여 다툼이 있는 경우에는 여행사 또는 여행자가 합의하여 결정하되, 합의가 이루어지지 아니한 경우에는 관계법령 및 일반관례에 따릅니다.</p>
							<p>② 특수지역에의 여행으로서 정당한 사유가 있는 경우에는 이 표준약관의 내용과 달리 정할 수 있습니다.</p><br>
						</div>
						
					<div class="agree" id="agree2">
						<input type="button" name="ag2_check" id="ag2_check" class="ag_check" value="">
						<input type="hidden" name="ag2_chBtn" id="ag2_chBtn" value="0">
                		<span id="ag2_sp" class="ag_sp1">해외여행 보험</span>
                		<span id="ag2_sp2" class="ag_sp2"></span>
                		<input type="hidden" name="ag2_btn" id="ag2_btn" value="0">
					</div>
						<div id="agree2_desc" class="agree_desc agree_desc1">
							<br><p>Ⅰ. 보통약관</p><br>
							<p>제1조(보험계약의 성립)</p><br>
							<p>① 보험계약은 보험계약자의 청약과 보험회사의 승낙으로 이루어집니다.(이하 “보험계약”은 “계약”, “보험계약자”는 “계약자”, “보험회사”는 “회사”라 합니다)</p>
							<p>② 회사는 계약의 청약을 받고 보험료 전액 또는 제1회 보험료(일정기간 단위의 나눠내는 보험료)를 받은 경우에는 청약일(진단계약의 경우에는 진단일)로부터 30일 이내에 승낙 또는 거절의 통지를 하며 통지가 없으면 승낙한 것으로 봅니다.</p>
							<p>③ 회사가 청약을 승낙한 때에는 지체없이 보험가입증서(보험증권)를 계약자에게 교부하여 드리며, 청약을 거절할 경우에는 거절통지와 함께 받은 금액을 계약자에게 돌려드립니다.</p>
							<p>④ 이미 성립한 계약을 연장하거나 변경하는 경우에는 회사는 보험가입증서(보험증권)에 그 사실을 기재하거나 서면으로 알림으로써 보험가입증서(보험증권)의 교부에 대신할 수 있습니다.</p><br>
							<p>제2조(약관교부 및 설명의무 등)</p>
							<p>① 회사는 계약을 체결할 때 계약자에게 보험약관을 드리고 그 약관의 중요한 내용을 설명하여 드립니다.</p>
							<p>② 회사가 제1항에 의해 제공될 약관을 계약자에게 전달하지 아니하거나 약관의 중요한 내용을 설명하지 아니한 때 또는 계약을 체결할 때 계약자가 청약서에 자필서명(날인(도장을 찍음)을 포함합니다)을 하지 아니한 때에는 계약자는 계약일로부터 1개월 이내에 계약을 취소할 수 있습니다.</p>
							<p>③ 제2항에 따라 계약이 취소된 경우에는 회사는 이미 납입한 보험료를 계약자에게 돌려 드리며, 보험료를 받은 기간에 대하여 보험개발원이 공시하는 정기예금이율로 계산한 금액을 더하여 지급합니다.</p><br>
							<p>제3조(보험료)</p>
							<p>① 보험료는 다른 약정이 없으면 보험기간이 시작되기 전에 내어야 합니다.</p>
							<p>② 다른 약정이 없으면 보험기간이 시작된 후라도 보험료를 받기 전에 생긴 손해는 보상하여 드리지 아니합니다.</p><br>
							<p>제4조(회사의 보장의 시기 및 종기)</p>
							<p>① 회사의 보장은 보험기간의 첫날 오후 4시에 시작하여 마지막날 오후 4시에 끝납니다. 그러나 보험가입증서(보험증권)에 이와 다른 시각이 기재되어 있을 때에는 그 시각으로 하며, 시각은 보험가입증서(보험증권) 발행지의 표준시를 따릅니다.</p>
							<p>② 회사가 계약자로부터 계약의 청약과 함께 보험료 상당액의 전부 또는 일부를 받은 경우에 그 청약을 승낙하기 전에 계약에서 정한 보험사고가 생긴 때에는 회사는 계약상의 보장을 합니다.</p>
							<p>③ 제2항의 규정에도 불구하고 회사는 다음 중 한 가지에 해당되는 경우에는 보장을 하지 아니합니다.</p>
							<p>1. 제1항에서 정한 보장의 시기가 개시되지 아니한 경우</p>
							<p>2. 제13조(계약전 알릴의무)의 규정에 의하여 계약자 또는 피보험자가 회사에 알린 내용 또는 건강진단 내용이 보험금 지급사유의 발생에 영향을 미쳤음을 회사가 증명하는 경우</p>
							<p>3. 제15조(계약의 해지)의 규정을 준용하여 회사가 보장을 하지 아니할 수 있는 경우</p>
							<p>④ 제1항의 규정에도 불구하고 회사는 피보험자가 주거지를 출발하기 전과 주거지에 도착한 이후에 발생한 사고에 대하여는 보상하여 드리지 아니합니다.</p>
							<p>⑤ 피보험자가 승객으로 탑승하는 항공기, 선박 등의 교통승용구가 보험기간 마지막날의 오후 4시까지 여행의 최종목적지에 도착하도록 예정되어 있음에도 불구하고 도착이 지연되었을 경우에는 제1항의 규정에도 불구하고 회사의 보장의 종기는 24시간을 한도로 자동적으로 연장됩니다.</p>
							<p>⑥ 제5항의 경우 중 피보험자가 승객으로 탑승하는 항공기가 제3자에 의한 불법적인 지배를 받았을 경우 또는 공권력에 의해 구속을 받았을 경우에는 그때부터 피보험자가 정상적인 여행 상태로 돌아올 때까지의 필요한 시간 또는 회사가 타당하다고 인정되는 시간을 한도로 하여 회사의 보장의 종기는 연장됩니다.</p><br>
							<p>제5조(청약의 철회)</p>
							<p>① 가계성보험(개인의 일상생활과 관련된 보험으로 보험료를 단체 또는 법인이 부담하지 않는 개인보험계약과 단체요율(피보험자가 단체인 계약에 적용되는 요율)이 적용되지 않는 계약을 말합니다)에 한하여 계약자는 청약을 한 날 또는 보험료를 납입한 날부터 15일 이내에 그 청약을 철회할 수 있습니다. 다만, 보험기간이 90일 이내인 경우에는 그러하지 아니합니다.</p>
							<p>② 회사는 청약의 철회를 접수한 경우에는 지체없이 보험료를 돌려드리며, 보험료 반환이 지체된 기간에 대하여는 보험개발원이 공시하는 정기예금 이율로 계산한 금액을 더하여 지급합니다.</p><br>
							<p>제6조(보상하는 손해)</p>
							<p>① 회사는 피보험자가 보험가입증서(보험증권)에 기재된 여행을 목적으로 주거지를 출발하여 여행을 마치고 주거지에 도착할 때까지의 여행도중에 급격하고도 우연한 외래의 사고(이하 “사고”라 합니다)로 신체(의수, 의족, 의안, 의치 등 신체보조장구는 제외합니다)에 상해를 입었을 때에는 그 상해로 인하여 생긴 손해(이하 “손해”라 합니다)를 이 약관에 따라 보상하여 드립니다.</p>
							<p>② 제1항의 상해에는 유독가스 또는 유독물질을 우연하게도 일시에 흡입, 흡수 또는 섭취하였을 때에 생긴 중독증상을 포함합니다. 그러나 세균성 음식물중독과 상습적으로 흡입, 흡수 또는 섭취한 결과로 생긴 중독증상은 이에 포함되지 아니합니다.</p><br>
							<p>제7조 (보상하지 아니하는 손해)</p>
							<p>① 회사는 아래의 사유를 원인으로 하여 생긴 손해는 보상하여 드리지 아니합니다.</p>
							<p>1. 계약자나 피보험자의 고의</p>
							<p>2. 보험수익자(이하 "수익자"라 합니다)의 고의. 그러나 그 수익자가 보험금의 일부 수익자인 경우에는 그 수익자에 해당하는 보험금을 제외한 나머지 보험금을 다른 수익자에게 지급합니다.</p>
							<p>3. 피보험자의 자해, 자살, 자살미수, 형법상의 범죄행위 또는 폭력행위(다만, 형법상 정당방위, 긴급피난 및 정당행위로 인정되는 경우에는 보상하여 드립니다)</p>
							<p>4. 피보험자의 질병</p>
							<p>5. 피보험자의 심신상실 또는 정신질환</p>
							<p>6. 피보험자의 임신, 출산(제왕절개 포함), 유산, 외과적 수술 또는 그 밖의 의료처치</p>
							<p>7. 피보험자의 사형</p>
							<p>8. 지진, 분화, 해일 또는 이와 비슷한 천재지변</p>
							<p>9. 전쟁, 외국의 무력행사, 혁명, 내란, 사변, 폭동, 소요, 기타 이들과 유사한 사태</p>
							<p>10. 핵연료 물질(사용이 끝난 연료를 포함합니다. 이하 같습니다) 또는 핵연료 물질에 의하여 오염된 물질(원자핵분열 생성물을 포함합니다)의 방사성, 폭발성 또는 그밖의 유해한 특성에 의한 사고</p>
							<p>11. 제10호 이외의 방사선을 쬐는 것 또는 방사능 오염</p>
							<p>② 회사는 다른 약정이 없으면 피보험자가 직업, 직무 또는 동호회 활동목적으로 아래에 열거된 행위를 하는 동안에 생긴 손해에 대하여는 보상하여 드리지 아니합니다.</p>
							<p>1. 전문등반(전문적인 등산용구를 사용하여 암벽 또는 빙벽을 오르내리거나 특수한 기술, 경험, 사전훈련을 필요로 하는 등반을 말합니다), 글라이더조종, 스카이다이빙, 스쿠버다이빙, 행글라이딩 또는 이와 비슷한 위험한 활동</p>
							<p>2. 모터보트, 자동차 또는 오토바이에 의한 경기, 시범, 흥행(이를 위한 연습을 포함 합니다) 또는 시운전(다만, 공용도로상에서 시운전을 하는 동안 발생한 상해는 보상하여 드립니다)</p>
							<p>3. 선박승무원, 어부, 사공, 양식업자, 그 밖에 선박에 탑승하는 것을 직무로 하는 사람이 직무상 선박에 탑승하고 있는 동안</p><br>
							<p>제8조(사망보험금)</p>
							<p>① 회사는 피보험자가 제6조(보상하는 손해)에서 정한 사고로 상해를 입고 그 직접결과로써 사고일부터 1년 이내에 사망하였을 경우에는 보험가입금액 전액을 사망보험금으로 수익자(수익자의 지정이 없을 때에는 피보험자의 상속인)에게 지급합니다.</p>
							<p>② 피보험자가 탑승한 항공기 또는 선박이 조난 또는 행방불명되어 피보험자의 생사가 분명하지 아니한 상태에서 정부기관이 피보험자의 사망을 인정하여 관공서의 사망보고에 따라 가족관계등록부에 사망이 기재된 경우에는 그 사고가 발생한 때에 피보험자가 사망한 것으로 봅니다. 그러나 사망보험금을 지급한 후에 피보험자의 생존이 확인되었을 때에는 지급한 보험금을 회수합니다.</p><br>
						</div>
						
					<div class="agree" id="agree3">
						<input type="button" name="ag3_check" id="ag3_check" class="ag_check" value="">
						<input type="hidden" name="ag3_chBtn" id="ag3_chBtn" value="0">
                		<span id="ag3_sp" class="ag_sp1">개인정보 수집, 이용동의</span>
                		<span id="ag3_sp2" class="ag_sp2"></span>
                		<input type="hidden" name="ag3_btn" id="ag3_btn" value="0">
					</div>
						<div id="agree3_desc" class="agree_desc agree_desc2">
							<p>당사는 여행상품의 예약 및 여행관련 서비스 제공 등의 업무처리를 위하여 고객으로부터 최소한의 필수정보를 수집하며, 제공한 모든 개인정보는 별도의 동의가 없는 한 해당목적 이외의 다른 목적으로 사용하지 않습니다.</p><br>
							<p>1. 개인정보의 수집 항목</p>
							<p>: 성명(영문포함), 휴대전화번호, 이메일, 생년월일, 성별, 결제기록, 여권정보, 비자정보 등</p><br>
							<p>2. 개인정보 수집 및 이용 목적</p>
							<p>가. 콘텐츠 제공, 구매 및 요금결제, 물품 등을 배송(발송), 금융거래 본인인증 및 금융서비스 등의 서비스 제공에 관한 계약 이행 및 요금정산</p>
							<p>나. 인구통계학적 분석자료</p>
							<p>다. 불만처리 등의 민원처리 및 고지사항 전달 등을 위한 고객관리</p><br>
							<p>3. 개인정보 보유 및 이용기간</p>
							<p>아래와 같은 관계법령의 규정에 의하여 정한 기간 동안 보존할 필요가 있는 경우를 제외하고는 개인정보 수집 및 이용목적이 달성된 후 파기합니다.</p>
							<p>가. 계약 또는 청약철회 등에 관한 기록 : 5년(전자상거래 등에서의 소비자보호에 관한 법률)</p>
							<p>나. 대금결제 및 재화 등의 공급에 관한 기록 : 5년(전자상거래 등에서의 소비자보호에 관한 법률)</p>
							<p>다. 소비자의 불만 또는 분쟁처리에 관한 기록: 3년(전자상거래 등에서의 소비자보호에 관한 법률)</p>
							<p>라. 표시•광고에 관한 기록: 6개월</p><br>
							<p>4. 동의거부권</p>
							<p>: 개인정보 수집 및 이용 동의를 거부할 권리가 있으며, 미동의 시 여행서비스의 제공이 제한됩니다.</p><br>
						</div>
						
					<div class="agree" id="agree4">
						<input type="button" name="ag4_check" id="ag4_check" class="ag_check" value="">
						<input type="hidden" name="ag4_chBtn" id="ag4_chBtn" value="0">
                		<span id="ag4_sp" class="ag_sp1">고유식별정보 수집, 이용동의</span>
                		<span id="ag4_sp2" class="ag_sp2"></span>
                		<input type="hidden" name="ag4_btn" id="ag4_btn" value="0">
					</div>
						<div id="agree4_desc" class="agree_desc agree_desc2">
							<br><p>당사는 개인정보보호법을 준수하며 서비스 수행의 목적에 한하여 최소한의 고유식별정보를 수집 및 이용하고 있습니다.</p><br>
							<p>1. 수집 및 이용하는 고유식별 정보</p>
							<p>: 여권번호</p><br>
							<p>2. 고유식별 정보 수집 및 이용목적</p>
							<p>가. 보험회사에 여행자 보험 가입</p>
							<p>나. 해외여행 출국가능 여부파악 및 여행자 본인 식별</p><br>
							<p>3. 고유식별 정보 보유 및 이용기간</p>
							<p>: 수집이용 목적 또는 제공받은 목적의 달성시까지</p><br>
							<p>4. 동의거부권</p>
							<p>: 고유식별 정보 수집 및 이용 동의를 거부할 권리가 있으며, 미동의 시 여행서비스의 제공이 제한됩니다.</p><br>							
						</div>
						
					<div class="agree" id="agree5">
						<input type="button" name="ag5_check" id="ag5_check" class="ag_check" value="">
						<input type="hidden" name="ag5_chBtn" id="ag5_chBtn" value="0">
                		<span id="ag5_sp" class="ag_sp1">개인정보 제3자 제공동의 (선택)</span>
                		<span id="ag5_sp2" class="ag_sp2"></span>
                		<input type="hidden" name="ag5_btn" id="ag5_btn" value="0">
					</div>
						<div id="agree5_desc" class="agree_desc agree_desc3">
							<br><p>1. 당사는 고객님의 동의가 있거나 관련 법령의 규정에 의한 경우를 제외하고 어떠한 경우에도 ‘개인정보의 수집 및 이용목적’ 에서 고지한 범위를 넘어 서비스와 무관한 타 기업/기관에 제공하거나 이용하지 않습니다.</p>
							<p>단, 고객님의 개인정보를 제공 및 공유하는 경우는 다음과 같습니다.</p><br>
							<p>2. 개인정보 3자제공에 대한 동의를 거부할 권리가 있으며, 미동의 시 여행서비스의 제공이 제한됩니다.</p>
							<p>* 제3자 제공에 대한 동의를 거부할 권리가 있으며, 미동의 시 티켓 및 바우쳐, 일정표 전송 등 여행서비스의 제공이 제한될 수 있습니다.</p>
						</div>
						
					<div class="agree" id="agree6">
						<input type="button" name="ag6_check" id="ag6_check" class="ag_check" value="">
						<input type="hidden" name="ag6_chBtn" id="ag6_chBtn" value="0">
                		<span id="ag6_sp" class="ag_sp1">증빙제공 및 환급규정 동의</span>
                		<span id="ag6_sp2" class="ag_sp2"></span>
                		<input type="hidden" name="ag6_btn" id="ag6_btn" value="0">
					</div>
						<div id="agree6_desc" class="agree_desc agree_desc3">
							<br><h4>[증빙제공 및 환급규정]</h4>
							<p>고객은 계약 취소와 관련하여 취소수수료(여행사 인건비 포함) 부가 내역에 대한 구체적인 증빙과 설명을 여행사에 요구할 수 있으며,</p>
							<p>여행사는 관련 설명과 증빙을 제시하고, 취소수수료 규정과 차액이 있는 경우 이를 환급합니다.</p>
						</div>
                </div>
                <div id="btn_box">
                	<input type="submit" name="reservation" id="reservation" class="btn_2" value="결제하기" onclick="return check()">
                	<input type="hidden" name="id" id="id" value="${sessionScope.id }">
					<input type="hidden" name="prod_no" id="prod_no" value="${prodvo.prod_no }">
					<input type="hidden" name="res_third" id="res_third" value="0">
					<input type="hidden" name="res_price" id="res_price" value="${prodvo.prod_price_adult }">
                </div>
                	
            	</div> <!-- travel_info -->
            	
            </form>	
        	</div>  <!-- product_main -->
    	</div>
	</div>
	
<script>

	const plus_adcon = document.querySelector("#plus_adcon");
	plus_adcon.addEventListener('click',ad_pluscon);
	const minus_adcon = document.querySelector("#minus_adcon");
	minus_adcon.addEventListener('click',ad_minuscon);
	const ad_valcon = document.querySelector("#ad_valcon");
	ad_valcon.addEventListener('keyup',ad_personcon);

	const plus_chcon = document.querySelector("#plus_chcon");
	plus_chcon.addEventListener('click',ch_pluscon);
	const minus_chcon = document.querySelector("#minus_chcon");
	minus_chcon.addEventListener('click',ch_minuscon);
	const ch_valcon = document.querySelector("#ch_valcon");
	ch_valcon.addEventListener('keyup',ch_personcon);

	const total_sum = document.querySelector("#total_sum");  // 상품가격 총합
	const detail_ad1 = document.querySelector("#detail_ad1"); // 상품가격 성인
	const detail_ad2 = document.querySelector("#detail_ad2"); // 상품인원수 성인
	const ad_sum = document.querySelector("#ad_sum"); // 상품가격 성인 x 인원수
	const detail_ch1 = document.querySelector("#detail_ch1"); // 상품가격 아동
	const detail_ch2 = document.querySelector("#detail_ch2"); // 상품인원수 아동
	const ch_sum = document.querySelector("#ch_sum"); // 상품가격 아동 x 인원수
	
	const many_ch = document.querySelector("#many_ch");

	const goCheck_btn = document.querySelector("#goCheck_btn");
	goCheck_btn.addEventListener('click',btn_goCheck);

	const nation = document.querySelector("#nation");
	const sex = document.querySelector("#sex");
	const k_name = document.querySelector("#k_name");
	k_name.addEventListener('keyup', onlyKorean);
	k_name.addEventListener('mouseout',realTime_Kcheck2);
	
	const e_first = document.querySelector("#e_first");
	e_first.addEventListener('keyup', onlyEnglish);	
	e_first.addEventListener('mouseout',realTime_Echeck);
	
	const e_sec = document.querySelector("#e_sec");
	e_sec.addEventListener('keyup', onlyEnglish);
	e_sec.addEventListener('mouseout',realTime_E1check);
	
	const birth = document.querySelector("#birth");
	birth.addEventListener('mouseout',realTime_birthcheck);
	
	const phone = document.querySelector("#phone");
	phone.addEventListener('mouseout',realTime_phonecheck);
	
	const e_mail = document.querySelector("#e_mail");
	e_mail.addEventListener('keyup',check_email);
	e_mail.addEventListener('mouseout',realTime_emailcheck);
	
	const male = document.querySelector("#male");
	male.addEventListener('click',male_f);
	const female = document.querySelector("#female");
	female.addEventListener('click',female_f);
	const f_nat = document.querySelector("#f_nat");
	f_nat.addEventListener('click',nat_f);
	const k_nat = document.querySelector("#k_nat");
	k_nat.addEventListener('click',nat_k);
	
	const res_price = document.querySelector("#res_price");
	const res_third = document.querySelector("#res_third");
	
	ad_sum.value = format((parseInt(detail_ad2.value))*(won(detail_ad1.value)));
    total_sum.value = format((parseInt(detail_ad2.value))*(won(detail_ad1.value)));
    
//	const reservation = document.querySelector("#reservation");
//	reservation.addEventListener('click',res_go);
  
	function ad_pluscon(){
		let ad_price1 = won(detail_ad1.value); // 현재 성인 가격
		let pre_Aval1 = parseInt(detail_ad2.value);  // 현재 성인 인원수
		let ch_price1 = won(detail_ch1.value); // 현재 아동 가격
		let pre_Cval1 = parseInt(detail_ch2.value);  // 현재 아동 인원수
	
		if(detail_ad2.value < 5){
			detail_ad2.value = pre_Aval1 + 1;
			ad_valcon.value = pre_Aval1 + 1;
			ad_sum.value = format((ad_price1)*(detail_ad2.value));
			total_sum.value = format((ad_price1)*(detail_ad2.value)+(ch_price1)*(pre_Cval1));
			res_price.value = parseInt((ad_price1)*(detail_ad2.value)+(ch_price1)*(pre_Cval1));
			}else{
				alert("최대5명까지 가능합니다.");
			}
		}
	function ad_minuscon(){
		let ad_price2 = won(detail_ad1.value);
		let pre_Aval2 = parseInt(detail_ad2.value);
		let ch_price2 = won(detail_ch1.value);
		let pre_Cval2 = parseInt(detail_ch2.value);
			
	  	if(detail_ad2.value >= 2){
	  		detail_ad2.value = pre_Aval2 - 1;
	   	    ad_valcon.value = pre_Aval2 - 1;
	   	    ad_sum.value = format((ad_price2)*(detail_ad2.value));
	   	    total_sum.value = format((ad_price2)*(detail_ad2.value)+(ch_price2)*(pre_Cval2));
	   	 	res_price.value = parseInt((ad_price2)*(detail_ad2.value)+(ch_price2)*(pre_Cval2));
	  	}else{
	  		alert("1명이상 예약가능합니다.");
	  	}
	}
	function ad_personcon(e){
		let ad_price3 = won(detail_ad1.value);
		let pre_Cval3 = parseInt(detail_ch2.value);
		let ch_price3 = won(detail_ch1.value);
		
   	    if((e.target.value >= 1 && e.target.value <= 5) || e.target.value === ""){
   	    	detail_ad2.value = e.target.value;
   	    	ad_sum.value = format((ad_price3)*(e.target.value));
   	    	total_sum.value = format((e.target.value)*(ad_price3)+(ch_price3)*(pre_Cval3));
   	    	res_price.value = parseInt((e.target.value)*(ad_price3)+(ch_price3)*(pre_Cval3));
   	    }else{
   	        alert("1명이상 5명이하로 예약 가능합니다.");
   	    }
	}
	function ch_pluscon(){
		let pre_Aval4 = parseInt(detail_ad2.value);  // 현재 성인 인원수
		let ad_price4 = won(detail_ad1.value); // 현재 성인 가격
		let pre_Cval4 = parseInt(detail_ch2.value);  // 현재 아동 인원수
		let ch_price4 = won(detail_ch1.value); // 현재 아동 가격
		many_ch.style.display="block";

   	    if(detail_ch2.value < 4){
   	    	detail_ch2.value = pre_Cval4 + 1;
			ch_valcon.value = pre_Cval4 + 1;
			ch_sum.value = format((ch_price4)*(detail_ch2.value));
   	     	total_sum.value = format((ch_price4)*(detail_ch2.value)+(ad_price4)*(pre_Aval4));
   	     	res_price.value = parseInt((ch_price4)*(detail_ch2.value)+(ad_price4)*(pre_Aval4));
   	    }else{
   	        alert("최대4명까지 가능합니다.");
   	    }
	}
	function ch_minuscon(){
		let pre_Aval5 = parseInt(detail_ad2.value);
		let ad_price5 = won(detail_ad1.value);
		let pre_Cval5 = parseInt(detail_ch2.value);
		let ch_price5 = won(detail_ch1.value);
		
		if(ch_valcon.value == 1){
			many_ch.style.display="none";
		}
   	    if(detail_ch2.value >= 1){
   	    	detail_ch2.value = pre_Cval5 - 1;
   	    	ch_valcon.value = pre_Cval5 - 1;
   	    	ch_sum.value = format((ch_price5)*(detail_ch2.value));
   	    	total_sum.value = format((ch_price5)*(detail_ch2.value)+(ad_price5)*(pre_Aval5));
   	    	res_price.value = parseInt((ch_price5)*(detail_ch2.value)+(ad_price5)*(pre_Aval5));
   	    }else{
   	        alert("선택할 수 없습니다.")
   	    }
	}
	function ch_personcon(e){
		let pre_Aval6 = parseInt(detail_ad2.value);
		let ad_price6 = won(detail_ad1.value);
		let ch_price6 = won(detail_ch1.value);
		
   	    if((e.target.value >= 0 && e.target.value <= 4) || e.target.value === ""){
   	    	detail_ch2.value = e.target.value;
   	    	ch_sum.value = format((ch_price5)*(detail_ch2.value));
   	    	total_sum.value = format((e.target.value)*(ch_price6)+(ad_price6)*(pre_Aval6));
   	    	res_price.value = parseInt((e.target.value)*(ch_price6)+(ad_price6)*(pre_Aval6));
   	    }else{
   	        alert("4명이하로 예약 가능합니다.");
   	    }
	}
	function btn_goCheck(){
		let is_checked = goCheck_btn.checked;
		if(is_checked){
			k_name.value = "${memvo.name}";
			birth.value = "${memvo.birth}";
			phone.value = "${memvo.tel}";
			e_mail.value = "${memvo.email}";
		}else{
			k_name.value ="";
			birth.value = "";
			phone.value = "";
			e_mail.value = "";
		}
	}
	function nat_k(){
		if(nation.value === "1"){
			k_nat.style.background = "#e82835";
			k_nat.style.color = "white";
			f_nat.style.background = "white";
			f_nat.style.color = "gray";
			nation.value = "0";
		}
	}
	function nat_f(){
		if(nation.value === "0"){
			k_nat.style.background = "white";
			k_nat.style.color = "gray";
			f_nat.style.background = "#e82835";
			f_nat.style.color = "white";
			nation.value = "1";
		}
	}
	function male_f(){
		if(sex.value === "1"){
			male.style.background = "#e82835";
			male.style.color = "white";
			female.style.background = "white";
			female.style.color = "gray";
			sex.value = "0";
		}
	}
	function female_f(){
		if(sex.value === "0"){
			female.style.background = "#e82835";
			female.style.color = "white";
			male.style.background = "white";
			male.style.color = "gray";
			sex.value = "1";
		}
	}
	/*
	function res_go(){
		if(check()){
			location.href="pay.do?res_price="+total_sum.value;
		}
	}
*/
	function check(){
		var email_ck = e_mail.value; 
		var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
		
		if(k_name.value == ""){
			alert("한글이름이 입력되지 않았습니다.");
			k_name.style.border = "1px solid red";
			document.frm.k_name.focus();
			return false;
		}else if(e_first.value == ""){
			alert("영문 성이 입력되지 않았습니다.");
			document.frm.e_first.focus();
			return false;			
		}else if(e_sec.value == ""){
			alert("영문 이름이 입력되지 않았습니다.");
			document.frm.e_sec.focus();
			return false;			
		}else if(birth.value == ""){
			alert("생년월일이 입력되지 않았습니다.");
			document.frm.birth.focus();
			return false;			
		}else if(phone.value == ""){
			alert("휴대폰 번호가 입력되지 않았습니다.");
			document.frm.phone.focus();
			return false;
		}else if(exptext.test(email_ck)==false){
			alert("이메일 형식이 올바르지 않습니다.");
			document.frm.e_mail.focus();
			return false;
			
		}else if(ag1_chBtn.value == 0){
			alert("국외여행특별약관동의는 필수 동의사항입니다.");
			document.frm.ag1_chBtn.focus();
			return false;
		}else if(ag2_chBtn.value == 0){
			alert("해외여행 보험동의는 필수 동의사항입니다.");
			document.frm.ag2_chBtn.focus();
			return false;
		}else if(ag3_chBtn.value == 0){
			alert("개인정보 수집, 이용동의는 필수 동의사항입니다.");
			document.frm.ag3_chBtn.focus();
			return false;
		}else if(ag4_chBtn.value == 0){
			alert("고유식별정보 수집, 이용동의는 필수 동의사항입니다.");
			document.frm.ag4_chBtn.focus();
			return false;
		}else if(ag6_chBtn.value == 0){
			alert("증빙제공 및 환급규정 동의는 필수 동의사항입니다.");
			document.frm.ag6_chBtn.focus();
			return false;
		}else {
			return true;
		}
	}
	
	var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	function check_email(){
		//const e_mail = document.querySelector("#e_mail");
		var email_ck = e_mail.value; 
	//	var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
		if(exptext.test(email_ck)==false){
		//	alert("이메일형식이 올바르지 않습니다.");
		//k_name.style.border = "1px solid red";
			document.frm.e_mail.style.border = "2px solid red";
			document.frm.e_mail.focus();
			return false;
		}else{
			document.frm.e_mail.style.border = "2px solid green";
			return true;
		}
	}
	
	function realTime_emailcheck(e){
		if(exptext.test(e.target.value)){
			e_mail.style.border = "2px solid green";
		}else{
			e_mail.style.border = "2px solid red";
		}
	}

var  pattern_k = /^[^ㄱ-ㅎ|ㅏ-ㅣ|가-힣]+$/;
var pattern_k2 = /^[가-힣]+$/;

function onlyKorean(e){
	e.target.value = e.target.value.replace(pattern_k, '');
}

function realTime_Kcheck2(e){
	if(pattern_k2.test(e.target.value)){
		k_name.style.border = "2px solid green";
	}else{
		k_name.style.border = "2px solid red";
	}
}

//var pattern_e = /^[^a-z|A-Z]+$/;
var pattern_e2 = /^[a-z|A-Z]+$/;

function onlyEnglish(e){
	e.target.value = e.target.value.replace(pattern_e, '');
}
function realTime_Echeck(e){
	if(pattern_e2.test(e.target.value)){
		e_first.style.border = "2px solid green";
	}else{
		e_first.style.border = "2px solid red";
	}
}
function realTime_E1check(e){
	if(pattern_e2.test(e.target.value)){
		e_sec.style.border = "2px solid green";
	}else{
		e_sec.style.border = "2px solid red";
	}
}

//var pattern_num =  /^[0-9]+$/; 
var pattern_birth = /^(19[0-9][0-9]|20\d{2})-(0[0-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/;
function realTime_birthcheck(e){
	if(pattern_birth.test(e.target.value)){
		birth.style.border = "2px solid green";
	}else{
		birth.style.border = "2px solid red";
	}
}

var pattern_phone = /01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}/;
		
function realTime_phonecheck(e){
	if(pattern_phone.test(e.target.value)){
		phone.style.border = "2px solid green";
	}else{
		phone.style.border = "2px solid red";
	}
}

function oninputPhone() {
	phone.value = phone.value
	        .replace(/[^0-9]/g, '')
	        .replace(/^(01[016789]{1})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
}

function oninputBirth() {
	birth.value = birth.value
	        .replace(/[^0-9]/g, '')
	        .replace(/^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/, "$1-$2-$3");
}

function won(num){
	return parseInt(num.replace(/,/g , ''));
}
function format(a){
	let result = a.toLocaleString('ko-KR');
	return result;
}

const travel_agree_info = document.querySelector(".travel_agree_info");
travel_agree_info.addEventListener('click',agree);

function agree(e){
	if(e.target.id == "ag1_check"){
		let ag1_chBtn = document.querySelector("#ag1_chBtn");
		if(ag1_chBtn.value ==="0"){
   			ag1_check.style.background = 'url("../img/correct.png") no-repeat';
   			ag1_check.style.backgroundSize ="30px";
   			ag1_check.style.backgroundPosition = "center";
   			ag1_chBtn.value="1"
		}else if(ag1_chBtn.value==="1"){
			ag1_check.style.background = 'url("../img/check-mark.png") no-repeat';
			ag1_check.style.backgroundSize ="30px";
			ag1_check.style.backgroundPosition = "center";
   			ag1_chBtn.value="0";
		}
	}
	if(e.target.id == "ag2_check"){
		let ag2_chBtn = document.querySelector("#ag2_chBtn");
		if(ag2_chBtn.value ==="0"){
   			ag2_check.style.background = 'url("../img/correct.png") no-repeat';
   			ag2_check.style.backgroundSize ="30px";
   			ag2_check.style.backgroundPosition = "center";
   			ag2_chBtn.value="1"
		}else if(ag2_chBtn.value==="1"){
			ag2_check.style.background = 'url("../img/check-mark.png") no-repeat';
			ag2_check.style.backgroundSize ="30px";
			ag2_check.style.backgroundPosition = "center";
   			ag2_chBtn.value="0";
		}
	}
	if(e.target.id == "ag3_check"){
		let ag3_chBtn = document.querySelector("#ag3_chBtn");
		if(ag3_chBtn.value ==="0"){
   			ag3_check.style.background = 'url("../img/correct.png") no-repeat';
   			ag3_check.style.backgroundSize ="30px";
   			ag3_check.style.backgroundPosition = "center";
   			ag3_chBtn.value="1"
		}else if(ag3_chBtn.value==="1"){
			ag3_check.style.background = 'url("../img/check-mark.png") no-repeat';
			ag3_check.style.backgroundSize ="30px";
			ag3_check.style.backgroundPosition = "center";
   			ag3_chBtn.value="0";
		}
	}
	if(e.target.id == "ag4_check"){
		let ag4_chBtn = document.querySelector("#ag4_chBtn");
		if(ag4_chBtn.value ==="0"){
   			ag4_check.style.background = 'url("../img/correct.png") no-repeat';
   			ag4_check.style.backgroundSize ="30px";
   			ag4_check.style.backgroundPosition = "center";
   			ag4_chBtn.value="1"
		}else if(ag4_chBtn.value==="1"){
			ag4_check.style.background = 'url("../img/check-mark.png") no-repeat';
			ag4_check.style.backgroundSize ="30px";
			ag4_check.style.backgroundPosition = "center";
   			ag4_chBtn.value="0";
		}
	}
	if(e.target.id == "ag5_check"){
		let ag5_chBtn = document.querySelector("#ag5_chBtn");
		if(ag5_chBtn.value ==="0"){
   			ag5_check.style.background = 'url("../img/correct.png") no-repeat';
   			ag5_check.style.backgroundSize ="30px";
   			ag5_check.style.backgroundPosition = "center";
   			ag5_chBtn.value="1"
   			res_third.value="1";
		}else if(ag5_chBtn.value==="1"){
			ag5_check.style.background = 'url("../img/check-mark.png") no-repeat';
			ag5_check.style.backgroundSize ="30px";
			ag5_check.style.backgroundPosition = "center";
   			ag5_chBtn.value="0";
   			res_third.value="0";
		}
	}
	if(e.target.id == "ag6_check"){
		let ag6_chBtn = document.querySelector("#ag6_chBtn");
		if(ag6_chBtn.value ==="0"){
   			ag6_check.style.background = 'url("../img/correct.png") no-repeat';
   			ag6_check.style.backgroundSize ="30px";
   			ag6_check.style.backgroundPosition = "center";
   			ag6_chBtn.value="1"
		}else if(ag6_chBtn.value==="1"){
			ag6_check.style.background = 'url("../img/check-mark.png") no-repeat';
			ag6_check.style.backgroundSize ="30px";
			ag6_check.style.backgroundPosition = "center";
   			ag6_chBtn.value="0";
		}
	}
	if((e.target.id == "ag1_sp") || (e.target.id == "agree1") || (e.target.id == "ag1_sp2")){
		let ag1_btn = document.querySelector("#ag1_btn");
		if(ag1_btn.value ==="0"){
   			agree1_desc.style.display="block";
   			ag1_sp2.style.background = 'url("img/upload.png") no-repeat';
   			ag1_sp2.style.backgroundSize ="20px";
   			ag1_sp2.style.backgroundPosition = "center";
   			ag1_btn.value="1"
		}else if(ag1_btn.value==="1"){
   			agree1_desc.style.display="none";
   			ag1_sp2.style.background = 'url("img/download.png") no-repeat';
   			ag1_sp2.style.backgroundSize ="20px";
   			ag1_sp2.style.backgroundPosition = "center";
	   		ag1_btn.value="0";
		}
	}
	if((e.target.id == "ag2_sp") || (e.target.id == "agree2") || (e.target.id == "ag2_sp2")){
		let ag2_btn = document.querySelector("#ag2_btn");
		if(ag2_btn.value ==="0"){
   			agree2_desc.style.display="block";
   			ag2_sp2.style.background = 'url("img/upload.png") no-repeat';
   			ag2_sp2.style.backgroundSize ="20px";
   			ag2_sp2.style.backgroundPosition = "center";
   			ag2_btn.value="1"
		}else if(ag2_btn.value==="1"){
   			agree2_desc.style.display="none";
   			ag2_sp2.style.background = 'url("img/download.png") no-repeat';
   			ag2_sp2.style.backgroundSize ="20px";
   			ag2_sp2.style.backgroundPosition = "center";
	   		ag2_btn.value="0";
		}
	}
	if((e.target.id == "ag3_sp") || (e.target.id == "agree3") || (e.target.id == "ag3_sp2")){
		let ag3_btn = document.querySelector("#ag3_btn");
		if(ag3_btn.value ==="0"){
   			agree3_desc.style.display="block";
   			ag3_sp2.style.background = 'url("img/upload.png") no-repeat';
   			ag3_sp2.style.backgroundSize ="20px";
   			ag3_sp2.style.backgroundPosition = "center";
   			ag3_btn.value="1"
		}else if(ag3_btn.value==="1"){
   			agree3_desc.style.display="none";
   			ag3_sp2.style.background = 'url("img/download.png") no-repeat';
   			ag3_sp2.style.backgroundSize ="20px";
   			ag3_sp2.style.backgroundPosition = "center";
	   		ag3_btn.value="0";
		}
	}
	if((e.target.id == "ag4_sp") || (e.target.id == "agree4") || (e.target.id == "ag4_sp2")){
		let ag4_btn = document.querySelector("#ag4_btn");
		if(ag4_btn.value ==="0"){
   			agree4_desc.style.display="block";
   			ag4_sp2.style.background = 'url("img/upload.png") no-repeat';
   			ag4_sp2.style.backgroundSize ="20px";
   			ag4_sp2.style.backgroundPosition = "center";
   			ag4_btn.value="1"
		}else if(ag4_btn.value==="1"){
   			agree4_desc.style.display="none";
   			ag4_sp2.style.background = 'url("img/download.png") no-repeat';
   			ag4_sp2.style.backgroundSize ="20px";
   			ag4_sp2.style.backgroundPosition = "center";
	   		ag4_btn.value="0";
		}
	}
	if((e.target.id == "ag5_sp") || (e.target.id == "agree5") || (e.target.id == "ag5_sp2")){
		let ag5_btn = document.querySelector("#ag5_btn");
		if(ag5_btn.value ==="0"){
   			agree5_desc.style.display="block";
   			ag5_sp2.style.background = 'url("img/upload.png") no-repeat';
   			ag5_sp2.style.backgroundSize ="20px";
   			ag5_sp2.style.backgroundPosition = "center";
   			ag5_btn.value="1"
		}else if(ag5_btn.value==="1"){
   			agree5_desc.style.display="none";
   			ag5_sp2.style.background = 'url("img/download.png") no-repeat';
   			ag5_sp2.style.backgroundSize ="20px";
   			ag5_sp2.style.backgroundPosition = "center";
	   		ag5_btn.value="0";
		}
	}
	if((e.target.id == "ag6_sp") || (e.target.id == "agree6") || (e.target.id == "ag6_sp2")){
		let ag6_btn = document.querySelector("#ag6_btn");
		if(ag6_btn.value ==="0"){
   			agree6_desc.style.display="block";
   			ag6_sp2.style.background = 'url("img/upload.png") no-repeat';
   			ag6_sp2.style.backgroundSize ="20px";
   			ag6_sp2.style.backgroundPosition = "center";
   			ag6_btn.value="1"
		}else if(ag6_btn.value==="1"){
   			agree6_desc.style.display="none";
   			ag6_sp2.style.background = 'url("img/download.png") no-repeat';
   			ag6_sp2.style.backgroundSize ="20px";
   			ag6_sp2.style.backgroundPosition = "center";
	   		ag6_btn.value="0";
		}
	}
}
</script>
</body>
</html>