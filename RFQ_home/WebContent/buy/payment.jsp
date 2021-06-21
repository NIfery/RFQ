<%@page import="com.member.model.MemberService"%>
<%@page import="com.giftcon.model.GiftconService"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.member.model.MemberVO"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.giftcon.model.GiftconVO"%>
<%@page import="com.giftcon.model.GiftconDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memService" class="com.member.model.MemberService" scope="session"></jsp:useBean>
<jsp:useBean id="giftconService" class="com.giftcon.model.GiftconService" scope="session"></jsp:useBean>    
<!DOCTYPE html>
<html>
<head>
<title>Ready for the Quiz 결제</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/layout.css"/>
</head>
<script type="text/javascript" src="../assets/js/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#pay').click(function(){
			if(!$("input:checkbox[id='agree']").is(':checked')){
				alert('결제 동의를 체크해주세요!!');
				event.preventDefault();
				$("input:checkbox[id='agree']").focus();
			}
		});	
	});
</script>
<style type="text/css">
	.error{
		color: red;
		display : none;
	}
</style>
<body>
<%
	String userid=request.getParameter("userid");
	String qty=request.getParameter("qty");
	String no=request.getParameter("no");
	System.out.println("매개변수 no="+no+", userid="+userid+", qty="+qty);
	
	if(no==null || no.isEmpty()) {%>
		<script type="text/javascript">
			alert("잘못된 접근입니다!");
			location.href="../giftcon/giftconCon.jsp";
		</script>
	<%}
	
	GiftconVO vo=new GiftconVO();
	int totalPrice=0;
	try{
		vo=giftconService.selectByNo(Integer.parseInt(no));
		totalPrice=Integer.parseInt(qty)*vo.getPrice();
		System.out.println("totalPrice="+totalPrice);
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	MemberVO memVo=new MemberVO();
	try{
		memVo=memService.selectByUserid(userid);
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	DecimalFormat df=new DecimalFormat();
%>
<form name="frmBuy" method="post" action="payment_ok.jsp?userid=<%=userid%>&no=?<%=no%>" target="_top">
	<h3>주문 / 결제</h3>
	<div class="status">
		<span>상품 상세정보&nbsp > &nbsp</span>
		<span id="status">주문 / 결제</span>
		<span>&nbsp > &nbsp완료</span>
	</div>
	<div class="giftCon_d">
		<table class="purchase">
		<thead>
		  <tr>
		    <th colspan="2" scope="col">상품정보</th>
		    <th scope="col">판매자</th>
		    <th scope="col">구매수량</th>
		    <th scope="col">차감포인트</th>
		  </tr>
		</thead> 
		<tbody>
			<tr>
				<td id="giftImg">
					<img src="../images/product/<%=vo.getImage() %>.png">
				</td>
				<td id="detail">
					<p id="tag">[RFQ-GiftCon]</p>
					<p><%=vo.getName() %></p>
				</td>
				<td id="seller"><%=vo.getSeller() %></td>
				<td>
					<input type="text" name="qty" id="qty" value="<%=qty%>" style="border:1px solid gray">개
				</td>
				<td>
					<input type="text" name="outPoint" id="outPoint" value="<%=df.format(totalPrice)%>">Point
				</td>
			</tr>
		</tbody>
		</table>
	</div><br>
	<hr><br>
	<div class="buyer">
		<input type="hidden" name="userid" id="userid" value="<%=userid%>">
		<label>구매자 이름</label><span id="name"><%=memVo.getName()%></span><br><br>
		<label>구매자 연락처</label><span id="hp"><%=memVo.getHp() %></span><br><br>
		<label for="point">보유 포인트</label>
		<input type="text" name="getPoint" id="getPoint" value="<%=df.format(memVo.getPoint())%>">Point<br>
	</div><br>
	<hr>
	<div class="agree">
		<span>결제 조건 확인 및 개인정보 제공에 동의합니다</span>
		<input type="checkbox" name="agree" id="agree"><br>
		<p>구매하신 상품 주문처리를 위해 개인정보를 제공받는 판매자 : <%=vo.getSeller() %></p>
	</div><br>
	<div class="pay">	
		<input type="submit" name="pay" id="pay" value="결제하기">
	</div><br>
	<hr>
	</form>
</body>
</html>