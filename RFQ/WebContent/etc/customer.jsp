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
				
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="/resources/demos/style.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  		
		<script type="text/javascript">
			$(function(){
				$("#tabs").tabs();
				$("#tabs ul li").click(function(){
					$(".accordion").accordion({
				    	active: false
				    });
				});
			    $(".accordion").accordion({
			    	active: false,
			    	collapsible: true,
			    	icons: false,
			    	heightStyle: "content"
			    });
			});
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
				<section id="main_customer">
					<div class="container" style="text-align:center;">
						<div id="customer_title">
							<h2 id="customer_h2"><b>고객센터</b></h2>
							<p>원하는 답변이 없는 경우 문의사항을 남겨주세요.</p>
							<button class="question" type="button">문의하기</button>			
						</div>
						<div id="tabs">
							<ul>
						    	<li><a href="#tabs-1">자주 묻는 질문 - 카테고리1</a></li>
						    	<li><a href="#tabs-2">카테고리2</a></li>
						    	<li><a href="#tabs-3">카테고리3</a></li>
						    	<li><a href="#tabs-4">카테고리4</a></li>
						    	<li><a href="#tabs-5">카테고리5</a></li>
							</ul>
						    <div id="tabs-1">
							    <div class="accordion" style="text-align: left">
									<h3><span style="color:blue">Q</span> 질문제목1 카테고리1</h3>
									<div>
								    <p>
								    	========답변내용1========
								    </p>
								    </div>
								    <h3><span style="color:blue">Q</span> 질문제목2 카테고리1</h3>
									<div>
								    <p>
								    	========답변내용2========
								    </p>
								    </div>
								    <h3><span style="color:blue">Q</span> 질문제목3 카테고리1</h3>
									<div>
								    <p>
								    	========답변내용3========
								    </p>
								    </div>
								    <h3><span style="color:blue">Q</span> 질문제목4 카테고리1</h3>
									<div>
								    <p>
								    	========답변내용4========
								    </p>
								    </div>
								    <h3><span style="color:blue">Q</span> 질문제목5 카테고리1</h3>
									<div>
								    <p>
								    	========답변내용5========
								    </p>
								    </div>
								</div>
						    </div>
						    <div id="tabs-2">
						    	<div class="accordion" style="text-align: left">
									<h3><span style="color:blue">Q</span> 질문제목1 카테고리2</h3>
									<div>
								    <p>
								    	========답변내용1========
								    </p>
								    </div>
								    <h3><span style="color:blue">Q</span> 질문제목2 카테고리2</h3>
									<div>
								    <p>
								    	========답변내용2========
								    </p>
								    </div>
								    <h3><span style="color:blue">Q</span> 질문제목3 카테고리2</h3>
									<div>
								    <p>
								    	========답변내용3========
								    </p>
								    </div>
								    <h3><span style="color:blue">Q</span> 질문제목4 카테고리2</h3>
									<div>
								    <p>
								    	========답변내용4========
								    </p>
								    </div>
								    <h3><span style="color:blue">Q</span> 질문제목5 카테고리2</h3>
									<div>
								    <p>
								    	========답변내용5========
								    </p>
								    </div>
								</div>
						    </div>
						    <div id="tabs-3">
						    	<div class="accordion" style="text-align: left">
									<h3><span style="color:blue">Q</span> 질문제목1 카테고리3</h3>
									<div>
								    <p>
								    	========답변내용1========
								    </p>
								    </div>
								    <h3><span style="color:blue">Q</span> 질문제목2 카테고리3</h3>
									<div>
								    <p>
								    	========답변내용2========
								    </p>
								    </div>
								    <h3><span style="color:blue">Q</span> 질문제목3 카테고리3</h3>
									<div>
								    <p>
								    	========답변내용3========
								    </p>
								    </div>
								    <h3><span style="color:blue">Q</span> 질문제목4 카테고리3</h3>
									<div>
								    <p>
								    	========답변내용4========
								    </p>
								    </div>
								    <h3><span style="color:blue">Q</span> 질문제목5 카테고리3</h3>
									<div>
								    <p>
								    	========답변내용5========
								    </p>
								    </div>
								</div>
			      		    </div>
						    <div id="tabs-4">
						    	<div class="accordion" style="text-align: left">
									<h3><span style="color:blue">Q</span> 질문제목1 카테고리4</h3>
									<div>
								    <p>
								    	========답변내용1========
								    </p>
								    </div>
								    <h3><span style="color:blue">Q</span> 질문제목2 카테고리4</h3>
									<div>
								    <p>
								    	========답변내용2========
								    </p>
								    </div>
								    <h3><span style="color:blue">Q</span> 질문제목3 카테고리4</h3>
									<div>
								    <p>
								    	========답변내용3========
								    </p>
								    </div>
								    <h3><span style="color:blue">Q</span> 질문제목4 카테고리4</h3>
									<div>
								    <p>
								    	========답변내용4========
								    </p>
								    </div>
								    <h3><span style="color:blue">Q</span> 질문제목5 카테고리4</h3>
									<div>
								    <p>
								    	========답변내용5========
								    </p>
								    </div>
								</div>
						    </div>
						    <div id="tabs-5">
						    	<div class="accordion" style="text-align: left">
									<h3><span style="color:blue">Q</span> 질문제목1 카테고리5</h3>
									<div>
								    <p>
								    	========답변내용1========
								    </p>
								    </div>
								    <h3><span style="color:blue">Q</span> 질문제목2 카테고리5</h3>
									<div>
								    <p>
								    	========답변내용2========
								    </p>
								    </div>
								    <h3><span style="color:blue">Q</span> 질문제목3 카테고리5</h3>
									<div>
								    <p>
								    	========답변내용3========
								    </p>
								    </div>
								    <h3><span style="color:blue">Q</span> 질문제목4 카테고리5</h3>
									<div>
								    <p>
								    	========답변내용4========
								    </p>
								    </div>
								    <h3><span style="color:blue">Q</span> 질문제목5 카테고리5</h3>
									<div>
								    <p>
								    	========답변내용5========
								    </p>
								    </div>
								</div>
						    </div>
						</div>
					</div>
				</section>

			<%@ include file="../inc/footer.jsp"%>
		</div>

		<!-- Scripts -->
			<script src="../assets/js/jquery.dropotron.min.js"></script>
			<script src="../assets/js/browser.min.js"></script>
			<script src="../assets/js/breakpoints.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>

	</body>
</html>