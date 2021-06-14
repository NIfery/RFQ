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

			<%-- <%@ include file="inc/HEADER.JSP" %> --%>

			<!-- Header -->
				<section id="header">
					<div class="container">

						<!-- Logo -->
							<h1 id="logo"><a href="<%=request.getContextPath()%>/index.jsp">Ready For the Quiz?</a></h1>
							<p>A responsive HTML5 site template. Manufactured by HTML5 UP.</p>

						<!-- Nav -->
							<nav id="nav">
								<ul>
									<li><a href="<%=request.getContextPath()%>/index.jsp" class="icon solid fa-home"><span>Home</span></a></li>
									<li>
										<a href="#" class="icon fa-chart-bar"><span>퀴즈</span></a>
										<ul>
											<li><a href="#">전체보기</a></li>
											<li><a href="#">&nbsp;&nbsp;&nbsp;영화</a></li>
											<li><a href="#">&nbsp;&nbsp;&nbsp;넌센스</a></li>
											<li><a href="#">&nbsp;&nbsp;&nbsp;상식</a></li>
											<li><a href="#">&nbsp;&nbsp;&nbsp;사자성어</a>
												<!-- <a href="#">Phasellus consequat</a>
												<ul>
													<li><a href="#">Magna phasellus</a></li>
													<li><a href="#">Etiam dolore nisl</a></li>
													<li><a href="#">Phasellus consequat</a></li>
												</ul> -->
											</li>
										</ul>
									</li>
									<li><a href="<%=request.getContextPath() %>/etc/giftcon.jsp" class="icon solid fa-cog"><span>기프티콘</span></a></li>
									<li><a href="#" class="icon solid fa-retweet"><span>이용안내</span></a></li>
									<li><a href="<%=request.getContextPath() %>/etc/customer.jsp" class="icon solid fa-sitemap"><span>고객센터</span></a></li>
								</ul>
							</nav>
								<nav id="nav2">
									<ul>
										<li><a href="#"><span>LOGIN</span></a></li>
										<li><a href="#"><span>JOIN</span></a></li>
									</ul>
								</nav>							
					</div>
				</section>

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
										<img src="images/kfc.PNG" alt="" />
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
										<img src="images/drink1.PNG" alt="" />
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
										<img src="images/pic03.jpg" alt="" />
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
										<img src="images/pic04.jpg" alt="" />
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
										<img src="images/pic05.jpg" alt="" />
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
										<img src="images/pic06.jpg" alt="" />
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
										<img src="images/pic07.jpg" alt="" />
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
										<img src="images/pic08.jpg" alt="" />
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
										<img src="images/pic09.jpg" alt="" />
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
										<img src="images/pic10.jpg" alt="" />
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
										<img src="images/pic11.jpg" alt="" />
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
										<img src="images/pic12.jpg" alt="" />
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