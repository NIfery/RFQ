<%@page import="com.BuyLIst.model.BuyListVO"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.giftcon.model.GiftconVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="giftconService" class="com.giftcon.model.GiftconService" scope="session"></jsp:useBean>    
<jsp:useBean id="buylistService" class="com.BuyLIst.model.BuyListService" scope="session"></jsp:useBean>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/layout.css"/>
<title>RFQ 주문 상세내역</title>
</head>
<body>
<%
	String userid=request.getParameter("userid");
	String orderNo=request.getParameter("orderNo");
	
	GiftconVO vo=new GiftconVO();
	BuyListVO vo2=null;
	
	try{
		vo2=buylistService.selectByUserid(userid, Integer.parseInt(orderNo));
		vo=giftconService.selectByNo(vo2.getGiftconNo());
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
<h3>주문 상세 내역</h3>
	<div class="status">
		<span>상품 상세정보</span>
	</div>
	<div class="giftCon_d">
		<table class="purchase">
		<tbody>
		  <tr>
		    <th colspan="2" scope="col">상품정보</th>
		    <th scope="col">판매자</th>
		  </tr>
     		<tr>
				<td id="giftImg">
					<img src="../images/product/<%=vo.getImage() %>.PNG">
				</td>
				<td id="detail">
					<p id="tag">[RFQ-GiftCon]</p>
					<p><%=vo.getName() %></p>
					<p><%=vo.getDetail() %></p>
				</td>
				<td id="seller"><%=vo.getSeller() %></td>
			</tr>
			<tr>
			 <th scope="col">구매수량</th>
		     <th scope="col">쿠폰번호</th>
		     <th scope="col">유효기간</th>
		    </tr> 
			<tr>	
				<td>
					<input type="text" name="qty" id="qty" value="3" readonly>개
				</td>
				<td>
					<input type="text" name="coupon" id="coupon" 
							value="1265-4601-1253-6543" readonly>
				</td>
				<td>
					<input type="text" name="exdate" id="exdate" 
							value="<%=vo.getExdate() %>" readonly>
				</td>
			</tr>
		</tbody>
		</table>
	</div><br>
</body>
</html>