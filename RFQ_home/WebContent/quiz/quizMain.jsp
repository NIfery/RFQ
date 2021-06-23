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
		@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
		
			.swiper-container {
				border: 1px solid black;
				width: 80%;
				height: 500px;
			}
			
			
			h1{
		    	font-size: 2em;
		    	font-family: 'Nanum Gothic', sans-serif;
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
								<article class="style2">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/quiz/movie_quiz.jpg" alt="" id="quizImg"/>
									</span>
									<a href="confirmQuiz.jsp?category=<%=qs.MOVIE%>">
										<h2 class="quizTitle">영화</h2>
										<div class="content">
											<p></p>
										</div>
									</a>
								</article>
								<article class="style2">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/quiz/history_quiz.jpg" alt="" id="quizImg"/>
									</span>
									<a href="confirmQuiz.jsp?category=<%=qs.HISTORY%>">
										<h2 class="quizTitle">역사</h2>
										<div class="content">
											<p></p>
										</div>
									</a>
								</article>
								<article class="style2">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/quiz/sports_quiz.jpg" alt="" id="quizImg"/>
									</span>
									<a href="confirmQuiz.jsp?category=<%=qs.SPORT%>">
										<h2 class="quizTitle">스포츠</h2>
										<div class="content">
											<p></p>
										</div>
									</a>
								</article>
								<article class="style2">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/quiz/game_quiz.jpg" alt="" id="quizImg"/>
									</span>
									<a href="confirmQuiz.jsp?category=<%=qs.GAME%>">
										<h2 class="quizTitle">게임</h2>
										<div class="content">
											<p></p>
										</div>
									</a>
								</article>
								<article class="style2">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/quiz/common_quiz.jpg" alt="" id="quizImg"/>
									</span>
									<a href="confirmQuiz.jsp?category=<%=qs.COMMON%>">
										<h2 class="quizTitle">상식</h2>
										<div class="content">
											<p></p>
										</div>
									</a>
								</article>
								<article class="style2">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/quiz/study_quiz.jpg" alt="" id="quizImg"/>
									</span>
									<a href="confirmQuiz.jsp?category=<%=qs.STUDY%>">
										<h2 class="quizTitle">학습</h2>
										<div class="content">
											<p></p>
										</div>
									</a>
								</article>
								<article class="style2">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/quiz/enter_quiz.jpg" alt="" id="quizImg"/>
									</span>
									<a href="confirmQuiz.jsp?category=<%=qs.ENTER%>">
										<h2 class="quizTitle">연예인</h2>
										<div class="content">
											<p></p>
										</div>
									</a>
								</article>
								<article class="style2">
									<span class="image">
										<img src="<%=request.getContextPath() %>/images/quiz/nword_quiz.png" alt="" id="quizImg"/>
									</span>
									<a href="confirmQuiz.jsp?category=<%=qs.NWORD%>">
										<h2 class="quizTitle">신조어</h2>
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


			
