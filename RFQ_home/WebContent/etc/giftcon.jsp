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
								<h1>Ready for the Quiz <br />
								Point Shop <a href="http://www.naver.com">환영합니다</a>.</h1>
								<p>매일 출제되는 다양한 퀴즈를 풀고 모은 포인트로 원하는 기프티콘으로 교환하세요 !</p>
							</header>
							<section class="tiles">
								<article class="style1">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
									</span>
									<a href="generic.html">
										<h2>기프티콘1</h2>
										<div class="content">
											<p>포인트 : 15800p</p>
										</div>
									</a>
								</article>
								<article class="style2">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
									</span>
									<a href="generic.html">
										<h2>음료</h2>
										<div class="content">
											<p>음료 카테고리 이동?</p>
										</div>
									</a>
								</article>
								<article class="style3">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
									</span>
									<a href="generic.html">
										<h2>기프티콘3</h2>
										<div class="content">
											<p>상세설명 가격 링크 클릭시 이동</p>
										</div>
									</a>
								</article>
								<article class="style4">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
									</span>
									<a href="generic.html">
										<h2>기프티콘4</h2>
										<div class="content">
											<p>상세설명 가격 링크 클릭시 이동</p>
										</div>
									</a>
								</article>
								<article class="style5">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
									</span>
									<a href="generic.html">
										<h2>기프티콘5</h2>
										<div class="content">
											<p>상세설명 가격 링크 클릭시 이동</p>
										</div>
									</a>
								</article>
								<article class="style6">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
									</span>
									<a href="generic.html">
										<h2>기프티콘6</h2>
										<div class="content">
											<p>상세설명 가격 링크 클릭시 이동</p>
										</div>
									</a>
								</article>
								<article class="style2">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
									</span>
									<a href="generic.html">
										<h2>기프티콘7</h2>
										<div class="content">
											<p>상세설명 가격 링크 클릭시 이동</p>
										</div>
									</a>
								</article>
								<article class="style3">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
									</span>
									<a href="generic.html">
										<h2>기프티콘8</h2>
										<div class="content">
											<p>상세설명 가격 링크 클릭시 이동</p>
										</div>
									</a>
								</article>
								<article class="style1">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
									</span>
									<a href="generic.html">
										<h2>기프티콘9</h2>
										<div class="content">
											<p>상세설명 가격 링크 클릭시 이동</p>
										</div>
									</a>
								</article>
								<article class="style5">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
									</span>
									<a href="generic.html">
										<h2>기프티콘10</h2>
										<div class="content">
											<p>상세설명 가격 링크 클릭시 이동</p>
										</div>
									</a>
								</article>
								<article class="style6">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
									</span>
									<a href="generic.html">
										<h2>기프티콘11</h2>
										<div class="content">
											<p>상세설명 가격 링크 클릭시 이동</p>
										</div>
									</a>
								</article>
								<article class="style4">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
									</span>
									<a href="generic.html">
										<h2>기프티콘12</h2>
										<div class="content">
											<p>상세설명 가격 링크 클릭시 이동</p>
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