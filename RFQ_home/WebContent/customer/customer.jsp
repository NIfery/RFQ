<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String c_userid = (String)session.getAttribute("userid");
	boolean c_login = false;
	if(c_userid!=null && !c_userid.isEmpty()){ //세션에 값이 있으면
		c_login = true; //로그인이 된 경우
	}
%>
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
			    
			    $('#btnQ').click(function(){
			    	if(<%=c_login%>){
				    	location.href="<%=request.getContextPath()%>/customer/question.jsp";
			    	}else{
				    	alert('로그인이 필요합니다.');
			    	}
			    });
			    $('#btnQL').click(function(){
			    	if(<%=c_login%>){
				    	alert('문의내역입니다.');
			    	}else{
				    	alert('로그인이 필요합니다.');
			    	}
			    });
			});
			
		</script>
		
		<!-- 사용자 정의 css -->
		<style type="text/css">
			
		</style>
	</head>
	<body class="homepage is-preload">
		<div id="page-wrapper">

			<%@ include file="../inc/header.jsp" %>
						
			<!-- Main -->
				<section id="main_customer">
					<div class="container" style="text-align:center;">
						<div id="customer_title">
							<h2 id="customer_h2"><b>고객센터</b></h2>
							<p style="font-size:0.8em">원하는 답변이 없는 경우 문의사항을 남겨주세요.</p>
							<button id="btnQ" class="question" type="button">문의하기</button>	&nbsp;&nbsp;&nbsp;
							<button id="btnQL" class="question" type="button">문의내역</button>			
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