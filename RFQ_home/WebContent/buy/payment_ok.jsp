<%@page import="java.text.DecimalFormat"%>
<%@page import="com.BuyLIst.model.BuyListVO"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="buyListService" class="com.BuyLIst.model.BuyListService" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>payment_ok.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String userid=request.getParameter("userid");
	String outPoint=request.getParameter("outPoint");
	String getPoint=request.getParameter("getPoint");
	String giftconNo=request.getParameter("no");
	
	DecimalFormat df = new DecimalFormat();
	   
    int OutP = df.parse(outPoint).intValue();
    int getP = df.parse(getPoint).intValue();
	String balanceP=Integer.toString(getP-OutP);
	
	BuyListVO vo=new BuyListVO();
	vo.setUserid(userid);
	vo.setGiftconNo(Integer.parseInt(giftconNo));
	vo.setOutPoint(OutP);
	vo.setBalance(Integer.parseInt(balanceP));
	
	String qty=request.getParameter("qty");
	String msg="결제 실패!", url="/buy/buyCon.jsp?no="+giftconNo+"&qty="+qty;
	try{
		int cnt=buyListService.RunPayment(vo);
			if(cnt>0){
				msg="결제 완료되었습니다";
				url="/myPage/myPageMain.jsp?userid="+userid
						+"&outPoint="+OutP+"&balanceP="+balanceP;
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