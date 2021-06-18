<%@page import="java.sql.SQLException"%>
<%@page import="com.customer.model.CustomerService"%>
<%@page import="com.customer.model.CustomerVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		CustomerService customerService = new CustomerService();
		CustomerVO vo = new CustomerVO();
		vo.setUserid(id);
		vo.setTitle(title);
		vo.setContent(content);
		
		try{
			int cnt = customerService.insertCustomer(vo);
			if(cnt>0){
				response.sendRedirect("question_content.jsp");
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
	%>
	<script type="text/javascript" src="../assets/js/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
			
		});
	</script>
</body>
</html>