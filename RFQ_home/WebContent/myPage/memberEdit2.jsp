<%@page import="com.member.model.MemberService"%>
<%@page import="com.member.model.MemberVO"%>
<%@page import="java.sql.SQLException"%>
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
	
});	
</script>

<head>

<meta charset="UTF-8">
<title>회원정보 수정</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="../assets/mazer-main/dist/assets/css/bootstrap.css">

<link rel="stylesheet"
	href="../assets/mazer-main/dist/assets/iconly/bold.css">

<link rel="stylesheet"
	href="../assets/mazer-main/dist/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet"
	href="../assets/mazer-main/dist/assets/vendors/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet"
	href="../assets/mazer-main/dist/assets/css/app.css">
<link rel="shortcut icon"
	href=../assets/mazer-main/dist/assets/images/favicon.svg
	" type="image/x-icon">
<link rel="stylesheet" href="../assets/css/main.css" />
<style type="text/css">
.edit{
	margin-left: 25%;
}

body{
	background-color: white;
}

.form-check-input:checked {
    background-color: #ed786a;
    border-color: #ed786a;
}

.btn-primary {
	color: white;
    background-color: #ed786a;
    border-color: #ed786a;
}
.form-control2{
    display: block;
    width: 30%;
    padding: .375rem .75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #607080;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #dce7f1;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border-radius: .25rem;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}
</style>
</head>

<body>
		<%@ include file="../inc/header.jsp"%>
		<section id="basic-vertical-layouts"class="edit">
			<div class="row match-height">
				<div class="col-xs-4 col-8" >
					<div class="card">
						<div class="card-header">
							<h3 class="card-title">회원정보 수정</h3>
						</div>
						<div class="card-content">
							<div class="card-body">
								<form class="form form-vertical">
									<div class="form-body">
										<div class="row">
											<div class="col-12">
												<div class="form-group">
													<label for="first-name-vertical">이름</label> <span
														id="first-name-vertical" class="form-control"
														name="fname"><%=vo.getName()%></span>
												</div>
											</div>
											<div class="col-12">
												<div class="form-group">
													<label for="first-name-vertical">아이디</label> <span
														id="first-name-vertical" class="form-control"
														name="fname"><%=userid%></span>
												</div>
											</div>
											<div class="col-12">
												<div class="form-group">
													<label for="password-vertical">비밀번호</label> <input
														type="password" id="password-vertical"
														class="form-control" name="contact" placeholder="Password">
												</div>
											</div>
											<div class="col-12">
												<div class="form-group">
													<label for="password-vertical">비밀번호 확인</label> <input
														type="password" id="password-vertical"
														class="form-control" name="contact">
												</div>
											</div>
											<div class="col-12">
												<div class="form-group">
													<label for="email-id-vertical">주소</label> 
													<input type="text" name="zipcode" id="zipcode" ReadOnly title="우편번호" class="form-control2" value="<%=zipcode %>"> 
									<button class="btn btn-primary me-1 mb-1" id="btnZipcode" title="새창열림">우편번호 찾기</button>
								<br /> <span class="sp1">&nbsp;</span> <input
									type="text" name="address" ReadOnly title="주소"
									class="form-control3" value="<%=address %>"><br /> <span
									class="sp1">&nbsp;</span>
												</div>
											</div>
											<div class="col-12">
												<div class="form-group">
													<label for="email-id-vertical">Email</label> <input
														type="email" id="email-id-vertical" class="form-control"
														name="email-id" placeholder="Email">
												</div>
											</div>
											<div class="col-12">
												<div class="form-group">
													<label for="contact-info-vertical">Mobile</label> <input
														type="number" id="contact-info-vertical"
														class="form-control" name="contact" placeholder="Mobile">
												</div>
											</div>
											
											<div class="col-12 d-flex justify-content-end">
												<button type="submit" class="btn btn-primary me-1 mb-1">Submit</button>
												<button type="reset"
													class="btn btn-light-secondary me-1 mb-1">Reset</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			</section>
</body>
</html>