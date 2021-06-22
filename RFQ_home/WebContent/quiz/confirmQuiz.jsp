<%@page import="com.quiz.model.GetPointDAO"%>
<%@page import="com.quiz.model.QuizService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String c_userid = (String)session.getAttribute("userid");
boolean c_login = false;
if(c_userid!=null && !c_userid.isEmpty()){ //세션에 값이 있으면
	c_login = true; //로그인이 된 경우
}



String category = request.getParameter("category");
String r_category="";

if(category.equals("1")){
	r_category="영화";	
}else if(category.equals("2")){
	r_category="역사";	
}else if(category.equals("3")){
	r_category="스포츠";	
}else if(category.equals("4")){
	r_category="게임";	
}else if(category.equals("5")){
	r_category="상식";	
}else if(category.equals("6")){
	r_category="학습";	
}else if(category.equals("7")){
	r_category="연예인";	
}else if(category.equals("8")){
	r_category="스포츠";	
}
%>
<!DOCTYPE html>
<html>
<head>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script> 
    <link rel="stylesheet" href="../assets/css/main.css" />
    <title>Home</title>
    
    <style type="text/css">
    @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
    #popupDiv {  /* 팝업창 css */
    top : 0px;
    position: absolute;
   background: white;
    width:700px;
    height: 500px;
    display: none; 
    }
    
    #popup_mask { /* 팝업 배경 css */
        position: fixed;
        width: 100%;
        height: 1000px;
        top: 0px;
        left: 0px;
         display: none; 
         background-color:#000;
         opacity: 0.8;
    }
    
    #popupHeader{
		text-align: center;
		padding-top: 40px;
		padding-bottom: 10px;
    }
    
    .con{
    	margin: 20px 0px;
    }
    
    h1, h2, .con{
    font-family: 'Nanum Gothic', sans-serif;
    }
    
    h2{
    	font-weight: bold;
    }
    </style>
</head>
<body>
    
 
    <div id ="popup_mask" ></div> <!-- 팝업 배경 DIV -->
    
    <div id="popupDiv"> <!-- 팝업창 -->
        <section id="features">
			<div class="container">
				<div class="inner">
					<header id="popupHeader">
						<h1>Ready For Quiz?</h1>
						<h2><%=r_category%>퀴즈를 시작하시겠습니까?</h2>
					</header>
					<section>
						<div class="con">
							<button id="ok">네네네네네!!!!</button>
						</div>
						<div class="con">
							<button id="can">다음에 할래요</button>
						</div>
					</section>

				</div>
			</div>
		</section>
    </div>
        
    </div>
    
    <script>
    
    $(function(){
        
 
             $("#popupDiv").css({
                "top": (($(window).height()-$("#popupDiv").outerHeight())/2+$(window).scrollTop())+"px",
                "left": (($(window).width()-$("#popupDiv").outerWidth())/2+$(window).scrollLeft())+"px"
                //팝업창을 가운데로 띄우기 위해 현재 화면의 가운데 값과 스크롤 값을 계산하여 팝업창 CSS 설정
             
             }); 
            
            $("#popup_mask").css("display","block"); //팝업 뒷배경 display block
            $("#popupDiv").css("display","block"); //팝업창 display block
            
            $("body").css("overflow","hidden");//body 스크롤바 없애기
        
        
        $('#ok').click(function(){
        	if(<%=c_login%>){
	        	location.href="selectLevel.jsp?category=<%=category%>";
        	}else{
        		alert('로그인이 필요합니다');
        		location.href="../member/login.jsp"
        	}
        });
        $('#can').click(function(){
        	location.href="quizMain.jsp";
        })
     
    
    });
 
 
    </script>
</body>
</html>
</body>
</html>