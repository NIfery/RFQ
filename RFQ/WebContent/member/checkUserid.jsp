<%@page import="com.member.model.MemberService"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberService" class="com.member.model.MemberService" scope="session"></jsp:useBean>
	<%
		//1
		request.setCharacterEncoding("utf-8");
		String userid = request.getParameter("userid");
		
		//2
		int result = 0;
		if(userid!=null && !userid.isEmpty()){
			try{
				result = memberService.checkDuplicate(userid);
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		
		//3
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>checkUserid.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/mainstyle.css"/>
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#btUse').click(function(){
			$(opener.document).find('#userid').val('<%=userid%>');
			$(opener.document).find('#chkId').val('Y');
			
			self.close();
		});
	});
</script>
</head>
<body>
	
	<h1>아이디 중복 검사</h1>
	<br>
	<form name="frmDup" method="post" action="checkUserid.jsp">
		<label for="userid">아이디</label>
        <input type="text" name="userid" id="userid"
        	value="<%=userid%>">
        <input type="submit" value="아이디 확인">
        
        <%if(result==MemberService.UNUSABLE_ID){ %>
	      	<p>이미 등록된 아이디입니다. 다른 아이디를 입력하세요.</p>
        <%}else if(result==MemberService.USABLE_ID){ %>
	      	<input type="button" value="사용하기" id="btUse">
	      	<p>사용가능한 아이디입니다. [사용하기] 버튼을 클릭하세요.</p>
        <%} %>
	</form>
</body>
</html>