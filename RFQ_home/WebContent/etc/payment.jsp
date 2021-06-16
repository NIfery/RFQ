<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>RFQ</title>
<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		
		<script type="text/javascript" src="../assets/js/jquery.min.js"></script>
		<script type="text/javascript">
			$(function() {
				const swiper = new Swiper('.swiper-container', {
					// Optional parameters
					direction : 'horizontal',
					loop : true,
		
					// If we need pagination
					pagination : {
						el : '.swiper-pagination',
						clickable: true,
					},
		
					autoplay: {
						delay: 3000,
						disableOnInteraction : false,
					},
				});
			});
		</script>
		
		<!-- 사용자 정의 css -->
		<style type="text/css">
			.swiper-container {
				border: 1px solid black;
				width: 80%;
				height: 500px;
			}
			table, thead, tbody, tfoot, tr, th, td{
				border:1px solid black;
				border-collapse: collapse;
			}
			.giftCon_d{
				text-align: center;
			}
		</style>
	</head>
	<body class="homepage is-preload">
		<div id="page-wrapper">

			<%@ include file="../inc/header.jsp" %>

			<!-- Features -->
				<section id="features">
					<div class="container">
						<div class="inner">
							<header>
								<h1>퀴즈 장르를 선택해보세요!</h1>
							</header>
							<div class="center">
		<h3>주문 / 결제</h3>
		<div class="status">
			<span>장바구니&nbsp > &nbsp</span>
			<span id="status">주문 / 결제</span>
			<span>&nbsp > &nbsp완료</span>
		</div>
		<div class="giftCon_d">
			<table class="purchase">
				<tr>
					<th colspan="2">상품정보</th>
					<th>판매자</th>
					<th>구매수량</th>
					<th>차감 포인트</th>				
				</tr>
				<tr>
					<td id="giftImg">
						<img src="images/starbuck1.jpg">
					</td>
					<td id="detail">
						<p id="tag">[RFQ-GiftCon]</p>
						<p>돌체 카라멜 칩 커피 프라푸치노 T</p>
					</td>
					<td id="seller">스타벅스</td>
					<td>
						<input type="text" name="qty" id="qty" value="1">개
					</td>
					<td>
						<input type="text" name="s_Point" id="s_Point" value="">Point
					</td>
				</tr>
			</table>
		</div><br>
		<hr><br>
		<div class="buyer">
			<label>회원 이름</label><span id="name">홍길동</span><br><br>
			<label>회원 번호</label><span id="hp">010-1234-1234</span><br><br>
			<label for="point">보유 포인트</label>
			<input type="text" name="g_Point" id="g_Point" value="">Point<br>
		</div><br>
		<hr>
		<div class="agree">
			<span>결제 조건 확인 및 개인정보 제공에 동의합니다</span>
			<input type="checkbox" name="agree" id="agree"><br>
			<p>구매하신 상품 주문처리를 위해 개인정보를 제공받는 판매자 : 스타벅스</p>
		</div><br>
		<div class="pay">	
			<input type="submit" name="pay" id="pay" value="결제하기"
				>
		</div><br>
		<hr>
	</div>
						</div>
					</div>
				</section>

				
				
			<%@ include file="../inc/footer.jsp"%>
		</div>
		<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.dropotron.min.js"></script>
			<script src="../assets/js/browser.min.js"></script>
			<script src="../assets/js/breakpoints.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>

	</body>
</html>







	
	