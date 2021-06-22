<%@page import="com.quiz.model.GetPointDAO"%>
<%@page import="com.quiz.model.GetPointVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid = (String)session.getAttribute("userid");
	GetPointVO vo = new GetPointVO();
	GetPointDAO dao = new GetPointDAO();
	
	vo=dao.selectPoint(userid);
	int points=vo.getGetPoint();
%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../assets/mazer-main/dist/assets/css/bootstrap.css">

    <link rel="stylesheet" href="../assets/mazer-main/dist/assets/iconly/bold.css">

    <link rel="stylesheet" href="../assets/mazer-main/dist/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="../assets/mazer-main/dist/assets/vendors/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" href="../assets/mazer-main/dist/assets/css/app.css">
    <link rel="shortcut icon" href=../assets/mazer-main/dist/assets/images/favicon.svg" type="image/x-icon">
</head>

<body>
    <div id="app">
        <div id="sidebar" class="active">
            <div class="sidebar-wrapper active">
                <div class="sidebar-header">
                    <div class="d-flex justify-content-between">
                        <div class="logo">
                            <a href="myPageMain.jsp?userid=<%=userid%>"><img src="../assets/mazer-main/dist/assets/images/logo/logo.png" alt="Logo" srcset=""></a>
                        </div>
                        <div class="toggler">
                            <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
                        </div>
                    </div>
                </div>
                <div class="sidebar-menu">
                    <ul class="menu">
                        <li class="sidebar-title">Menu</li>

						<li class="sidebar-item  ">
                            <a href="table.html" class='sidebar-link'>
                                <i class="bi bi-grid-1x2-fill"></i>
                                <span>회원정보 확인</span>
                            </a>
                        </li>
                        
                        <li class="sidebar-item  ">
                            <a href="memberEdit.jsp" class='sidebar-link'>
                                <i class="bi bi-grid-1x2-fill"></i>
                                <span>회원정보 수정</span>
                            </a>
                        </li>

						<li class="sidebar-item  ">
                            <a href="searchIdPwd.jsp" class='sidebar-link'>
                                <i class="bi bi-grid-1x2-fill"></i>
                                <span>아이디/비밀번호 찾기</span>
                            </a>
                        </li>
                        
                        
						<li class="sidebar-item  ">
                            <a href="memberOut.jsp" class='sidebar-link'>
                                <i class="bi bi-grid-1x2-fill"></i>
                                <span>회원탈퇴</span>
                            </a>
                        </li>
                        

                        <li class="sidebar-title">Raise Support</li>

                        <li class="sidebar-item  ">
                            <a href="https://zuramai.github.io/mazer/docs" class='sidebar-link'>
                                <i class="bi bi-life-preserver"></i>
                                <span>Documentation</span>
                            </a>
                        </li>

                        <li class="sidebar-item  ">
                            <a href="https://github.com/zuramai/mazer/blob/main/CONTRIBUTING.md" class='sidebar-link'>
                                <i class="bi bi-puzzle"></i>
                                <span>Contribute</span>
                            </a>
                        </li>

                        <li class="sidebar-item  ">
                            <a href="https://github.com/zuramai/mazer#donate" class='sidebar-link'>
                                <i class="bi bi-cash"></i>
                                <span>Donate</span>
                            </a>
                        </li>

                    </ul>
                </div>
                <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
            </div>
        </div>
        <div id="main">
            <header class="mb-3">
                <a href="#" class="burger-btn d-block d-xl-none">
                    <i class="bi bi-justify fs-3"></i>
                </a>
            </header>

			<!-- 가운데 -->
            <div class="page-heading">
                <h3>My Page</h3>
            </div>
            <div class="page-content">
                <section class="row">
                    <div class="col-12 col-xs-1">
                        <div class="card">
                            <div class="card-body py-4 px-5">
                                <div class="d-flex align-items-center">
                                    <div class="avatar avatar-xl">
                                        <img src="../assets/mazer-main/dist/assets/images/faces/1.jpg" alt="Face 1">
                                    </div>
                                    <div class="ms-3 name">
                                        <h5 class="font-bold"><%=userid %></h5>
                                        <h6 class="text-muted mb-0">@<%=userid %></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                     <div class="col-12 col-xs-4">
                        <div class="row">
                            <div class="col-4">
                                <div class="card">
                                    <div class="card-body px-3 py-4-5">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="stats-icon purple">
                                                    <i class="iconly-boldShow"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <h6 class="text-muted font-semibold">획득 포인트</h6>
                                                <h6 class="font-extrabold mb-0">112.000 point</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="card">
                                    <div class="card-body px-3 py-4-5">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="stats-icon blue">
                                                    <i class="iconly-boldProfile"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <h6 class="text-muted font-semibold">결제한 상품</h6>
                                                <h6 class="font-extrabold mb-0">183.000 개</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="card">
                                    <div class="card-body px-3 py-4-5">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="stats-icon green">
                                                    <i class="iconly-boldAdd-User"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <h6 class="text-muted font-semibold">푼 퀴즈</h6>
                                                <h6 class="font-extrabold mb-0"><%=vo.getAddList() %> 개</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h4>여기에 결제 내역</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
            </div>

            <footer>
                <div class="footer clearfix mb-0 text-muted">
                    <div class="float-start">
                        <p>2021 &copy; Mazer</p>
                    </div>
                    <div class="float-end">
                        <p>Crafted with <span class="text-danger"><i class="bi bi-heart"></i></span> by <a
                                href="http://ahmadsaugi.com">A. Saugi</a></p>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="../assets/mazer-main/dist/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="../assets/mazer-main/dist/assets/js/bootstrap.bundle.min.js"></script>

    <script src=".../assets/mazer-main/dist/assets/vendors/apexcharts/apexcharts.js"></script>
    <script src="../assets/mazer-main/dist/assets/js/pages/dashboard.js"></script>

    <script src="../assets/mazer-main/dist/assets/js/main.js"></script>
</body>

</html>