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
	
	int OutP=Integer.parseInt(outPoint);
	int getP=Integer.parseInt(getPoint);
	String balanceP=Integer.toString(getP-OutP);
	
	BuyListVO vo=new BuyListVO();
	String msg="결제 실패!", url="payment.jsp";
	try{
		int cnt=buyListService.RunPayment(vo);
			if(cnt>0){
				msg="결제 완료되었습니다";
				url="/myPage/myPageMain.jsp?outPoint="+outPoint+"&balanceP="+balanceP;
			}	
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	request.setAttribute("msg", msg);
	request.setAttribute("url", url);
%>
<jsp:forward page="../common/message.jsp"></jsp:forward>
</body>
</html>