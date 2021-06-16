<%@page import="com.quiz.model.QuizDAO"%>
<%@page import="com.quiz.model.QuizVO"%>
<%@page import="com.quiz.model.QuizService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   	//selectLevel에서 get방식으로 이동
   	String category=request.getParameter("category");
   	String level=request.getParameter("level");
   	QuizService qs = new QuizService();
   	QuizVO vo = new QuizVO();
   	QuizDAO dao = new QuizDAO();
   	
   	String r_category="",r_level="";
   	int r_num=0;
   	
   	if(category.equals("1")){
   		r_category="신조어";
   	}
   	if(level.equals("0")){
   		r_level="쉬움";
   	}else if(level.equals("1")){
   		r_level="보통";
   	}else if(level.equals("2")){
   		r_level="어려움";
   	}
   	
   		r_num=Integer.parseInt(category+level+((int)(Math.random()*5)+1));
   		vo=dao.showQuiz(r_num);
   	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>퀴즈 풀이 창</title>
<script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$("input:radio[name=exam]").click(function(){
		if($("input[name=exam]:checked").val()=="2"){
			$("input:text[name=text]").attr("disabled",true);
		}else{
			$("input:text[name=text]").attr("disabled",false);
		}
	});
	
	var count=0;
	$('.next').click(function(){
		if(count<10){
		var rnd = <%=category.toString()+level.toString()%>+(Math.floor(Math.random()*10)+1).toString();
	   	alert(rnd);
		count++;
		
		
		$('#test').attr('src', 'test.jsp?r_num1='+rnd);
		}
	});
		
		
});
</script>
<style type="text/css">
	#category{
		border:1px solid lightgray;
		background: lightgray;
		border-radius: 5px;
		padding:5px;
		margin: 5px;
	}
	
	#level{
		border:1px solid lightbule;
		background: lightblue;
		border-radius: 5px;
		padding:5px;
		margin: 5px;
	}
</style>
</head>
<body>
	<%System.out.println(r_num);%>

	
	<div>
		<span id="category"><%=r_category%></span>
		<span id="level"><%=r_level %></span>
	</div>
	<iframe src="test.jsp?r_num1=<%=r_num %>" id="test"></iframe>
	<hr>
	<div>
		<input type="text" name="correct"> 
	</div>
	<div>
		<button class="next">다음</button>
	</div>
	
	
</body>
</html>