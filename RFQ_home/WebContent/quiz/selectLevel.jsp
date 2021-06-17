<%@page import="com.quiz.model.QuizService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//quizMain페이지에서 각 버튼 클릭하면 get방식으로 이동
String category = request.getParameter("category");
QuizService qs = new QuizService();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
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
<title>퀴즈 난이도 선택</title>
</head>
<body class="homepage is-preload">
	<div id="page-wrapper">
		<%@ include file="../inc/header.jsp"%>
		<section id="features">
			<div class="container">
				<div class="inner">
					<header>
						<h1>난이도를 선택하세요!</h1>
					</header>
					<section class="tiles">
						<article class="style1">
							<span class="image"> <img
								src="<%=request.getContextPath()%>/images/pic01.jpg" alt="" />
							</span> <a href="listQuiz.jsp?category=<%=category%>&level=<%=qs.HARD%>">
								<h2>상</h2>
								<h2>(20문제, 50p)</h2>
								<div class="content">
									<p></p>
								</div>
							</a>
						</article>
						<article class="style2">
							<span class="image"> <img
								src="<%=request.getContextPath()%>/images/pic01.jpg" alt="" />
							</span> <a href="listQuiz.jsp?category=<%=category%>&level=<%=qs.NOMAL%>">
								<h2>중</h2>
								<h2>(20문제, 30p)</h2>
								<div class="content">
									<p></p>
								</div>
							</a>
						</article>
						<article class="style3">
							<span class="image"> <img
								src="<%=request.getContextPath()%>/images/pic01.jpg" alt="" />
							</span> <a href="listQuiz.jsp?category=<%=category%>&level=<%=qs.EASY%>">
								<h2>하</h2>
								<h2>(10문제, 10p)</h2>
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
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/jquery.dropotron.min.js"></script>
	<script src="../assets/js/browser.min.js"></script>
	<script src="../assets/js/breakpoints.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/main.js"></script>
</body>
</html>