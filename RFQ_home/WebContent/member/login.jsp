<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] ckArr = request.getCookies();
	String ck_value = "";
	if(ckArr!=null){
		for(int i=0;i<ckArr.length;i++){
			String name = ckArr[i].getName();
			if(name.equals("ck_userid")){
				ck_value = ckArr[i].getValue();
				break;
			}
		}
	}
%>
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
			$(function(){
				$('form[name=frmLogin]').submit(function(){
					if($('#userid').val().length<1){
						alert('아이디를 입력하세요.');
						$('#userid').focus();
						event.preventDefault();
					}else if($('#pwd').val().length<1){
						alert('비밀번호를 입력하세요.');
						$('#pwd').focus();
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
				<section id="main_agree">
					<div class="container" style="text-align:center;">
						<div id="agree_title">
							<h2><b>로그인</b></h2>
						</div>						
						<div style="text-align:center;border-top:1px solid #888;border-bottom:1px solid #888;padding-top:10px">
							<div style="width:60%;position:relative;left:20%;">
								<div>
									<img src="<%=request.getContextPath()%>/images/logo.jpg" style="width:100%;height:100%">
								</div>
								<div>
									<form name="frmLogin" method="post" action="<%=request.getContextPath() %>/member/login_ok.jsp">
										<fieldset>
											<input type="text" maxlength="20" id="userid" name="userid" title="아이디" autofocus placeholder="아이디" value="<%=ck_value%>"/>
											<input type="password" id="pwd" name="pwd" maxlength="50" title="비밀번호" placeholder="비밀번호" />&nbsp;
											<input type="submit" class="question" id="lg_submit" value="로그인">
											<div>
												<input type="checkbox" name="chkSave" id="chkSave"
													<%if(ck_value!=null && !ck_value.isEmpty()){%>
														checked="checked"						
													<%} %>> 
												<label for="chkSave" style="font-size: 0.8em">아이디 저장하기</label>
											</div>
										</fieldset>
									</form>
								</div>
							</div>
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