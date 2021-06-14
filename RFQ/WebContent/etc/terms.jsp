<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>RFQ</title>
<%
	String kind = request.getParameter("kind");
%>
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
			
		</style>
	</head>
	<body class="homepage is-preload">
		<div id="page-wrapper">

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
									<li><a href="#" class="icon solid fa-cog"><span>기프티콘</span></a></li>
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

			
			
			<!-- Main -->
				<section id="main_agree">
					<div class="container" style="text-align:center;">
						<div id="agree_title">
							<%if(kind.equals("service")){ %>
								<h2><b>서비스 이용약관</b></h2>
							<%}else{ %>
								<h2><b>개인정보 처리방침</b></h2>
							<%} %>
						</div>
						<div>
							<iframe 
								<%if(kind.equals("service")){ %>
									src="<%=request.getContextPath() %>/etc/terms_content1.jsp" 
								<%}else{ %>
									src="<%=request.getContextPath() %>/etc/terms_content2.jsp" 
								<%} %>
								width="100%" height="700px"></iframe>
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