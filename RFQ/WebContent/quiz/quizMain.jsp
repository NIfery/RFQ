<%-- <%@page import="com.semi.quiz.QuizService"%> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>RFQ</title>

<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		
		<!-- swiper -->
		<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
		<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
		
		<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
		<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
				
		<script type="text/javascript" src="../assets/js/jquery.min.js"></script>
		<script type="text/javascript">
			
		</script>
		
		<!-- 사용자 정의 css -->
		<style type="text/css">
			h1{
				text-align: center;
			}
			button{
				background : white;
				color: skyblue;
				width: 200px;
				height: 100px;
				margin: 10px;
			}
		</style>
	</head>
	<body class="homepage is-preload">
		<div id="page-wrapper">

			<%@ include file="../inc/header.jsp" %>
			
			<!-- Main -->
				<section id="main_agree">
					<div class="container" style="text-align:center;">
						<div>
							<h1>퀴즈 장르를 선택해보세요!</h1>
						</div>
						<div>
							<button>
							<%-- <a href="selectLevel.jsp?category=<%=qs.MOVIE%>"> --%>
							<a href="#">
							영화
							</a></button>
							<button>
							<%-- <a href="selectLevel.jsp?category=<%=qs.HISTORY%>"> --%>
							<a href="#">
							역사
							</a></button>
							<button>
							<%-- <a href="selectLevel.jsp?category=<%=qs.SPORT%>"> --%>
							<a href="#">
							스포츠
							</a></button>
							<button>
							<%-- <a href="selectLevel.jsp?category=<%=qs.GAME%>"> --%>
							<a href="#">
							게임
							</a></button>
							<br>
							<button>
							<%-- <a href="selectLevel.jsp?category=<%=qs.COMMON%>"> --%>
							<a href="#">
							상식
							</a></button>
							<button>
							<%-- <a href="selectLevel.jsp?category=<%=qs.STUDY%>"> --%>
							<a href="#">
							학습
							</a></button>
							<button>
							<%-- <a href="selectLevel.jsp?category=<%=qs.ENTER%>"> --%>
							<a href="#">
							연예인
							</a></button>
							<button>
							<%-- <a href="selectLevel.jsp?category=<%=qs.NWORD%>"> --%>
							<a href="#">
							신조어
							</a></button>
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