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
			    		location.href="<%=request.getContextPath()%>/customer/questionList.jsp";
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
							<%if(!c_userid.equals("admin")){ %>
								<button id="btnQ" class="question" type="button">문의하기</button>	&nbsp;&nbsp;&nbsp;
							<%} %>
							<button id="btnQL" class="question" type="button">문의내역</button>			
						</div>
						<div id="tabs">
							<ul>
						    	<li><a href="#tabs-1">자주 묻는 질문</a></li>
						    	<li><a href="#tabs-2">계정</a></li>
						    	<li><a href="#tabs-3">퀴즈</a></li>
						    	<li><a href="#tabs-4">결제</a></li>
						    	<li><a href="#tabs-5">기타</a></li>
							</ul>
						    <div id="tabs-1">
							    <div class="accordion" style="text-align: left">
									<h3><span style="color:blue">Q</span> 인기 상품에서 소개된 제품을 구입하고 싶어요.</h3>
									<div>
								    <pre>해당 상품에 마우스를 올리시면 버튼이 나타납니다.<br>나타난 버튼을 클릭하시면 해당 제품을 구매할 수 있는 곳으로 이동할 수 있습니다.</pre>
								    </div>
								    <h3><span style="color:blue">Q</span> 포인트는 어떻게 얻을 수 있나요?</h3>
									<div>
								    <pre>퀴즈의 정답을 맞히시면 퀴즈의 난이도 별로 해당하는 포인트를 획득하실 수 있습니다.</pre>
								    </div>
								    <h3><span style="color:blue">Q</span> 고객센터 상담 방법 및 운영 시간을 알고 싶어요.</h3>
									<div>
								    <pre>1:1문의하기(메일)<br>- 고객센터 > 문의하기 버튼 클릭 > 문의내용 작성 및 문의<br>- 상시 운영</pre>
								    </div>
								    <h3><span style="color:blue">Q</span> 원하는 답변을 찾지 못했어요.</h3>
									<div>
								    <pre>확인하기 어려운 내용, 또는 더 자세한 설명을 원하시면 문의글을 남겨주세요.<br>문의글을 남겨주시면 1-2일내로 답변을 드리고 있습니다.</pre>
								    </div>
								</div>
						    </div>
						    <div id="tabs-2">
						    	<div class="accordion" style="text-align: left">
									<h3><span style="color:blue">Q</span> 회원가입은 어떻게 하나요?</h3>
									<div>
								    <pre>홈페이지 우측 상단의 JOIN을 클릭하시면 회원가입이 가능합니다.</pre>
								    </div>
									<h3><span style="color:blue">Q</span> 회원 아이디와 비밀번호를 변경할 수 있나요?</h3>
									<div>
								    <pre>안정적인 서비스를 위해 회원 아이디의 변경은 불가능합니다.<br>변경하고자 할 경우에는 부득이하게 회원탈퇴 후 재가입을 하셔야 합니다.<br>비밀번호는 마이페이지 내 개인정보 변경에서 언제든지 변경이 가능합니다.</pre>
								    </div>
								    <h3><span style="color:blue">Q</span> 탈퇴는 어떻게 하나요?</h3>
									<div>
								    <pre>RFQ 탈퇴는 아래 방법으로 직접 진행할 수 있습니다.<br><br>탈퇴 방법<br>- 마이페이지 > 탈퇴 요청<br><br>※ 사용하지 않은 상품이 있는지 주의하시고 탈퇴하시기 바랍니다.</pre>
								    </div>
								</div>
						    </div>
						    <div id="tabs-3">
						    	<div class="accordion" style="text-align: left">
									<h3><span style="color:blue">Q</span> 쉬운 퀴즈들만 풀고 싶어요!</h3>
									<div>
								    <pre>저희 RFQ에서는 난이도 별로 퀴즈를 제공하고 있습니다.<br>퀴즈의 장르를 선택하시고 난이도(상,중,하)에서 하를 선택하시면 됩니다.</pre>
								    </div>
								    <h3><span style="color:blue">Q</span> 퀴즈의 답을 바꿀 수 있나요?</h3>
									<div>
								    <pre>한 문제 당 답을 고를 수 있는 기회는 한번뿐입니다.<br>실수로 다른 선택지를 고르지 않도록 신중히 선택해주세요.</pre>
								    </div>
								    <h3><span style="color:blue">Q</span> 정답이 정확하지 않은 퀴즈가 있어요.</h3>
									<div>
								    <pre>정답이 정확하지 않은 퀴즈가 있다면 고객센터에서 문의하기로 문의주시기 바랍니다.<br>최대한 빠른 시일 내로 수정하도록 하겠습니다.</pre>
								    </div>
								    <h3><span style="color:blue">Q</span> 문제의 출제 순서를 바꿀 수 있나요?</h3>
									<div>
								    <pre>저희 RFQ에서는 선택한 난이도에 해당하는 퀴즈들이 매번 무작위의 순서로 출제됩니다.<br>이용자분들께서 임의로 바꿀 수 없는 점 양해바랍니다.</pre>
								    </div>
								</div>
			      		    </div>
						    <div id="tabs-4">
						    	<div class="accordion" style="text-align: left">
									<h3><span style="color:blue">Q</span> 기프티콘을 구매하고 싶은데 뭘로 구매하나요?</h3>
									<div>
								    <pre>저희가 제공하는 퀴즈들을 풀면 포인트를 획득하실 수 있습니다.<br>획득하신 포인트를 이용하여 기프티콘들을 구매하실 수 있습니다.</pre>
								    </div>
								    <h3><span style="color:blue">Q</span> 구매한 기프티콘은 언제까지 사용할 수 있나요?</h3>
									<div>
								    <pre>기프티콘을 구매하시면 기프티콘마다 유효기간이 명시되어 있습니다.<br>유효기간에 유의하여 사용해주세요.</pre>
								    </div>
								    <h3><span style="color:blue">Q</span> 기프티콘을 친구에게 선물할 수도 있나요?</h3>
									<div>
								    <pre>선물하기 기능은 추후에 도입할 예정입니다.<br>직접 구매하여 기프티콘 코드를 보내주세요.</pre>
								    </div>
								</div>
						    </div>
						    <div id="tabs-5">
						    	<div class="accordion" style="text-align: left">
									<h3><span style="color:blue">Q</span> 개인정보는 어떻게 처리되나요?</h3>
									<div>
								    <pre>홈페이지 하단의 개인정보 처리방침을 선택하시면 확인해 보실 수 있습니다.<br>마찬가지로 서비스 이용약관과 오시는길도 확인해 보실수 있습니다.</pre>
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