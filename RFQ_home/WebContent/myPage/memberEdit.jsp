<%@page import="com.member.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberVO vo = new MemberVO();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="edit" method="post" action="memberEdit_ok.jsp">
		<fieldset>
			<legend>회원 정보 수정</legend>
			<div>
				<label for="name">이름</label>
				<span><%=vo.getName() %></span>
			</div>
			<div>
				<label for="userid">아이디</label>
				<span></span>
			</div>
		</fieldset>
	</form>
</body>
</html>