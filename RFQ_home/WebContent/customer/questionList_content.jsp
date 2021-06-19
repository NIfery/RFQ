<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.customer.model.CustomerService"%>
<%@page import="com.customer.model.CustomerVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid = request.getParameter("userid");	

	CustomerService customerService = new CustomerService();
	List<CustomerVO> list = null;
	
	try{
		list = customerService.selectAll(userid);
		
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
	.con {
		position: relative;
		left: 10%;
	}
	
	table{
		width: 80%;
	    border: solid silver 10px;
	    border-collapse: collapse;
	    font-size: 0.9em;
	}
	
	th{
		background-color: #eeeeee;
		border: solid silver 1px;
	    padding: 15px;
	}

	td{
		border: solid silver 1px;
		text-align: center;
		padding: 10px;
		font-size: 1.2em;
	}
	
	td.line
	{
		border-bottom:solid 1px silver;
	}
	
	a:link{color:#555555;text-decoration:none}
	a:visited{color:#555555;text-decoration:none}
	a:hover{color:#047CC1;text-decoration:underline;}
	a:active{color:#047CC1;text-decoration:underline;}
	
	
</style>
<body>
	<hr><br><br><br>
	<div class="con">
		<table>
			<colgroup>
				<col style="width:15%;" />
				<col style="width:70%;" />	
				<col style="width:15%;" />
			</colgroup>
			<tr>
				<th>문의일</th>
				<th>제목</th>
				<th>상태</th>
			</tr>
			<%if(list==null || list.isEmpty()) {%>
				<tr><td colspan="3">문의내역이 없습니다.</td></tr>
			<%}else{ 
				for(int i=0;i<list.size();i++){
					CustomerVO vo = list.get(i);
				%>
					<tr>
						<td><%=sdf.format(vo.getRegdate()) %></td>
						<td><a href="questionList_content_view.jsp?no=<%=vo.getNo()%>&userid=<%=userid%>"><%=vo.getTitle() %></a></td>
						<%if(vo.getAnswer_flag().equals("N")){ %>
							<td style="color:skyblue">대기중</td>
						<%}else{ %>
							<td>답변완료</td>
						<%} %>
					</tr>
			<%	}
			} %>
		</table>
	</div>
	<br><br><br><hr>
	<br><br><br><br><br>
</body>
</html>