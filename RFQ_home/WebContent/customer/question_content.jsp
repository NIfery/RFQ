<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String tt_userid = (String)session.getAttribute("userid");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.ckeditor.com/ckeditor5/28.0.0/classic/ckeditor.js"></script>
<script type="text/javascript" src="../assets/js/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('form[name=frmQuestion]').submit(function(){
			if($('input[name=title]').val().length<1){
				alert('제목을 입력해주세요.');
				$('input[name=title]').focus();
				event.preventDefault();
			}else{
				alert('문의가 접수되었습니다.');
			}
		});
	});
</script>
<!-- 사용자 정의 css -->
		<style type="text/css">
			.ck.ck-editor{
				height:500px;
			}
		 	.ck.ck-content {
			    height: 500px;
			}
			input[type="text"] {
			    width: 40%;
			    height: 30px;
			    font-size: 1.2em;
			}
			input[type="button"],
			input[type="submit"],
			input[type="reset"],
			button,
			.button {
				-moz-transition: all 0.25s ease-in-out;
				-webkit-transition: all 0.25s ease-in-out;
				-ms-transition: all 0.25s ease-in-out;
				transition: all 0.25s ease-in-out;
				position: relative;
				display: inline-block;
				text-transform: uppercase;
				border-radius: 4px;
				border: 0;
				outline: 0;
				font-size: 1em;
				box-shadow: 0.125em 0.175em 0 0 rgba(0, 0, 0, 0.125);
				font-weight: 600;
				text-align: center;
				font-size: 0.85em;
				letter-spacing: 2px;
				padding: 0.85em 2.75em 0.85em 2.75em;
			}
			
			form input[type="submit"].question {
				box-shadow: 0 0 0.125em 0.175em rgba(0, 0, 0, 0.125);
		    	background: white;
		    	color: skyblue;
			}
			form input[type="submit"].question:hover {
				cursor: pointer;
				background: skyblue;
		    	color: white;
			}
			form input[type="submit"].question:active {
				background: #a0d8ef;
		    	color: white;
			}
			
			form input[type="button"].question {
				box-shadow: 0 0 0.125em 0.175em rgba(0, 0, 0, 0.125);
		    	background: white;
		    	color: skyblue;
			}
			form input[type="button"].question:hover {
				cursor: pointer;
				background: skyblue;
		    	color: white;
			}
			form input[type="button"].question:active {
				background: #a0d8ef;
		    	color: white;
			}
			
			form input[type="button"].back {
				box-shadow: 0 0 0.125em 0.175em rgba(0, 0, 0, 0.125);
		    	background: #888;
		    	color: white;
			}
			form input[type="button"].back:hover {
				cursor: pointer;
			}
		</style>
</head>
<body>
	<form name="frmQuestion" method="post" action="question_content_ok.jsp">
		<input type="hidden" name="id" value="<%=tt_userid%>">
		<label for="title">제목</label>
		<input type="text" name="title">
		<br><br>
		<textarea name="content" id="editor" cols="30"></textarea>
		<script>
			ClassicEditor
				.create( document.querySelector( '#editor' ))
				.catch( error => {
				console.error( error );
			} );
		</script>
		<br><br><br><br>
		<div style="text-align:center">
			<input type="submit" class="question" value="문의">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" class="back" value="취소">
		</div>
		<br><br><br><br><br><br><br>
	</form>
</body>
</html>