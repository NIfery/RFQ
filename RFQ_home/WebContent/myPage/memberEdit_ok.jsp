<%@page import="java.sql.SQLException"%>
<%@page import="com.member.model.MemberVO"%>
<%@page import="com.member.model.MemberService"%>
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
	MemberService memberService = new MemberService();
	MemberVO vo = new MemberVO();
	
	request.setCharacterEncoding("utf-8");
	String pwd=request.getParameter("pwd");
	String zipcode=request.getParameter("zipcode");
	String address=request.getParameter("address");
	String hp1=request.getParameter("hp1");
	String hp2=request.getParameter("hp2");
	String hp3=request.getParameter("hp3");
	String email1=request.getParameter("email1");
	String email2=request.getParameter("email2");
	String email3=request.getParameter("email3");

	String userid=(String)session.getAttribute("userid");
	
	String email="", hp="";
	if(hp2!=null && !hp2.isEmpty() && hp3!=null && !hp3.isEmpty()){
		hp=hp1+"-"+hp2+"-"+hp3;
	}
	
	if(email1!=null && !email1.isEmpty()){
		if(email2.equals("etc")){
			if(email3!=null && !email3.isEmpty()){
				email=email1+"@"+email3;
			}
		}else{
			email=email1+"@"+email2;			
		}
	}
	
	vo.setAddress(address);
	vo.setEmail(email);
	vo.setHp(hp);
	vo.setPwd(pwd);
	vo.setUserid(userid);
	vo.setZipcode(zipcode);
	
	String msg="비밀번호 체크 실패", url="/myPage/myPageMain2.jsp?userid="+userid;
	try{
		
		int result=memberService.loginProc(userid, pwd);
		if(result==MemberService.LOGIN_OK){
			int cnt=memberService.updateMember(vo);
			if(cnt>0){
				msg="회원정보 수정되었습니다.";
			}else{
				msg="회원정보 수정 실패!";
			}
		}else if(result==MemberService.PWD_DISAGREE){
			msg="비밀번호가 일치하지 않습니다";
		}
		
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	//3
	request.setAttribute("msg", msg);
	request.setAttribute("url", url);
%>
<jsp:forward page="../common/message.jsp"></jsp:forward>
</body>
</html>