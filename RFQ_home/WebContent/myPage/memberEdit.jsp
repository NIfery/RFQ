<%@page import="java.sql.SQLException"%>
<%@page import="com.member.model.MemberService"%>
<%@page import="com.member.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String userid = (String)session.getAttribute("userid");
	MemberVO vo = new MemberVO();
	MemberService memberService = new MemberService();
	
	String hp1="", hp2="", hp3="";
	String email1="", email2="";
	String[] emailList={"naver.com", "hanmail.net","nate.com","gmail.com"};
	boolean isEtc=false;
	int count=0;
	String zipcode="", address="";
	try{
		vo=memberService.selectByUserid(userid);
		
		String hp=vo.getHp();
		if(hp!=null && !hp.isEmpty()){
			String[] hpArr=hp.split("-");
			hp1=hpArr[0];
			hp2=hpArr[1];
			hp3=hpArr[2];			
		}
		
		zipcode=vo.getZipcode();
		address=vo.getAddress();
		if(zipcode==null) zipcode="";
		if(address==null) address="";
		
		String email=vo.getEmail();
		if(email!=null && !email.isEmpty()){
			String[] emailArr=email.split("@");
			email1 = emailArr[0];
		}
		
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="../assets/js/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#wr_submit').click(function(){
		if($('#pwd').val().length<1){
			alert('비밀번호를 입력하세요');
			$('#pwd').focus();
			event.preventDefault();
		}else if($('#pwd').val()!=$('#pwd2').val()){
			alert('비밀번호가 일치하지 않습니다.');
			$('#pwd2').focus();
			event.preventDefault();				
		}else if(!validate_hp($('#hp2').val()) 
				|| !validate_hp($('#hp3').val())){
			alert('전화번호는 숫자만 가능합니다.');
			$('#hp2').focus();
			event.preventDefault();
		}
	});
	
	window.changeEmail = function(){
		if($('#email2').val()=='etc'){
			$('#email3').val("");
			$('#email3').css('visibility','visible');
			$('#email3').focus();
		}else{
			$('#email3').css('visibility','hidden');
		}
	}
	
	window.chkZipcode = function(){
		window.open('../zipcode/zipcode.jsp','zipcodeChk','width=500,height=550,left=0,top=0,location=yes,resizable=yes');
	}
});	
</script>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../assets/css/main.css" />
<style type="text/css">
#formCon {
	position: relative;
	display: -webkit-inline-box;
}

button#btnZipcode {
	margin-bottom: 0;
}

input#pwd {
	width: 50%;
}

input#pwd2 {
	width: 50%;
}

input#address {
	width: 100%;
	margin-top: 5px;
	margin-bottom: 8px;
}

input#addressDetail {
	width: 100%;
}

.width_80 {
	width: 80px;
}

.width_350 {
	width: 350px;
}
</style>
<title>회원 정보 수정</title>
</head>
<body class="homepage is-preload">
	<div id="page-wrapper">

		<%@ include file="../inc/header.jsp"%>

		<!-- Main -->
		<section id="main_map">
			<div class="container" style="text-align: center;">
				<div id="map_title">
					<h2>
						<b>회원정보 수정</b>
					</h2>
				</div>
				<div id="formCon">
					<div style="text-align: justify;">
						<form name="edit" method="post" action="memberEdit_ok.jsp">
							<div>
								<label for="name">이름</label> <span><%=vo.getName() %></span>
							</div>
							<div>
								<label for="userid">아이디</label> <span><%=userid %></span>
							</div>
							<div>
								<label for="pwd">비밀번호</label> <input type="password" name="pwd"
									id="pwd">
							</div>
							<div>
								<label for="pwd2">비밀번호 확인</label> <input type="password"
									name="pwd2" id="pwd2">
							</div>
							<div>
								<label for="zipcode">주소</label> <input type="text"
									name="zipcode" id="zipcode" ReadOnly title="우편번호"
									class="width_80" value="<%=zipcode %>"> <input
									type="Button" value="우편번호 찾기" class="question" id="btnZipcode"
									title="새창열림" onclick="chkZipcode()"><br /> <span class="sp1">&nbsp;</span> <input
									type="text" name="address" ReadOnly title="주소"
									class="width_350" value="<%=address %>"><br /> <span
									class="sp1">&nbsp;</span>

							</div>
							<div>
								<label for="hp1">핸드폰</label>&nbsp;<select name="hp1" id="hp1"
									title="휴대폰 앞자리">
									<option value="010" <%if(hp1.equals("010")){ %>
										selected="selected" <%} %>>010</option>
									<option value="011" <%if(hp1.equals("011")){ %>
										selected="selected" <%} %>>011</option>
									<option value="016" <%if(hp1.equals("016")){ %>
										selected="selected" <%} %>>016</option>
									<option value="017" <%if(hp1.equals("017")){ %>
										selected="selected" <%} %>>017</option>
									<option value="018" <%if(hp1.equals("018")){ %>
										selected="selected" <%} %>>018</option>
									<option value="019" <%if(hp1.equals("019")){ %>
										selected="selected" <%} %>>019</option>
								</select> - <input type="text" name="hp2" id="hp2" maxlength="4"
									title="휴대폰 가운데자리" class="width_80" value="<%=hp2%>">- <input
									type="text" name="hp3" id="hp3" maxlength="4" title="휴대폰 뒷자리"
									class="width_80" value="<%=hp3%>">
							</div>
							<div>
							        <label for="email1">이메일 주소</label><br>
							        <input type="text" name="email1"  id="email1" title="이메일주소 앞자리" value="<%=email1%>">@
							        <select name="email2" id="email2"  title="이메일주소 뒷자리"
							        	onchange="changeEmail();">
							            <option value="naver.com">naver.com</option>
							            <option value="hanmail.net">hanmail.net</option>
							            <option value="nate.com">nate.com</option>
							            <option value="gmail.com">gmail.com</option>
							            <option value="etc">직접입력</option>
							        </select>
							        <input type="text" name="email3" id="email3" title="직접입력인 경우 이메일주소 뒷자리"
							        	style="visibility:hidden">
							    </div>
							<div class="center">
								<input type="submit" class="question" id="wr_submit" value="수정">
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>

		<%@ include file="../inc/footer.jsp"%>
	</div>

	<!-- Scripts -->
	<script src="<%=request.getContextPath() %>/assets/js/jquery.min.js"></script>
	<script src="../assets/js/jquery.dropotron.min.js"></script>
	<script src="../assets/js/browser.min.js"></script>
	<script src="../assets/js/breakpoints.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/main.js"></script>
</body>
</html>