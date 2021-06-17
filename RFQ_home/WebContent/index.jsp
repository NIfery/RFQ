<%@page import="com.quiz.model.QuizService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<title>RFQ</title>
<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		
		<!-- swiper -->
		<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
		<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
		
		<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
		<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
		
		<script type="text/javascript" src="assets/js/jquery.min.js"></script>
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

			<%@ include file="inc/header.jsp" %>

			<!-- Banner -->
				<section id="banner">
					<div class="container">
						<!-- Slider main container -->
						<div class="swiper-container">
							<!-- Additional required wrapper -->
							<div class="swiper-wrapper">
								<!-- Slides -->
								<div class="swiper-slide"><img src="<%=request.getContextPath()%>/images/pic01.jpg" style="width:100%;height:100%"></div>
								<div class="swiper-slide"><img src="<%=request.getContextPath()%>/images/pic02.jpg" style="width:100%;height:100%"></div>
								<div class="swiper-slide"><img src="<%=request.getContextPath()%>/images/pic03.jpg" style="width:100%;height:100%"></div>
								<div class="swiper-slide"><img src="<%=request.getContextPath()%>/images/pic04.jpg" style="width:100%;height:100%"></div>
							</div>
							<!-- If we need pagination -->
							<div class="swiper-pagination"></div>
						</div>
					</div>
				</section>
				
			<!-- Features -->
				<section id="features">
					<div class="container">
						<header>
							<h2>여러 주제의 퀴즈를 풀어보실 수 있습니다. <strong>장르 미리보기</strong></h2>
						</header>
						<div class="row aln-center">
							<div class="col-4 col-6-medium col-12-small">
								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="<%=request.getContextPath()%>/images/pic01.jpg" alt="" /></a>
										<header>
											<h3>영화</h3>
										</header>
										<p>===영화 퀴즈 설명===</p>
									</section>

							</div>
							<div class="col-4 col-6-medium col-12-small">
								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="<%=request.getContextPath()%>/images/pic02.jpg" alt="" /></a>
										<header>
											<h3>넌센스</h3>
										</header>
										<p>===넌센스 퀴즈 설명===</p>
									</section>
							</div>
							<div class="col-4 col-6-medium col-12-small">
								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="<%=request.getContextPath()%>/images/pic03.jpg" alt="" /></a>
										<header>
											<h3>상식</h3>
										</header>
										<p>===상식 퀴즈 설명===</p>
									</section>
							</div>
							<div class="col-4 col-6-medium col-12-small">
								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="<%=request.getContextPath()%>/images/pic03.jpg" alt="" /></a>
										<header>
											<h3>사자성어</h3>
										</header>
										<p>===사자성어 퀴즈 설명===</p>
									</section>
							</div>
							<div class="col-4 col-6-medium col-12-small">
								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="<%=request.getContextPath()%>/images/pic03.jpg" alt="" /></a>
										<header>
											<h3>임시 퀴즈 장르</h3>
										</header>
										<p>===임시 퀴즈 장르 퀴즈 설명===</p>
									</section>
							</div>
						</div>
					</div>
				</section>


			<!-- Main -->
				<section id="main">
					<div class="container">
						<div class="row">

							<!-- Content -->
								<div id="content" class="col-8 col-12-medium">

									<!-- Post -->
										<article class="box post">
											<header>
												<h2><b>기프티콘 상점</b></h2>
											</header>
											<a href="#" class="image featured"><img src="<%=request.getContextPath() %>/images/main_giftcon.jpg" alt="" /></a>
										</article>
								</div>

							<!-- Sidebar -->
								<div id="sidebar" class="col-4 col-12-medium">
									<!-- Excerpts -->
										<section>
											<ul class="divided">
												<li>

													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<a href="#"><span class="date">카테고리1</span></a>
																<h3>카테고리1 간단 설명</h3>
															</header>
														</article>
												</li>
												<li>
													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<a href="#"><span class="date">카테고리2</span></a>
																<h3>카테고리2 간단 설명</h3>
															</header>
														</article>
												</li>
												<li>
													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<a href="#"><span class="date">카테고리3</span></a>
																<h3>카테고리3 간단 설명</h3>
															</header>
														</article>
												</li>
												<li>
													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<a href="#"><span class="date">카테고리4</span></a>
																<h3>카테고리4 간단 설명</h3>
															</header>
														</article>
												</li>
												<li>
													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<a href="#"><span class="date">카테고리5</span></a>
																<h3>카테고리5 간단 설명</h3>
															</header>
														</article>
												</li>
											</ul>
										</section>
								</div>

						</div>
					</div>
				</section>
				
				
			<%@ include file="inc/footer.jsp"%>
		</div>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>