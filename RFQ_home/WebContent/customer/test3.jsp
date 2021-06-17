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

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
	table{
	    border: 1px solid gray;
	    border-collapse: collapse;
	    text-align: center;
	    width:100%;
	    font-size: 0.9em;
	}
	th, td {
	    border: 1px solid gray;
	    height: 45px;
	}
</style>
<body>
	<table border="1">
		<tr>
			<td>문의제목</td>
			<td>문의일자</td>
		</tr>
		<%if(list==null || list.isEmpty()) {%>
			<tr><th colspan="2">문의내역이 없습니다.</th></tr>
		<%}else{ 
			for(int i=0;i<list.size();i++){
				CustomerVO vo = list.get(i);
			%>
				<tr>
					<td><a href="test4.jsp?no=<%=vo.getNo()%>"><%=vo.getTitle() %></a></td>
					<td><%=vo.getRegdate() %></td>
				</tr>
		<%	}
		} %>
	</table>
	<br><br><br><br><br>
</body>
</html>