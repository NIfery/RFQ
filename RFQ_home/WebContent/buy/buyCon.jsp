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
			
			function calcHeight() {

				var the_height = document.getElementById('the_iframe').contentWindow.document.body.scrollHeight;

				document.getElementById('the_iframe').height = the_height;

				document.getElementById('the_iframe').style.overflow = "hidden";
			}
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

			<!-- Main -->
				<section id="main_map">
					<div class="container" style="text-align:center;">
						<iframe src="<%=request.getContextPath() %>/buy/payment.jsp"
						id="the_iframe" onload="calcHeight();" scrolling="no"
						style="overflow-x:hidden; overflow:auto; width:100%; min-height:10px;"></iframe>
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







	
	