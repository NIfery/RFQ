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
	String outPoint=request.getParameter("outPoint");
	String balance=request.getParameter("balance");
	System.out.println("userid="+userid+", outPoint="+outPoint+", balance="+balance);
	
	GetPointVO vo = new GetPointVO();
	GetPointDAO dao = new GetPointDAO();
	vo=dao.selectPoint(userid);
	
	//적립, 사용, 잔여 포인트
	int getP=vo.getGetPoint();		
	int outP=Integer.parseInt(outPoint);
	int bal=Integer.parseInt(balance);
	
	MemberVO vo2=new MemberVO();
	vo2.setPoint(bal);
	
	//to-do : 포인트 사용내역 적립내용 뿌리기
	try{
		int cnt3=memberService.updatePoint(userid, bal);
	}catch(SQLException e){
		e.printStackTrace();
	}

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
	 차감된 포인트 : <%= outP%>
	 보유 포인트 : <%= bal%>
	</div>
</body>
</html>