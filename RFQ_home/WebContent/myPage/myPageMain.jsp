<%@page import="com.quiz.model.GetPointDAO"%>
<%@page import="com.quiz.model.GetPointVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid = (String)session.getAttribute("userid");
	GetPointVO vo = new GetPointVO();
	GetPointDAO dao = new GetPointDAO();
	
	vo=dao.selectPoint(userid);
	int points=vo.getGetPoint();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<a href="memberEdit.jsp?userid">회원정보 수정</a>
	</div>
	<div>
		<a href="memberOut.jsp?userid">회원탈퇴</a>
	</div>
	<div>
	 획득한 포인트 : <%= points%>
	</div>
</body>
</html>