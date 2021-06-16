<%@page import="com.quiz.model.QuizService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//quizMain페이지에서 각 버튼 클릭하면 get방식으로 이동
	String category=request.getParameter("category");
	QuizService qs=new QuizService();
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>퀴즈 난이도 선택</title>
</head>
<body>
	<div>
		<h1>난이도를 선택하세요</h1>
	</div>
	<div>
		
	</div>
	<div>
		<button>
		<a href="listQuiz.jsp?category=<%=category%>&level=<%=qs.HARD%>">
		상(20문제, 50p)
		</a></button>
		<button>
		<a href="listQuiz.jsp?category=<%=category%>&level=<%=qs.NOMAL%>">
		중(20문제, 30p)
		</a></button>
		<button>
		<a href="listQuiz.jsp?category=<%=category%>&level=<%=qs.EASY%>">
		하(20문제, 10p)
		</a></button>
	</div>
</body>
</html>