<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="resources/css/main.css">
    <!-- <link rel="stylesheet" href="css/packagelist.css"> -->
    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/navjs.js"></script>
</head>
<body>
<%@include file="header.jsp" %>
  <section class="main">
        <div id="wrap">                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
    <!-- 위쪽 이벤트창 시작 -->
            <div id="list_event">
                
                <img src="resources/img/event1.jpg">
            </div>
            <!-- 위쪽 이벤트창 끝 -->
            
            <!-- 아랫쪽 시작 -->
            <div id="section_wrap">
            <!-- 슬라이드 시작 -->
                <div id="slide_wrap">
                    <div id="slide1">
                        <!-- 슬라이드1 제목ㅎㅇㅇ -->
                        <div id="slide_title">
                            <h3>22년 일본 여행지</h3>
                        </div>
                        <div id="slide1_menu" style="text-align: center;">
                            <div id="hidden_wrap"style="max-width: 1400px; margin: 0px auto;">

                                <div id="hidden" style="width: 100%; overflow: hidden; position: relative; height: 298px;">
                                    <ul>
                                    <c:forEach var="data" items="${list }" varStatus="status" begin="0" end="3">
                                        <li style="float: left; list-style: none; position: relative; width: 323px;">
                                        <img src="resources/img/${data.prod_img }" id="slide_img"><br>
                                        <div id="slide_info">
                                            <!-- 게시글 제목1 -->
                                            <span class="prod_title">
                                                ${data.prod_name }<br>
                                            </span>
                                            <!-- 게시글 가격1 -->
                                            <span class="price">
                                                ${data.prod_price }
                                            </span>
                                            원
                                        </div>
                                        </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="slide2">
                        <!-- 슬라이드2 제목 -->
                        <div id="slide_title">
                            <h3>다시떠나는 일본 리오프닝 특가</h3>
                        </div>
                        <div id="slide2_menu" style="text-align: center;">
                            <div id="hidden_wrap"style="max-width: 1400px; margin: 0px auto;">
                                <div id="hidden" style="width: 100%; overflow: hidden; position: relative; height: 298px;">
                                    <ul>
                                       <c:forEach var="data" items="${list }" varStatus="status" begin="4" end="7">
                                        <li style="float: left; list-style: none; position: relative; width: 323px;">
                                        <img src="resources/img/${data.prod_img }" id="slide_img"><br>
                                        <div id="slide_info">
                                            <!-- 게시글 제목1 -->
                                            <span class="prod_title">
                                                ${data.prod_name }<br>
                                            </span>
                                            <!-- 게시글 가격1 -->
                                            <span class="price">
                                                ${data.prod_price }
                                            </span>
                                            원
                                        </div>
                                        </li>
                                        </c:forEach>
                                      
                                    </ul>
                                </div>
                            </div>   
                        </div>
                    </div>
                    <div id="slide2">
                        <!-- 슬라이드3 제목 -->
                        <div id="slide_title">
                            <h3>교토에서의 따사로운 산책</h3>
                        </div>
                        <div id="slide2_menu" style="text-align: center;">
                            <div id="hidden_wrap"style="max-width: 1400px; margin: 0px auto;">
                                <div id="hidden" style="width: 100%; overflow: hidden; position: relative; height: 298px;">
                                    <ul>
                                         <c:forEach var="data" items="${list }" varStatus="status" begin="8" end="11">
                                        <li style="float: left; list-style: none; position: relative; width: 323px;">
                                        <img src="resources/img/${data.prod_img }" id="slide_img"><br>
                                        <div id="slide_info">
                                            <!-- 게시글 제목1 -->
                                            <span class="prod_title">
                                                ${data.prod_name }<br>
                                            </span>
                                            <!-- 게시글 가격1 -->
                                            <span class="price">
                                                ${data.prod_price }
                                            </span>
                                            원
                                        </div>
                                        </li>
                                        </c:forEach>
                                       
                                    </ul>
                                </div>
                            </div>   
                        </div>
                    </div>
                </div>
                <!-- XX여행 (주제 아직 못정함.) -->
                <div id="bottom_wrap">
                    <div id="bottom_event_wrap">
                            <div id="bottom_event_image">
                                <img src="resources/img/bottom_event1.jpg"  style="z-index: 98;">
                            </div>
                            <div id="event_main_text">
                                    이번 여행은
                                    <br>
                                    <br>사랑하는 사람과
                                    <br>
                                    <br>함께 어때요?
                            </div>
                            <div id="bottom_event1_ul_wrap">
                                <ul>
                                 <c:forEach var="data" items="${list }" varStatus="status" begin="12" end="12">
                                    <li style=" list-style: none;">
                                        <img src="resources/img/${data.prod_img }" style="width:300px;"><br>
                                        <div id="bottom_event_text">
                                            <span style="text-align:none;">
                                                <hr>
                                                <br>
                                                <span style="font-size: 12px;">
                                                    #패키지<br>
                                                </span>
                                                <br>
                                                ${data.prod_name }<br>
                                            </span>
                                            <span class="price">
                                                ${data.prod_price }
                                            </span>
                                            원
                                        </div>          
                                    </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <div id="bottom_event2_ul_wrap">
                                <ul>
                                <c:forEach var="data" items="${list }" varStatus="status" begin="13" end="13">
                                    <li style=" list-style: none;">
                                        <img src="resources/img/${data.prod_img }" style="width:300px;"><br>
                                        <div id="bottom_event_text">
                                            <span style="text-align:none;">
                                                <hr>
                                                <br>
                                                <span style="font-size: 12px;">
                                                    #패키지<br>
                                                </span>
                                                <br>
                                                ${data.prod_name }<br>
                                            </span>
                                            <span class="price">
                                                ${data.prod_price }
                                            </span>
                                            원
                                        </div>          
                                    </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            
                            <div id="bottom_event3_ul_wrap">
                                <ul>
                                      <c:forEach var="data" items="${list }" varStatus="status" begin="14" end="14">
                                    <li style=" list-style: none;">
                                        <img src="resources/img/${data.prod_img }" style="width:300px;"><br>
                                        <div id="bottom_event_text">
                                            <span style="text-align:none;">
                                                <hr>
                                                <br>
                                                <span style="font-size: 12px;">
                                                    #패키지<br>
                                                </span>
                                                <br>l
                                                ${data.prod_name }<br>
                                            </span>
                                            <span class="price">
                                                ${data.prod_price }
                                            </span>
                                            원
                                        </div>          
                                    </li>
                                    </c:forEach>
                            </div>
                        </div>
                        <div class="weekly_theme">
                            <div class="weekly_theme_text">
                                Weekly 추천 테마여행!
                            </div>
                            <ul>
                                <li>
                                    <div class="weekly_theme_img">
                                        <img src="resources/img/tokyo_gaseongbi1.jpg">
                                    </div>
                                    <div class="weekly_theme_info">
                                        <span>자유로운 일정의 일본여행</span>
                                    </div>
                                    <div class="weekly_theme_info2">
                                        <p>최고의 가성비!</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="weekly_theme_img">
                                        <img src="resources/img/tokyo_hakone_yokohama1.jpg">
                                    </div>
                                    <div class="weekly_theme_info">
                                        <span>자유로운 일정의 일본여행</span>
                                    </div>
                                    <div class="weekly_theme_info2">
                                        <p>최고의 가성비!</p>
                                    </div>
                                </li>
                             
                                <li>
                                    <div class="weekly_theme_img">
                                        <img src="resources/img/tokyo_sizuoka1.png">
                                    </div>
                                    <div class="weekly_theme_info">
                                        <span>자유로운 일정의 일본여행</span>
                                    </div>
                                    <div class="weekly_theme_info2">
                                        <p>최고의 가성비!</p>
                                    </div>
                                </li>
                             
                                <li>
                                    <div class="weekly_theme_img">
                                        <img src="resources/img/tokyo_disney1.png">
                                    </div>
                                    <div class="weekly_theme_info">
                                        <span>자유로운 일정의 일본여행</span>
                                    </div>
                                    <div class="weekly_theme_info2">
                                        <p>최고의 가성비!</p>
                                    </div>
                                </li>
                             
                            </ul>
                            
                        </div>
                </div>
            </div>
        </div>
    </section>
  <%@include file="footer.jsp" %>
</body>
</html>