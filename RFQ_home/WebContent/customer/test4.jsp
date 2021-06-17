<%@page import="java.sql.SQLException"%>
<%@page import="com.customer.model.CustomerVO"%>
<%@page import="com.customer.model.CustomerService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String no = request.getParameter("no");

	CustomerService customerService = new CustomerService();
	CustomerVO vo = null;
	
	try{
		vo = customerService.selectByNo(Integer.parseInt(no));
	}catch(SQLException e){
		e.printStackTrace();
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{
	    border: 1px solid gray;
	    border-collapse: collapse;
	    width:100%;
	    font-size: 0.9em;
	}
	th, td {
	    border: 1px solid gray;
	    height: 45px;
	}
</style>
</head>
<body>
	<label for="title">제목</label>
	<input type="text" name="title" value="<%=vo.getTitle() %>" readonly>
	<br><br>
	<table border="1">
		<tr>
			<td>
				<div id="content"></div>
				<script language="javascript">
					var tmpStr="<%=vo.getContent() %>";
					tmpStr = tmpStr.replaceAll("&lt;","<");
					tmpStr = tmpStr.replaceAll("&gt;",">");
					tmpStr = tmpStr.replaceAll("&amp;lt","<");
					tmpStr = tmpStr.replaceAll("&amp;gt",">");
					tmpStr = tmpStr.replaceAll("&amp;nbsp;"," ");
					tmpStr = tmpStr.replaceAll("&amp;amp;;","&");
					document.getElementById('content').innerHTML=tmpStr;
				</script>
			</td>
		</tr>
	</table>
	<script>
		
	</script>
	<br><br><br><br>
	<div style="text-align:center">
	
	</div>
	<br><br><br><br><br><br><br>
</body>
</html>