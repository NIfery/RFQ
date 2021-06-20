<%@page import="com.quiz.model.QuizService"%>
<%@page import="com.quiz.model.QuizVO"%>
<%@page import="com.quiz.model.QuizDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    QuizDAO dao = new QuizDAO();
    QuizVO vo = new QuizVO();
    QuizService qs = new QuizService();
    
    String r_num = request.getParameter("r_num1");
    String listNum=request.getParameter("listNum1");
    vo=dao.showQuiz(Integer.parseInt(r_num));
    
    %>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="../assets/js/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
    $('input[name="options"]').click(function(){
       var checked=$('input[name="options"]:checked').val();
    	if(checked=="<%=vo.getAnswer()%>"){
      		<%
      		int cnt = dao.insertCount(listNum);
      		%>
       }else{
    	   alert('오답');
       }
    });
 });
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>
	<div class="question">
		<h1><%=vo.getContent() %></h1>
	</div>
	<br>
	<br>
	<br>
	<div class="choice">
		<input type="radio" name="options" id="options" value="1"><%=vo.getExam1() %>
		<br>
		<input type="radio" name="options" id="options" value="2"><%=vo.getExam2() %>
		<br>
		<input type="radio" name="options" id="options" value="3"><%=vo.getExam3() %>
		<br>
		<input type="radio" name="options" id="options" value="4"><%=vo.getExam4() %>
	</div>
	
</body>
</html>