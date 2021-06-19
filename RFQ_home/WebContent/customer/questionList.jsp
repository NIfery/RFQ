<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		
		<script type="text/javascript" src="../assets/js/jquery.min.js"></script>
		<script type="text/javascript">
			$(function() {
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
			
			function calcHeight() {

				var the_height = document.getElementById('the_iframe').contentWindow.document.body.scrollHeight;

				document.getElementById('the_iframe').height = the_height;

				document.getElementById('the_iframe').style.overflow = "hidden";
			}
			
		</script>
		
		<!-- 사용자 정의 css -->
		<style type="text/css">
			
		</style>
	</head>
	<body class="homepage is-preload">
		<div id="page-wrapper">

			<%@ include file="../inc/header.jsp" %>

			<!-- Main -->
				<section id="main_map">
					<div class="container" style="text-align:center;">
						<div id="customer_title">
							<h2 id="customer_h2"><b>고객센터</b></h2>
							<p style="font-size:0.8em">원하는 답변이 없는 경우 문의사항을 남겨주세요.</p>
							<%if(!c_userid.equals("admin")){ %>
								<button id="btnQ" class="question" type="button">문의하기</button>	&nbsp;&nbsp;&nbsp;
							<%} %>
							<button id="btnQL" class="question" type="button">문의내역</button>			
						</div>
						

						<iframe 
						
							src="<%=request.getContextPath() %>/customer/questionList_content.jsp?userid=<%=t_userid %>"

						id="the_iframe" onload="calcHeight();" scrolling="no"
						style="overflow-x:hidden; overflow:auto; width:100%; min-height:10px;"></iframe>


						
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
