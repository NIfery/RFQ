<%@page import="com.member.model.MemberVO"%>
<%@page import="com.member.model.MemberService"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.customer.model.CustomerVO"%>
<%@page import="com.customer.model.CustomerService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid = request.getParameter("userid");
	String no = request.getParameter("no");

	CustomerService customerService = new CustomerService();
	CustomerVO vo = null;
	MemberService memberService  = new MemberService();
	MemberVO mVo = null;
	
	try{
		vo = customerService.selectByNo(Integer.parseInt(no));
		mVo = memberService.selectByUserid(vo.getUserid());
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String email=mVo.getEmail(), hp=mVo.getHp(), answer=vo.getAnswer();
	if(email==null) email="";
	if(hp==null) hp="";
	if(answer==null) answer="";
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
		$('#btnDelete').click(function(){
			<%if(userid.equals("admin")){%>
				if(!confirm('답변하시겠습니까?')){
					event.preventDefault();
				}
			<%}else{%>
				if(!confirm('삭제하시겠습니까?')){
					event.preventDefault();
				}
			<%}%>
		});
		
		$('#btnBack').click(function(){
			history.back();
		});
	});


</script>
<style type="text/css">
	.ck.ck-editor{
		height:300px;
	}
	.ck.ck-content {
	    height: 300px;
	}

	.con {
		position: relative;
		left: 10%;
		width: 80%;
	}
	
	input[type="text"] {
	    width: 40%;
	    height: 30px;
	    font-size: 1.2em;
	}
			
	.tableCon{
	    border: 1px solid gray;
	    border-collapse: collapse;
	    width:100%;
	}
	.tableCon th, td {
	    border: 1px solid gray;
	    height: 45px;
	    padding-left: 15px;
	}
	
	table{
		width: 80%;
	    border: solid silver 10px;
	    border-collapse: collapse;
	}
	
	th{
		background-color: #eeeeee;
		border: solid silver 1px;
	    padding: 15px;
	}

	.td{
		border: solid silver 1px;
		padding: 10px;
		font-size: 1.2em;
	}
	
	.td.line
	{
		border-bottom:solid 1px silver;
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
</style>
</head>
<body>
	<hr><br>
	<div class="con">
	<form name="frmQuestionView" method="post" action="<%=request.getContextPath()%>/customer/question_result.jsp">
		<input type="hidden" name="no" value="<%=no%>">
		<br><br>
		<table class="tableCon">
			<colgroup>
				<col style="width:20%;" />
				<col style="width:30%;" />
				<col style="width:20%;" />
				<col style="width:30%;" />
			</colgroup>
			<tr>
				<th>제목</th>
				<td colspan="3" class="td"><%=vo.getTitle() %></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td colspan="3" class="td"><%=vo.getUserid() %></td>
			</tr>
			<tr>
				<th>등록일</th>
				<td class="td"><%=sdf.format(vo.getRegdate()) %></td>
				<th>상태</th>
				<td class="td">
					<%if(vo.getAnswer_flag().equals("N")){ %>
						대기중
					<%}else{ %>
						답변완료
					<%} %>
				</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td colspan="3" class="td"><%=email %></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td colspan="3" class="td"><%=hp %></td>
			</tr>
			<tr>
				<th>질문내용</th>
				<td colspan="3">
					<div style="overflow:auto;height:500px"><%=vo.getContent() %></div>
				</td>
			</tr>
		</table>
		<br><br>
		답변내용<br><br>
		<div style="text-align:center">
			<%if(userid.equals("admin")){ %>
				<textarea name="answer" id="editor" style="width:100%;height:300px"><%=answer %></textarea><br><br>
				<script>
					ClassicEditor
						.create( document.querySelector( '#editor' ))
						.catch( error => {
						console.error( error );
					} );
				</script>
				<br><br><input type="submit" class="question" value="답변" id="btnDelete">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<%}else{ %>
					<div style="padding-left: 15px;border:1px solid silver;text-align:justify;overflow:auto;height:300px"><%=answer %></div>
					<br><br><input type="submit" class="question" value="삭제" id="btnDelete">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<%} %>
			<input type="button" class="question" value="목록" id="btnBack">
		</div>
	</form>
	</div>
	<br><br><br><hr>
	<br><br><br><br><br><br><br>
</body>
</html>