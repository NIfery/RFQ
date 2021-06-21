<%@page import="com.BuyLIst.model.BuyListVO"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="buyListService" class="com.BuyLIst.model.BuyListService" scope="session"></jsp:useBean> %>
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
	String giftconNo=request.getParameter("no");
	
	
	BuyListVO vo=new BuyListVO();
	try{
		int cnt=buyListService.RunPayment(vo);
			if(cnt>0){ %>
			<script type="text/javascript">
				alert('결제 완료되었습니다!');
				location.href="../myPage/myPage.jsp";
			</script>	
		<%}
	}catch(SQLException e){
		e.printStackTrace();
	}
	
%>
</body>
</html>