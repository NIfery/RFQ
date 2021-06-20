<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
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
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="popup_mask"></div>
	<div id="popupDiv">
		<H1></H1>
	</div>
	<div>
		<button id="next">다음문제</button>
		</div>
</body>
</html>