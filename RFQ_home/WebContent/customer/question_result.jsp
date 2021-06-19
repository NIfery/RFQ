<%@page import="java.sql.SQLException"%>
<%@page import="com.customer.model.CustomerService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid = (String)session.getAttribute("userid");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">z
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String no = request.getParameter("no");
		String answer = request.getParameter("answer");
		
		CustomerService customerService = new CustomerService();
		
		try{
			if(userid.equals("admin")){
				int cnt = customerService.answerCustomer(answer, Integer.parseInt(no));
				
				if(cnt>0){%>
					<script type="text/javascript">
						alert("답변이 완료되었습니다.");
						location.href="<%=request.getContextPath()%>/customer/questionList_content.jsp?userid=<%=userid%>";
					</script>
				<%}else{%>
					<script type="text/javascript">
						alert("답변 실패");
						history.go(-1);
					</script>			
				<%}
			}else{
				int cnt = customerService.deleteCustomer(Integer.parseInt(no));
				
				if(cnt>0){%>
					<script type="text/javascript">
						alert("문의글이 삭제되었습니다.");
						location.href="<%=request.getContextPath()%>/customer/questionList_content.jsp?userid=<%=userid%>";
					</script>
				<%}else{%>
					<script type="text/javascript">
						alert("문의 삭제 실패");
						history.go(-1);
					</script>			
				<%}
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
	%>
	<script type="text/javascript"></script>
</body>
</html>