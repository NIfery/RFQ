<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.BuyLIst.model.BuyListVO"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.giftcon.model.GiftconVO"%>
<%@page import="com.giftcon.model.PagingVO"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.member.model.MemberVO"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.BuyLIst.model.BuyListService"%>
<%@page import="java.util.List"%>
<%@page import="com.BuyLIst.model.BuyListVO"%>
<%@page import="com.quiz.model.GetPointDAO"%>
<%@page import="com.quiz.model.GetPointVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<jsp:useBean id="giftconService" class="com.giftcon.model.GiftconService" scope="session"></jsp:useBean>    
<jsp:useBean id="memberService" class="com.member.model.MemberService"
   scope="session"></jsp:useBean>
<jsp:useBean id="buylistService"
   class="com.BuyLIst.model.BuyListService" scope="session"></jsp:useBean>
<%
   String userid=request.getParameter("userid");
   String orderNo=request.getParameter("orderNo");
   
   GiftconVO vo=new GiftconVO();
   BuyListVO vo2=null;
   MemberVO vo3=new MemberVO();
   
   try{
      vo2=buylistService.selectByUserid(userid, Integer.parseInt(orderNo));
      vo=giftconService.selectByNo(vo2.getGiftconNo());
   }catch(SQLException e){
      e.printStackTrace();
   }
   
   GetPointVO gVo = new GetPointVO();
   GetPointDAO dao = new GetPointDAO();
   List<BuyListVO> list=null;
   int bal=0;
   
   //to-do : 포인트 사용내역 적립내용 뿌리기
      try{
         gVo=dao.selectPoint(userid);
         vo2=buylistService.recentBuy(userid);
         list=buylistService.selectBuyList(userid);
         vo3=memberService.selectPoint(userid);
      }catch(SQLException e){
         e.printStackTrace();
      }

      //적립, 사용, 잔여 포인트
      int getP=gVo.getGetPoint();
      int outP=vo2.getOutPoint();
      
      DecimalFormat df=new DecimalFormat();
      SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이 페이지</title>
<link rel="stylesheet" href="../assets/css/main.css" />
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
   href="../assets/mazer-main/dist/assets/images/favicon.svg" type="image/x-icon">
<link rel="stylesheet"
   href="../assets/css/layout.css">
</head>
<style>

