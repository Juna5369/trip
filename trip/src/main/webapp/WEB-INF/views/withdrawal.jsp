<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/main.css">
<link rel="stylesheet" href="/css/deleteMember.css">
<script src="/webjars/jquery/3.6.2/dist/jquery.js"></script>
</head>
<body>
   <%@include file="header.jsp"%>
   <%@include file="nav.jsp"%>
   <div class="section">
      <div class="title_section">
         <img src="/img/pointer.png" style="width: 50px; height: 20px;">
         <span>회원탈퇴</span>
      </div>

      <div class="delete_section1">

         <span>이름</span> <span class="name">${mv.name}</span>

      </div>
      <div class="delete_section2">
         <form action="deleteMember" method="post" name="frm">
            <div class="reason"> 회원탈퇴사유 </div>


            <table>
               <tr>
                  <td><input type="hidden" name="id" value="${mv.id }"></td>
               </tr>

               <tr>
                  <td><textarea name="contents" cols="83" rows="7"
                        class="contents" style="font-size: 30px"></textarea></td>
               </tr>
               <tr>
                  <td class="submit"><input type="submit" value="회원탈퇴" style="width:100px;height:20px;border:none;background-color:#e82835;color:white"></td>
               </tr>
            </table>
         </form>
      </div>
   </div>
   <%@include file="footer.jsp"%>

</body>
</html>