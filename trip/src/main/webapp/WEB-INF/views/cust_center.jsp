<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/cuc.css">
</head>
<body>
	<%@ include file="header.jsp"%>
	<%@ include file="nav.jsp"%>
	<section class="main">
            <div class="box">
                <div class="cuc_box">
                    <div class="lnb">
                        <div class="lnb_title">
                            <a href="#">고객센터</a>
                        </div>
                        <ul>
                            <li>자주찾는 질문</li>
                            <li>1:1 문의</li>
                            <li>1:1 문의내역</li>
                            <li>공지사항</li>
                        </ul>
                    </div>
                    <div class="middle_title"><em>거긴어때 고객센터</em>입니다. 무엇을 도와드릴까요?</div>
                    <div class="middle_content">
                        <div class="search_box">
                            <input type="text" class="search_input">
                            <input type="submit" class="search_button" value="검색">
                        </div>
                    </div>
                    <div class="right_content">
                    
                    </div>
                </div>
            </div>
        </section>
	<%@ include file="footer.jsp"%>
</body>
</html>