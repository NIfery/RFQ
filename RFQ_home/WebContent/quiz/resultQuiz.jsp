<%@page import="com.member.model.MemberService"%>
<%@page import="com.quiz.model.GetPointDAO"%>
<%@page import="com.quiz.model.QuizListVO"%>
<%@page import="com.quiz.model.QuizListDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String userid = (String)session.getAttribute("userid");
String corCount = request.getParameter("corCount");
	String listNum=request.getParameter("listNum");
	String point = request.getParameter("level");
	
	QuizListDAO dao = new QuizListDAO();
	QuizListVO vo = new QuizListVO();
	GetPointDAO gpDao = new GetPointDAO();
	MemberService memberSerivce=new MemberService();
	
	int count = dao.insertCount(listNum, corCount);
	vo=dao.countCor(listNum);
	int result=vo.getCorCount();
	int points=0;
	int balance=0;
	
	if(point.equals("0")){
	      points=10*result;
	      balance=points;
	      int cnt=gpDao.updatePoint(userid, points);
	      int cnt2=memberSerivce.updatePoint(userid, balance);
	      System.out.println(cnt);
	   }else if(point.equals("1")){
	      points=15*result;
	      balance=points;
	      int cnt=gpDao.updatePoint(userid, points);
	      int cnt2=memberSerivce.updatePoint(userid, balance);
	   }else if(point.equals("2")){
	      points=20*result;
	      balance=points;
	      int cnt=gpDao.updatePoint(userid, points);
	      int cnt2=memberSerivce.updatePoint(userid, balance);
	   }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../assets/css/main.css" />

<script type="text/javascript" src="../assets/js/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#button1').click(function(){
			location.href="../shoPage/index2.jsp";
		});
		$('#button2').click(function(){
			location.href="quizMain.jsp";
		});
	});
</script>
<title>퀴즈 결과</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
h1, div, button{
font-family: 'Nanum Gothic', sans-serif;
}

#empty{
	background: white;
	height: 100px;
}
#wrapper{
	height: 60vh;
}
#title{
	font-weight: bold;
	font-size: 3em;
	height: 100px;
}
#content{
	font-size: 1.5em;
	padding: 30px;
	left: 30%;
	
}
#button1, #button2{
	margin: 0px 20px;
}
</style>
</head>
<body>
<div id="page-wrapper">
		<%@ include file="../inc/header.jsp"%>
		<div id="empty">
		</div>
		<div id="wrapper">
			<div id="title">
			<h1>결과</h1>
			</div>
			<div id="content">
				정답개수 : <%=result %>
			<br><br>
				획득포인트 : <%=points %>
			</div>
			<br><br>
			<div>
				<button id="button1">쇼핑몰 보러가기 >></button>
				<button id="button2">다른 퀴즈 풀어보기 >></button>
			</div>
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