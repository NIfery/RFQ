<%@page import="com.BuyLIst.model.BuyListVO"%>
<%@page import="com.member.model.MemberVO"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.quiz.model.GetPointDAO"%>
<%@page import="com.quiz.model.GetPointVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberService" class="com.member.model.MemberService" scope="session"></jsp:useBean> 
<jsp:useBean id="buylistService" class="com.BuyLIst.model.BuyListService" scope="session"></jsp:useBean>

<%
   System.out.println();
   String userid=request.getParameter("userid");
   System.out.println("userid="+userid);
   
   GetPointVO vo = new GetPointVO();
   GetPointDAO dao = new GetPointDAO();
   vo=dao.selectPoint(userid);
   
   //적립, 사용, 잔여 포인트
   int getP=vo.getGetPoint();      

   //to-do : 포인트 사용내역 적립내용 뿌리기
   

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RFQ</title>
</head>
<body>
   <div>
      <a href="memberEdit.jsp?userid">회원정보 수정</a>
   </div>
   <div>
      <a href="memberOut.jsp?userid">회원탈퇴</a>
   </div>
   <div>
    획득한 포인트 : <%= getP%>
    차감된 포인트 : 
    보유 포인트 : 
   </div>
</body>
</html>