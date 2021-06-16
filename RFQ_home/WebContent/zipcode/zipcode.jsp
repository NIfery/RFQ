<%@page import="com.zipcode.model.ZipcodeVO"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="zipcodeService" class="com.zipcode.model.ZipcodeService" scope="session"></jsp:useBean>
<%
	request.setCharacterEncoding("utf-8");
	String dong = request.getParameter("dong");
	
	//2
	List<ZipcodeVO> list = null;
	if(dong!=null && !dong.isEmpty()){
		list = zipcodeService.selectByDong(dong);
	}
	
	//3

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>zipcode.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/mainstyle.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
<script type="text/javascript">
	function setZipcode(zipcode, address){
		$(opener.document).find('#zipcode').val(zipcode);
		$(opener.document).find('input[name=address]').val(address);
		self.close();
	}
</script>
</head>
<body>
	<h2>우편번호 검색</h2>
	<br>
	<p>찾고 싶으신 주소의 동(읍/면)을 입력하세요</p>
	<form name="frmZipcode" method="post" action="zipcode.jsp">
		<label for="dong">지역명 : </label>
		<input type="text" name="dong" id="dong" style="ime-mode: active">
		<input type="submit" id="submit" value="찾기">
	</form>
	<br>
	<%if(list!=null){ %>
		<table style="width: 470px" class="box2"
			summary="우편번호 검색 결과에 관한 표로써, 우편번호, 주소에 대한 정보를 제공합니다.">
			<colgroup>
				<col style="width: 20%" />
				<col style="width: *" />
			</colgroup>
			<thead>
				<tr>
					<th scope="col">우편번호</th>
					<th scope="col">주소</th>
				</tr>
			</thead>
			<tbody>
				<%
				if(list.isEmpty()){%>
					<tr>
						<td colspan="2" class="align_center">데이터가 없습니다.</td>
					</tr>
				<%}else{ %>
					<!-- 반복 시작 -->
					<%for(int i=0;i<list.size();i++){
						ZipcodeVO vo = list.get(i);
						String address = vo.getSido()+" "+vo.getGugun()+" "+
							vo.getDong();
						String bunji = vo.getStartbunji();
						if(vo.getEndbunji()!=null && !vo.getEndbunji().isEmpty()){
							bunji += " ~ "+vo.getEndbunji();
						}
						%>
						<tr>
							<td><%=vo.getZipcode() %></td>
							<td>
								<a href="#" onclick
								="setZipcode('<%=vo.getZipcode()%>','<%=address%>')">
									<%=address %> <%=bunji %>
								</a>
							</td>
						</tr>
						<%
					}
				}
				%>
			<!-- 반복 끝 -->
			</tbody>
		</table>
	<%} %>
</body>
</html>