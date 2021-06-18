<%@page import="com.quiz.model.QuizService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
QuizService qs = new QuizService();

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
    <title>Home</title>
    
    <style>
    
    
    #popupDiv {  /* 팝업창 css */
    top : 0px;
    position: absolute;
    background: white;
    width: 500px;
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
    
    </style>
</head>
<body>
    
 
    <div id ="popup_mask" ></div> <!-- 팝업 배경 DIV -->
    
    <div id="popupDiv"> <!-- 팝업창 -->
        <button id="popCloseBtn">닫기</button>
        <section id="features">
			<div class="container">
				<div class="inner">
					<header>
						<h1><%=r_category%>퀴즈를 시작하시겠습니까?
						</h1>
					</header>
					<section>
						<div>
							<button id="ok">녜</button>
							<button id="can">아니오</button>
						</div>
					</section>

				</div>
			</div>
		</section>
    </div>
        
    </div>
    
    <script>
    
    $(function(){
        
        /* $("#popOpenBtn").click(function(event){  */ //팝업 Open 버튼 클릭 시 
 
             $("#popupDiv").css({
                "top": (($(window).height()-$("#popupDiv").outerHeight())/2+$(window).scrollTop())+"px",
                "left": (($(window).width()-$("#popupDiv").outerWidth())/2+$(window).scrollLeft())+"px"
                //팝업창을 가운데로 띄우기 위해 현재 화면의 가운데 값과 스크롤 값을 계산하여 팝업창 CSS 설정
             
             }); 
            
            $("#popup_mask").css("display","block"); //팝업 뒷배경 display block
            $("#popupDiv").css("display","block"); //팝업창 display block
            
            $("body").css("overflow","hidden");//body 스크롤바 없애기
        /* }); */
        
        $("#popCloseBtn").click(function(event){
            $("#popup_mask").css("display","none"); //팝업창 뒷배경 display none
            $("#popupDiv").css("display","none"); //팝업창 display none
            $("body").css("overflow","auto");//body 스크롤바 생성
            location.href="quizMain.jsp";
        });
        
        $('#ok').click(function(){
        	location.href="selectLevel.jsp?category=<%=category%>";
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