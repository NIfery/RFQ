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
<jsp:useBean id="memberService" class="com.member.model.MemberService"
	scope="session"></jsp:useBean>
<jsp:useBean id="buylistService"
	class="com.BuyLIst.model.BuyListService" scope="session"></jsp:useBean>
<%
	System.out.println();
	String userid=request.getParameter("userid");
	System.out.println("userid="+userid);
	
	GetPointVO vo = new GetPointVO();
	GetPointDAO dao = new GetPointDAO();
	BuyListVO vo2=new BuyListVO();
	List<BuyListVO> list=null;
	int bal=0;
	
	//to-do : 포인트 사용내역 적립내용 뿌리기
	   try{
		   vo=dao.selectPoint(userid);
		   list=buylistService.selectBuyList(userid);		   
		   vo2=buylistService.recentBuy(userid);
		   bal=memberService.selectPoint(userid);
	   }catch(SQLException e){
		   e.printStackTrace();
	   }

	   //적립, 사용, 잔여 포인트
	   int getP=vo.getGetPoint();
	   int outP=vo2.getOutPoint();
	   
	   DecimalFormat df=new DecimalFormat();
	   
	   //페이징 처리
		int currentPage=1; 
		
		if(request.getParameter("currentPage") !=null ){
			currentPage=Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int totalRecord = 0; 
		if(list !=null && !list.isEmpty()){
			totalRecord=list.size();
		}
		int pageSize=5;  
		int blockSize=10; 
		
		PagingVO pageVo=new PagingVO(currentPage, totalRecord, pageSize, blockSize);
%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이페이지</title>

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
</head>
<style>

</style>
<body>
<div id="page-wrapper">
<%@ include file="../inc/header.jsp"%>
	<div id="app">
		<div id="sidebar" class="active">
			<div class="sidebar-wrapper active">
				<div class="sidebar-header">
					<div class="d-flex justify-content-between">
						<div class="logo">
							<a href="myPageMain.jsp?userid=<%=userid%>"><img
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

						<li class="sidebar-item  "><a href="table.html"
							class='sidebar-link'> <i class="bi bi-grid-1x2-fill"></i> <span>회원정보
									확인</span>
						</a></li>

						<li class="sidebar-item  "><a href="memberEdit.jsp"
							class='sidebar-link'> <i class="bi bi-grid-1x2-fill"></i> <span>회원정보
									수정</span>
						</a></li>

						<li class="sidebar-item  "><a href="searchIdPwd.jsp"
							class='sidebar-link'> <i class="bi bi-grid-1x2-fill"></i> <span>아이디/비밀번호
									찾기</span>
						</a></li>


						<li class="sidebar-item  "><a href="memberOut.jsp"
							class='sidebar-link'> <i class="bi bi-grid-1x2-fill"></i> <span>회원탈퇴</span>
						</a></li>


						<li class="sidebar-title">Raise Support</li>

						<li class="sidebar-item  "><a
							href="https://zuramai.github.io/mazer/docs" class='sidebar-link'>
								<i class="bi bi-life-preserver"></i> <span>Documentation</span>
						</a></li>

						<li class="sidebar-item  "><a
							href="https://github.com/zuramai/mazer/blob/main/CONTRIBUTING.md"
							class='sidebar-link'> <i class="bi bi-puzzle"></i> <span>Contribute</span>
						</a></li>

						<li class="sidebar-item  "><a
							href="https://github.com/zuramai/mazer#donate"
							class='sidebar-link'> <i class="bi bi-cash"></i> <span>Donate</span>
						</a></li>

					</ul>
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
												<div class="col-md-4">
													<div class="stats-icon blue">
														<i class="iconly-boldProfile"></i>
													</div>
												</div>
												<div class="col-md-8">
													<h6 class="text-muted font-semibold">퀴즈 성공</h6>
													<h6 class="font-extrabold mb-0"><%=vo.getAddList() %> 개</h6>
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
													<h6 class="text-muted font-semibold">주문 상품</h6>
													<h6 class="font-extrabold mb-0"><%=list.size() %> 개</h6>
												</div>
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
													<div class="stats-icon purple">
														<i class="iconly-boldAdd-User"></i>
													</div>
												</div>
												<div class="col-md-8">
													<h6 class="text-muted font-semibold">현재 보유 포인트</h6>
													<h6 class="font-extrabold mb-0"><%=df.format(bal)%> Point</h6>
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
                                <div class="card-header">
											<h4 class="card-title">포인트 사용 내역</h4>
								</div>
								<div class="card-content">
                                    <div class="card-body">
                                    	 <div class="table-responsive">
											<table class="table table-lg">
												<colgroup>
													<col style="width: 20%;" />
													<col style="width: 20%;" />
													<col style="width: 20%;" />
													<col style="width: 20%;" />
													<col style="width: 20%;" />
												</colgroup>
												<thead>
													<tr>
														<th scope="col">주문번호</th>
														<th scope="col">아이디</th>
														<th scope="col">기프트콘 번호</th>
														<th scope="col">차감포인트</th>
														<th scope="col">잔여포인트</th>
													</tr>
												</thead>
												<tbody>
													<%if(list==null || list.isEmpty()) {%>
													<tr>
														<td colspan="5" class="noData" style="text-align: center" class="text-bold-500">구매하신
															내역이 없습니다.</td>
													</tr>
													<%}else{ %>
														<%
														int num=pageVo.getNum();
														int curPos=pageVo.getCurPos();
														
														for(int i=0; i<pageVo.getPageSize(); i++){ 
															if(num<1) break;
												   			BuyListVO vo3=list.get(curPos++);
												   			num--;
												   		%>
													<tr>
														<td class="text-bold-500">
														<a href="orderDetail.jsp?userid=<%=userid%>&orderNo=<%=vo3.getNo()%>">
															<%=vo3.getNo() %></a></td>
														<td class="text-bold-500"><%=vo3.getUserid() %></td>
														<td class="text-bold-500"><%=vo3.getGiftconNo() %></td>
														<td class="text-bold-500"><%=df.format(vo3.getOutPoint()) %> Point</td>
														<td class="text-bold-500"><%=df.format(vo3.getBalance()) %> Point</td>
													</tr>
													<%} //for %>
												<%} //if %>
												</tbody>
											</table>
											<div class="divPage" style="text-align: center">
												<!-- 이전 블럭 -->
												<%if(pageVo.getFirstPage()>1){ %>
													<a href="myPageMain2.jsp?currentPage=<%=pageVo.getFirstPage()-1%>&userid=<%=userid%>">
														<img src="../images/first.png" alt="이전 블럭으로">
													</a>
												<%}//if %>
																	
												<!-- 넘버링 -->
												<%
													for(int i=pageVo.getFirstPage();i<=pageVo.getLastPage();i++){
														if(i>pageVo.getTotalPage()) break;
														
														if(i == currentPage){%>
															<span style="color : blue; font-weight : bold; text-align: center"><%=i %></span>
														<%}else{ %>
															<a href	= "myPageMain2.jsp?currentPage=<%=i%>&userid=<%=userid%>">[<%=i %>]</a>
														<%}//if %>	
													<%}//for %>
												<!-- 다음 블럭 -->
												<%if(pageVo.getLastPage() < pageVo.getTotalPage()){ %>
													<a href="myPageMain2.jsp?currentPage=<%=pageVo.getLastPage()+1%>&userid=<%=userid%>">
														<img src="../images/last.png" alt="다음 블럭으로">
													</a>
												<%}//if %>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<footer>
				<div class="footer clearfix mb-0 text-muted">
					<div class="float-start">
						<p>2021 &copy; Mazer</p>
					</div>
					<div class="float-end">
						<p>
							Crafted with <span class="text-danger"><i
								class="bi bi-heart"></i></span> by <a href="http://ahmadsaugi.com">A.
								Saugi</a>
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