<%@page import="com.quiz.model.GetPointDAO"%>
<%@page import="com.quiz.model.QuizDAO"%>
<%@page import="com.quiz.model.QuizVO"%>
<%@page import="com.quiz.model.QuizService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String c_userid = (String)session.getAttribute("userid");
boolean c_login = false;
if(c_userid!=null && !c_userid.isEmpty()){ //세션에 값이 있으면
	c_login = true; //로그인이 된 경우
}

QuizService qs = new QuizService();
GetPointDAO gpdao = new GetPointDAO();
int cnt = gpdao.insertUser(c_userid);
System.out.println("유저 넣기 완료="+cnt);

	String listNum=request.getParameter("listNum");
   	String category=request.getParameter("category");
   	String level=request.getParameter("level");
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
   	
   		int r_num=Integer.parseInt(category+level+((int)(Math.random()*20)+1));
   		vo=dao.showQuiz(r_num);
   	
   	  	
%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />


<script type="text/javascript" src="../assets/js/jquery.min.js"></script>
<script type="text/javascript">

			$(function() {
				var count=0;
				
				$('#next').click(function(){
					<%if(level.equals("0")){%>
						if(count<5){
						var rnd = <%=category.toString()+level.toString()%>+(Math.floor(Math.random()*20)+1).toString();
						count++;
						var num=<%=listNum%>;
						var point=<%=level%>;
						
						 $('#quizList').attr('src', 'test.jsp?r_num1='+rnd+'&listNum1='+num);
						
					}
						if(count==5){
							location.href="resultQuiz.jsp?corCount="+$('#check').val()+'&listNum='+num+'&level='+point;
						}
						<%}else if(level.equals("1")){%>
						if(count<10){
							var rnd = <%=category.toString()+level.toString()%>+(Math.floor(Math.random()*20)+1).toString();
							count++;
							$('#quizList').attr('src','test.jsp?r_num1='+rnd+'&listNum1='+num);
						}
						if(count==10){
							location.href="resultQuiz.jsp";
						}
					<%}else if(level.equals("2")){%>
						if(count<15){
							var rnd = <%=category.toString()+level.toString()%>+(Math.floor(Math.random()*20)+1).toString();
							count++;
							
							$('#quizList').attr('src', 'test.jsp?r_num1='+rnd+'&listNum1='+num);
						}
						if(count==15){
							location.href="resultQuiz.jsp";
						}
					<%}%>
				});
				
				 $('.startQuiz').click(function(event){
					 event.preventDefault();
					 $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				 });
			});
		</script>
		
<title>퀴즈 풀이 창</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');

#category, #level, .startQuiz, #next{
font-family: 'Nanum Gothic', sans-serif;
}
#category {
	border: 1px solid lightgray;
	background: lightgray;
	border-radius: 5px;
	padding: 5px;
	margin: 5px;
	font-size: 1.6em;
}

#level {
	border: 1px solid lightbule;
	background: lightblue;
	border-radius: 5px;
	padding: 5px;
	margin: 5px;
	font-size: 1.6em;
}
#quizList{
			width:800px;
			height:500px;
}
#empty{
	background: white;
}

#next{
	width : 200px;
	height: 50px;
}
</style>
</head>
<body>
<input type="hidden" id="check" value="0">
	<div id="page-wrapper">
		<%@ include file="../inc/header.jsp"%>
		<div id="wrapper">
			<div id="form-box">
				<form>
				<br>
				<span id="category"><%=r_category%></span> <span id="level"><%=r_level %></span>
					<br><br><br>
					<a href="#empty" class="startQuiz" style="font-size: 1.8em">퀴즈시작</a>
				</form>
					<br>
			</div>
		</div>
		<div id="empty">
			<br><br><br><br>
		</div>
		
		<div class="quiz">
			<iframe src="test.jsp?r_num1=<%=r_num %>&listNum1=<%=listNum %>" id="quizList"></iframe>
		<button id="next">다음문제</button>
		</div>
	</div>
	<%@ include file="../inc/footer.jsp"%>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>