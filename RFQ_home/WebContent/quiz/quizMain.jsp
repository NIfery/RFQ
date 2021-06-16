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
							<section class="tiles">
								<article class="style1">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
									</span>
									<a href="generic.html">
										<h2>영화</h2>
										<div class="content">
											<p></p>
										</div>
									</a>
								</article>
								<article class="style2">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
									</span>
									<a href="generic.html">
										<h2>역사</h2>
										<div class="content">
											<p></p>
										</div>
									</a>
								</article>
								<article class="style3">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
									</span>
									<a href="generic.html">
										<h2>스포츠</h2>
										<div class="content">
											<p></p>
										</div>
									</a>
								</article>
								<article class="style4">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
									</span>
									<a href="generic.html">
										<h2>게임</h2>
										<div class="content">
											<p></p>
										</div>
									</a>
								</article>
								<article class="style5">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
									</span>
									<a href="generic.html">
										<h2>상식</h2>
										<div class="content">
											<p></p>
										</div>
									</a>
								</article>
								<article class="style6">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
									</span>
									<a href="generic.html">
										<h2>학습</h2>
										<div class="content">
											<p></p>
										</div>
									</a>
								</article>
								<article class="style2">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
									</span>
									<a href="generic.html">
										<h2>연예인</h2>
										<div class="content">
											<p></p>
										</div>
									</a>
								</article>
								<article class="style3">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
									</span>
									<a href="generic.html">
										<h2>신조어</h2>
										<div class="content">
											<p></p>
										</div>
									</a>
								</article>
							</section>
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


			
