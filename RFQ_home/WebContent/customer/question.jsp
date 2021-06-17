<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>RFQ</title>
<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		
		<script src="https://cdn.ckeditor.com/ckeditor5/28.0.0/classic/ckeditor.js"></script>
		
		<script type="text/javascript" src="../assets/js/jquery.min.js"></script>
		<script type="text/javascript">
			$(function() {
			
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
							<button id="btnQ" class="question" type="button">문의하기</button>	&nbsp;&nbsp;&nbsp;
							<button id="btnQL" class="question" type="button">문의내역</button>			
						</div>
						
						
						 <!-- 2. TEXT 편집 툴을 사용할 textarea -->
    <textarea name="content" id="editor"></textarea>
    <script>
    // 3. CKEditor5를 생성할 textarea 지정
    ClassicEditor
        .create( document.querySelector( '#editor' ) )
        .catch( error => {
            console.error( error );
        } );
    </script>
						
						
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







	
	