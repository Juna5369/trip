<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <header>
        <div class="box">
            <div class="header_menu">
                <c:if test="${sessionScope.id != null }">
                    <ul id="top_menu">
                        <li><a href="logout.do">로그아웃</a></li><li>|</li>
                        <li>${sessionScope.id }님 환영합니다.</li>
                    </ul>
                </c:if>
                    <c:if test="${sessionScope.id == null }">
                    <ul id="top_menu">
                        <li><a href="login.do">로그인</a></li>
                    </ul>
                    </c:if>
            </div>
        </div>
    </header>
    <nav id="nav"> <!-- nav -->
        <div class="box">
            <div class="logo">
                <a href="#">
                    <img class="logo_img" src="resources/img/geogineoddae_logo.png">
                </a>
            </div>
            <span> <!--nav line 빨간줄--> </span>
            <ul class="nav_list"> <!-- 해외/테마/국내 list -->
                <li>
                    <a href="#">해외</a>
                    <div class="dropdown_nav"> <!-- 해외 part dropdown-->
                        <ul class="nav_sub1">
                            <li>
                                <a href="#">동남아/대만/서남아</a>
                                <ul class="nav_sub2">
                                    <li><a href="#">태국/라오스</a></li>
                                    <li><a href="#">캄보디아/베트남</a></li>
                                    <li><a href="#">말레이시아/싱가포르</a></li>
                                    <li><a href="#">인도네시아/브루나이</a></li>
                                    <li><a href="#">대만/필리핀</a></li>
                                    <li><a href="#">인도/네팔</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">일본/몽골/홍콩</a>
                                <ul class="nav_sub2">
                                    <li><a href="#">도쿄</a></li>
                                    <li><a href="#">오사카</a></li>
                                    <li><a href="#">홋카이도</a></li>
                                    <li><a href="#">오키나와</a></li>
                                    <li><a href="#">몽골/홍콩</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">유럽/아프리카/중동</a>
                                <ul class="nav_sub2">
                                    <li><a href="#">서유럽</a></li>
                                    <li><a href="#">동유럽</a></li>
                                    <li><a href="#">북유럽</a></li>
                                    <li><a href="#">아프리카</a></li>
                                    <li><a href="#">중동</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">괌/사이판/호주/뉴질랜드</a>
                                <ul class="nav_sub2">
                                    <li><a href="#">괌</a></li>
                                    <li><a href="#">사이판</a></li>
                                    <li><a href="#">호주</a></li>
                                    <li><a href="#">뉴질랜드</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">하와이/미주/캐나다/중남미</a>
                                <ul class="nav_sub2">
                                    <li><a href="#">하와이</a></li>
                                    <li><a href="#">미국 서부</a></li>
                                    <li><a href="#">미국 동부</a></li>
                                    <li><a href="#">캐나다</a></li>
                                    <li><a href="#">중남미</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">부산/지방출발</a>
                                <ul class="nav_sub2">
                                    <li><a href="#">부산 출발</a></li>
                                    <li><a href="#">대구 출발</a></li>
                                    <li><a href="#">제주 출발</a></li>
                                    <li><a href="#">청주 출발</a></li>
                                    <li><a href="#">무안 출발</a></li>
                                    <li><a href="#">양양 출발</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="#">테마</a>
                    <div class="dropdown_nav"> <!-- 테마 part dropdown-->
                        <ul class="nav_sub1">
                            <li><a href="#">허니문</a></li>
                            <li><a href="#">골프</a></li>
                            <li><a href="#">크루즈</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="#">제주/국내</a> 
                    <div class="dropdown_nav"> <!-- 제주/국내 part dropdown-->
                        <ul class="nav_sub1">
                            <li><a href="#">제주</a></li>
                            <li><a href="#">울릉도</a></li>
                            <li><a href="#">강원</a></li>
                            <li><a href="#">경상</a></li>
                            <li><a href="#">전라</a></li>
                            <li><a href="#">충청</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
</body>
</html>