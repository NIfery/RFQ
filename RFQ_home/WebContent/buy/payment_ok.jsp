<%@page import="java.text.DecimalFormat"%>
<%@page import="com.BuyLIst.model.BuyListVO"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="buyListService" class="com.BuyLIst.model.BuyListService" scope="session"></jsp:useBean>
<jsp:useBean id="memberService" class="com.member.model.MemberService" scope="session"></jsp:useBean>
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
      
   int outP = df.parse(outPoint).intValue();
   int getP = df.parse(getPoint).intValue();
   String balance=Integer.toString(getP-outP);
   int bal=Integer.parseInt(balance);
   
   BuyListVO vo=new BuyListVO();
   vo.setUserid(userid);
   vo.setGiftconNo(Integer.parseInt(giftconNo));
   vo.setOutPoint(outP);
   vo.setBalance(Integer.parseInt(balance));
   
   String qty=request.getParameter("qty");
   String msg="결제 실패!", url="/buy/buyCon.jsp?no="+giftconNo+"&qty="+qty;
   try{
      int cnt=buyListService.RunPayment(vo);
      int cnt3=memberService.updatePoint(userid, bal);
      System.out.println("결제 성공 내역 cnt="+cnt+", 매개변수 vo="+vo);
      System.out.println("포인트 업데이트 내역 cnt3="+cnt3+", 매개변수 balance="+bal+", outPoint="+outP);
         if(cnt>0){
            msg="결제 완료되었습니다";
            url="/myPage/myPageMain.jsp?userid="+userid
                  +"&outPoint="+outP+"&balance="+balance;
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