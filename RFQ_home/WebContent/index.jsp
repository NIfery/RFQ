<%@page import="com.quiz.model.QuizService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	QuizService qs = new QuizService();
%>

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
								<div class="swiper-slide"><img src="<%=request.getContextPath()%>/images/quiz1.jpg" style="width:100%;height:100%"></div>
								<div class="swiper-slide"><img src="<%=request.getContextPath()%>/images/quiz2.jpg" style="width:100%;height:100%"></div>
								<div class="swiper-slide"><img src="<%=request.getContextPath()%>/images/quiz3.jpg" style="width:100%;height:100%"></div>
								<div class="swiper-slide"><img src="<%=request.getContextPath()%>/images/quiz4.jpg" style="width:100%;height:100%"></div>
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
							<h2>여러 장르의 퀴즈에 도전하세요!</h2>
						</header>
						<div class="row aln-center">
							<div class="col-4 col-6-medium col-12-small">
								<!-- Feature -->
									<section>
										<a href="quiz/confirmQuiz.jsp?category=<%=qs.MOVIE%>" 
										class="image featured"><img src="<%=request.getContextPath()%>/images/quiz/movie_quiz.jpg" alt="" id="quizImg"/></a>
										<header>
											<h3>영화</h3>
										</header>
									</section>

							</div>
							<div class="col-4 col-6-medium col-12-small">
								<!-- Feature -->
									<section>
										<a href="quiz/confirmQuiz.jsp?category=<%=qs.SPORT%>" class="image featured"><img src="<%=request.getContextPath()%>/images/quiz/sports_quiz.jpg" id="quizImg" alt="" /></a>
										<header>
											<h3>스포츠</h3>
										</header>
									</section>
							</div>
							<div class="col-4 col-6-medium col-12-small">
								<!-- Feature -->
									<section>
										<a href="quiz/confirmQuiz.jsp?category=<%=qs.STUDY%>" class="image featured"><img src="<%=request.getContextPath()%>/images/quiz/study_quiz.jpg" alt="" id="quizImg"/></a>
										<header>
											<h3>학습</h3>
										</header>
									</section>
							</div>
							<div class="col-4 col-6-medium col-12-small">
								<!-- Feature -->
									<section>
										<a href="quiz/confirmQuiz.jsp?category=<%=qs.COMMON%>" class="image featured"><img src="<%=request.getContextPath()%>/images/quiz/common_quiz.jpg" alt="" id="quizImg"/></a>
										<header>
											<h3>상식</h3>
										</header>
									</section>
							</div>
							<div class="col-4 col-6-medium col-12-small">
								<!-- Feature -->
									<section>
										<a href="quiz/quizMain.jsp" class="image featured"><img src="<%=request.getContextPath()%>/images/quiz/more_quiz.jpg" alt="" id="quizImg"/></a>
										<header>
											<h3>더보기</h3>
										</header>
									</section>
							</div>
						</div>
					</div>
				</section>


			<!-- Main -->

				
				
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