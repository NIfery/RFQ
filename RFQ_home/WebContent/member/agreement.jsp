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
			$(function(){
				$('form[name=frmAgree]').submit(function(){
					if(!$('#chkAgree1').is(':checked')){
						alert('약관에 동의하셔야 합니다.');
						$('#chkAgree1').focus();
						event.preventDefault();
					}else if(!$('#chkAgree2').is(':checked')){
						alert('약관에 동의하셔야 합니다.');
						$('#chkAgree2').focus();
						event.preventDefault();
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
				<section id="main_map">
					<div class="container" style="text-align:center;">
						<div id="map_title">
							<h2><b>회원가입</b></h2>
						</div>
						<div>
							<form name="frmAgree" method="post" action="<%=request.getContextPath() %>/member/join.jsp">
								<div>
									<textarea rows="5" cols="80" readonly="readonly">
										<%@ include file="agreement_content1.jsp" %>
									</textarea>
									<br>
									<input type="checkbox" name="chkAgree1" id="chkAgree1">
									<span><label for="chkAgree1">RFQ 이용약관 동의</label></span>
								</div>
								<br><br>
								<div>
									<textarea rows="5" cols="80" readonly="readonly">
										<%@ include file="agreement_content2.jsp" %>
									</textarea>
									<br>
									<input type="checkbox" name="chkAgree2" id="chkAgree2">
									<span><label for="chkAgree2">개인정보 수집 및 이용 동의</label></span>
								</div>
								<br><br>
								<div style="text-align: center">
									<input type="submit" class="question" id="submit" value="확인">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="../index.jsp"><input type="button" class="back" id="back" value="취소"></a>
								</div>
							</form>
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