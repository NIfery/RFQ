<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="../assets/js/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#submit').click(function(){
			if($('#pwd').val().length<1){
				alert('비밀번호를 입력하세요');
				$('#pwd').focus();
				event.preventDefault();
			}else{
				if(!confirm('회원탈퇴하시겠습니까?')){
					event.preventDefault();
				}
			}
			
		});
	});
</script>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../assets/css/main.css" />
<style type="text/css">
#formCon {
	position: relative;
	display: -webkit-inline-box;
}
</style>
<title>회원탈퇴</title>
</head>
<body class="homepage is-preload">
	<div id="page-wrapper">

		<%@ include file="../inc/header.jsp"%>

		<!-- Main -->
		<section id="main_map">
			<div class="container" style="text-align: center;">
				<div id="map_title">
					<h2>
						<b>회원탈퇴</b>
					</h2>
				</div>
				<div id="formCon">
					<div style="text-align: justify;">
						<form name="frmOut" method="post" action="memberOut_ok.jsp">
							<p class="p">회원탈퇴하시겠습니까?</p>
							<div>
								<label for="pwd" class="p">비밀번호</label> <input type="password"
									name="pwd" id="pwd">
							</div>
							<div class="align_center">
								<input type="submit" id="submit" value="회원탈퇴"> <input
									type="reset" value="취소">
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>