</style>
<body>
<div id="page-wrapper">
   <div id="app">
      <div id="sidebar" class="active">
         <div class="sidebar-wrapper active">
            <div class="sidebar-header">
               <div class="d-flex justify-content-between">
                  <div class="logo">
                     <a href="../index.jsp"><img
                        src="../assets/mazer-main/dist/assets/images/logo/logo.png"
                        alt="Logo" srcset=""></a>
                  </div>
                  <div class="toggler">
                     <a href="#" class="sidebar-hide d-xl-none d-block"><i
                        class="bi bi-x bi-middle"></i></a>
                  </div>
               </div>
            </div>
            <div class="sidebar-menu">
               <ul class="menu">
                  <li class="sidebar-title">Menu</li>

                  <li class="sidebar-item  "><a href="myPageMain2.jsp?userid=<%=userid %>"
                     class='sidebar-link'> <i class="bi bi-grid-1x2-fill"></i> <span>마이페이지 홈
                           </span>
                  </a></li>

                  <li class="sidebar-item  "><a href="memberEdit.jsp"
                     class='sidebar-link'> <i class="bi bi-grid-1x2-fill"></i> <span>회원정보
                           수정</span>
                  </a></li>

                  
                  <li class="sidebar-item  "><a href="memberOut.jsp"
                     class='sidebar-link'> <i class="bi bi-grid-1x2-fill"></i> <span>회원탈퇴</span>
                  </a></li>


                  
            </div>
            <button class="sidebar-toggler btn x">
               <i data-feather="x"></i>
            </button>
         </div>
      </div>
      <div id="main">
         <header class="mb-3">
            <a href="#" class="burger-btn d-block d-xl-none"> <i
               class="bi bi-justify fs-3"></i>
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
                              <img src="../assets/mazer-main/dist/assets/images/faces/1.jpg"
                                 alt="Face 1">
                           </div>
                           <div class="ms-3 name">
                              <h5 class="font-bold"><%=userid %></h5>
                              <h6 class="text-muted mb-0">
                                 @<%=userid %></h6>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-12 col-xs-3">
                     <div class="row">
                        <div class="col-4">
                           <div class="card">
                              <div class="card-body px-3 py-4-5">
                                 <div class="row">
                                    <div class="col-md-3">
                                       <div class="stats-icon purple">
                                          <i class="iconly-boldShow"></i>
                                       </div>
                                    </div>
                                    <div class="col-md-8">
                                       <h6 class="text-muted font-semibold">퀴즈 획득 포인트</h6>
                                       <h6 class="font-extrabold mb-0"><%= getP %> Point</h6>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-4">
                           <div class="card">
                              <div class="card-body px-3 py-4-5">
                                 <div class="row">
                                    <div class="col-md-3">
                                       <div class="stats-icon blue">
                                          <i class="iconly-boldProfile"></i>
                                       </div>
                                    </div>
                                    <div class="col-md-8">
                                       <h6 class="text-muted font-semibold">퀴즈 성공</h6>
                                       <h6 class="font-extrabold mb-0"><%=gVo.getAddList() %> 개</h6>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-4">
                           <div class="card">
                              <div class="card-body px-3 py-4-5">
                                 <div class="row">
                                    <div class="col-md-3">
                                       <div class="stats-icon green">
                                          <i class="iconly-boldAdd-User"></i>
                                       </div>
                                    </div>
                                    <div class="col-md-8">
                                       <h6 class="text-muted font-semibold">현재 보유 포인트</h6>
                                       <h6 class="font-extrabold mb-0"><%=df.format(vo3.getPoint())%> Point</h6>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
         <section class="section">
                <div class="row" id="basic-table">
                    <div class="col-12 col-xs-1">
                       <div class="card">
                  <h4 class="card-title">주문 상세 내역</h4>
                  <div class="status"></div>
                  <div class="giftCon_d">
                     <table class="table table-lg">
                        <colgroup>
                           <col style="width: 30%;" />
                           <col style="width: 40%;" />
                           <col style="width: 30%;" />
                        </colgroup>
                        <tbody>
                           <tr>
                              <th colspan="2" scope="col" style="font-size: 1.2em">기프티콘 상세 정보</th>
                              <th scope="col" style="font-size: 1.2em">판매자</th>
                           </tr>
                           <tr>
                              <td id="giftImg" rowspan="3">
                                 <img src="../images/product/<%=vo.getImage()%>.PNG" style="width: 285px; height: 285px">
                              </td>
                              <td id="detail" style="height: 150px">
                                 <p id="tag" style="margin-bottom: 10px">[RFQ-GiftCon]</p>
                                 <p style="font-size: 1.2em; margin-bottom: 10px"><%=vo.getName()%></p>
                                 <p style="margin-bottom: 10px"><%=vo.getDetail()%></p>
                              </td>
                              <td id="seller"><%=vo.getSeller()%></td>
                           </tr>
                           <tr>
                              <th scope="col" style="font-size: 1.2em">쿠폰번호</th>
                              <th scope="col" style="font-size: 1.2em">유효기간</th>
                           </tr>
                           <tr style="text-align: center">
                              <td><span>1265-4601-1253-6543</span></td>
                              <td style="text-align: center"><span><%=sdf.format(vo.getExdate()) %></span></td>
                           </tr>
                        </tbody>
                     </table>
                  </div>
                  <br>
               </div>
                  </div>
               </div>
            </div>
         </section>
         <footer>
            <div class="footer clearfix mb-0 text-muted">
               <div class="float-start">
                  <p>2021 &copy; RFQ</p>
               </div>
               <div class="float-end">
                  <p>
                     Crafted with <span class="text-danger"><i
                        class="bi bi-heart"></i></span> by <a href="http://ahmadsaugi.com">아이티윌 6조</a>
                  </p>
               </div>
            </div>
         </footer>
      </div>
   </div>
   </div>
   </div>
   <script
      src="../assets/mazer-main/dist/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
   <script
      src="../assets/mazer-main/dist/assets/js/bootstrap.bundle.min.js"></script>

   <script
      src=".../assets/mazer-main/dist/assets/vendors/apexcharts/apexcharts.js"></script>
   <script src="../assets/mazer-main/dist/assets/js/pages/dashboard.js"></script>

   <script src="../assets/mazer-main/dist/assets/js/main.js"></script>
</body>
</html>