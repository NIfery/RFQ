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
      		top.$('#check').val(Number(top.$('#check').val())+1);
       }
    });
 });
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
input[type=radio]{

            background-color: #FFFF;
            -webkit-appearance: none;
            -moz-appearance: none;
            margin-right: 20px;
            margin-left: 16px;
            border: 1px solid #BDBDBD;
            width: 20px;
            height: 20px;
            border-radius: 100%;
        }
        input[type=radio]:checked{
            background-color: #ed786a;
            -webkit-appearance: none;
            -moz-appearance: none;
            margin-left: 16px;
            border: none;
            width:20px;
            height: 20px;
            border-radius: 100%;
            color : #ed786a;
        }
        
        label{
        font-family: 'Nanum Gothic', sans-serif;
        	font-size: 1.4em;
        }
</style>
</head>
<body>
	<div class="question" style="font-family: 'Nanum Gothic', sans-serif;">
		<h1><%=vo.getContent() %></h1>
	</div>
	<br>
	<br>
	<br>
	<div class="choice">
		<input type="radio" name="options" id="options" value="1">
		 <label for="radio1"><%=vo.getExam1() %></label>
		<br><br><br>
		<input type="radio" name="options" id="options" value="2">
		 <label for="radio2"><%=vo.getExam2() %></label>
		<br><br><br>
		<input type="radio" name="options" id="options" value="3">
		 <label for="radio3"><%=vo.getExam3() %></label>
		<br><br><br>
		<input type="radio" name="options" id="options" value="4">
		 <label for="radio4"><%=vo.getExam4() %></label>
	</div>
	
</body>
</html>