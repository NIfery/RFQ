<%@page import="java.util.List"%>
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
   BuyListVO vo2=new BuyListVO();
   List<BuyListVO> list=null;
 
   //to-do : 포인트 사용내역 적립내용 뿌리기
   try{
	   vo=dao.selectPoint(userid);
	   list=buylistService.selectBuyList(userid);		   
	   vo2=buylistService.recentBuy(userid);
   }catch(SQLException e){
	   e.printStackTrace();
   }

   //적립, 사용, 잔여 포인트
   int getP=vo.getGetPoint();
   int outP=vo2.getOutPoint();
   int bal=vo2.getBalance();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RFQ</title>
</head>
<style>
	.usedPoint{
		text-align: center;
		border:1px solid gray;
		border-collapse: collapse;
	}
	
	th, td{
		border:1px solid gray;
		width: 100px;
	}
</style>
<body>
   <div>
      <a href="memberEdit.jsp?userid">회원정보 수정</a>
   </div>
   <div>
      <a href="memberOut.jsp?userid">회원탈퇴</a>
   </div>
   <div class="points">
    획득한 포인트 : <%= getP %> <br>
    차감된 포인트 : <%= outP %> <br>
    보유 포인트 :  <%= bal %> <br>
   </div><br>
  <h3>포인트 사용내역</h3>
   <table class="usedPoint">
   <colgroup>
		<col style="width:20%;" />
		<col style="width:20%;" />
		<col style="width:20%;" />
		<col style="width:20%;" />
		<col style="width:20%;" />		
	</colgroup>
   	<thead>
	<tr>
		<th scope="col">주문번호</th>
		<th scope="col">아이디</th>
		<th scope="col">기프트콘 번호</th>
		<th scope="col">차감포인트</th>
		<th scope="col">잔여포인트</th>
	</tr>
   	</thead>
   	<tbody>
	   	<%if(list==null || list.isEmpty()) {%>
	   	<tr>
	   		<td colspan="5" class="noData" style="text-align:center">구매하신 내역이 없습니다.</td>
	   	</tr>
	   	<%}else{ %>
	   		<%for(int i=0; i<list.size(); i++){ 
	   			BuyListVO vo3=list.get(i);
	   		%>
	   		<tr>
	   			<td><%=vo3.getNo() %></td>
	   			<td><%=vo3.getUserid() %></td>
	   			<td><%=vo3.getGiftconNo() %></td>
	   			<td><%=vo3.getOutPoint() %></td>
	   			<td><%=vo3.getBalance()%></td>	
	   		</tr>
	   		<%} //for %>
	   	<%} //if %>
   	</tbody>
   </table>
</body>
</html>