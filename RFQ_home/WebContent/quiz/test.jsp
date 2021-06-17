<%@page import="com.quiz.model.QuizVO"%>
<%@page import="com.quiz.model.QuizDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    QuizDAO dao = new QuizDAO();
    QuizVO vo = new QuizVO();
    
    String r_num = request.getParameter("r_num1");
    vo=dao.showQuiz(Integer.parseInt(r_num));
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	var corr=0;
	$("input:radio[name=exam]").click(function(){
	if($("input[name=exam]:checked").val()==<%=vo.getAnswer()%>){
		alert("정답");
	}else{
		alert("오답");
	}
	alert(corr);
});
})

</script>
</head>
<body>
<div>
		<h1><%=vo.getContent() %></h1>
	</div>
	<div>
		<input type="radio" name="exam" class="exam" value="1"><%=vo.getExam1() %>
		<br>
		<br>
		<input type="radio" name="exam" class="exam" value="2"><%=vo.getExam2() %>
		<br>
		<br>
		<input type="radio" name="exam" class="exam" value="3"><%=vo.getExam3() %>
		<br>
		<br>
		<input type="radio" name="exam" class="exam" value="4"><%=vo.getExam4() %>
	</div>
	
</body>
</html>