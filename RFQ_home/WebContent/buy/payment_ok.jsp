<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>payment_ok.jsp</title>
</head>
<body>
<%
	String userid=request.getParameter("userid");
	String outPoint=request.getParameter("outPoint");
	String getPoint=request.getParameter("getPoint");

	int outP = Integer.parseInt(outPoint);
	int getP = Integer.parseInt(getPoint);
	
	try{
		if(outP > getP){ %>
			<script type="text/javascript">
				alert "보유포인트가 부족합니다."
				history.back();
			</script>
		<% }else{
				
		}		
	}catch(SQLException e){
		
	}
	
%>
</body>
</html>