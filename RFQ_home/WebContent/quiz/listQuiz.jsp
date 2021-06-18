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
   	
   	if(category.equals("1")){
   		r_category="영화";	
   	}else if(category.equals("2")){
   		r_category="역사";	
   	}else if(category.equals("3")){
   		r_category="스포츠";	
   	}else if(category.equals("4")){
   		r_category="게임";	
   	}else if(category.equals("5")){
   		r_category="상식";	
   	}else if(category.equals("6")){
   		r_category="학습";	
   	}else if(category.equals("7")){
   		r_category="연예인";	
   	}else if(category.equals("8")){
   		r_category="스포츠";	
   	}
   	
   	if(level.equals("0")){
   		r_level="쉬움";
   	}else if(level.equals("1")){
   		r_level="보통";
   	}else if(level.equals("2")){
   		r_level="어려움";
   	}
   	
   		int r_num=Integer.parseInt(category+level+((int)(Math.random()*5)+1));
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
	var count=0;
	$('.next').click(function(){
		<%if(level.equals("0")){%>
			if(count<3){
			var rnd = <%=category.toString()+level.toString()%>+(Math.floor(Math.random()*10)+1).toString();
			count++;
			
			$('#test').attr('src', 'test.jsp?r_num1='+rnd);
		}
			if(count==3){
				location.href="resultQuiz.jsp";
			}
		<%}else if(level.equals("1")){%>
			if(count<15){
				var rnd = <%=category.toString()+level.toString()%>+(Math.floor(Math.random()*10)+1).toString();
				count++;
				
				$('#test').attr('src', 'test.jsp?r_num1='+rnd);
			}
			if(count==15){
				location.href="resultQuiz.jsp";
			}
		<%}else if(level.equals("2")){%>
			if(count<20){
				var rnd = <%=category.toString()+level.toString()%>+(Math.floor(Math.random()*10)+1).toString();
				count++;
				
				$('#test').attr('src', 'test.jsp?r_num1='+rnd);
			}
			if(count==20){
				location.href="resultQuiz.jsp";
			}
		<%}%>
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
	<div>
		<span id="category"><%=r_category%></span>
		<span id="level"><%=r_level %></span>
	</div>
	<iframe src="test.jsp?r_num1=<%=r_num %>" id="test"></iframe>
	<hr>
	<div>
		<button class="next">다음</button>
	</div>
</body>
</html>