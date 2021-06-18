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

<script src="https://cdn.ckeditor.com/ckeditor5/28.0.0/classic/ckeditor.js"></script>
<style type="text/css">
	.tableCon{
	    border: 1px solid gray;
	    border-collapse: collapse;
	    width:100%;
	    font-size: 0.9em;
	}
	.tableCon th, td {
	    border: 1px solid gray;
	    height: 45px;
	}
	
	/* ckeditor5-table/theme/table.css */
	.table {
	    margin: 1em auto;
	    display: table;
	}
	/* ckeditor5-table/theme/table.css */
	.table table {
	    border-collapse: collapse;
	    border-spacing: 0;
	    width: 100%;
	    height: 100%;
	    border: 1px double hsl(0, 0%, 70%);
	}
	/* ckeditor5-table/theme/table.css */
	.table table td,
	.table table th {
	    min-width: 2em;
	    padding: .4em;
	    border: 1px solid hsl(0, 0%, 75%);
	}
	/* ckeditor5-table/theme/table.css */
	.table table th {
	    font-weight: bold;
	    background: hsla(0, 0%, 0%, 5%);
	}
	/* ckeditor5-table/theme/tablecaption.css */
	.table > figcaption {
	    display: table-caption;
	    caption-side: top;
	    word-break: break-word;
	    text-align: center;
	    color: var(--ck-color-table-caption-text);
	    background-color: var(--ck-color-table-caption-background);
	    padding: .6em;
	    font-size: .75em;
	    outline-offset: -1px;
	}
	
</style>
</head>
<body>
	
	<label for="title">제목</label>
	<input type="text" name="title" value="<%=vo.getTitle() %>" readonly>
	<br><br>
	<table class="tableCon">
		<tr>
			<td>
				<div style="min-height:500px"><%=vo.getContent() %></div>
				<%-- <div id="content"></div>
				<script language="javascript">
					var tmpStr="<%=vo.getContent() %>";
					tmpStr = tmpStr.replaceAll("&lt;","<");
					tmpStr = tmpStr.replaceAll("&gt;",">");
					tmpStr = tmpStr.replaceAll("&amp;quot;",""");
					tmpStr = tmpStr.replaceAll("&amp;lt","<");
					tmpStr = tmpStr.replaceAll("&amp;gt",">");
					tmpStr = tmpStr.replaceAll("&amp;nbsp;"," ");
					tmpStr = tmpStr.replaceAll("&amp;amp;;","&");
					document.getElementById('content').innerHTML=tmpStr;
				</script> --%>
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