<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String t_userid = (String)session.getAttribute("userid");
	boolean t_login = false;
	if(t_userid!=null && !t_userid.isEmpty()){ //세션에 값이 있으면
		t_login = true; //로그인이 된 경우
	}
%>
<!-- Header -->
				<section id="header">
					<div class="container">

						<!-- Logo -->
							<h1 id="logo"><a href="<%=request.getContextPath()%>/index.jsp">Ready For the Quiz?</a></h1>
							<p>A responsive HTML5 site template. Manufactured by HTML5 UP.</p>

						<!-- Nav -->
							<nav id="nav">
								<ul>
									<li><a href="<%=request.getContextPath()%>/index.jsp" class="icon solid fa-home"><span>Home</span></a></li>
									<li>
										<a href="<%=request.getContextPath()%>/quiz/quizMain.jsp" class="icon fa-chart-bar"><span>퀴즈</span></a>
										<ul>
											<li><a href="<%=request.getContextPath()%>/quiz/quizMain.jsp">전체보기</a></li>
											<li><a href="#">&nbsp;&nbsp;&nbsp;영화</a></li>
											<li><a href="#">&nbsp;&nbsp;&nbsp;역사</a></li>
											<li><a href="#">&nbsp;&nbsp;&nbsp;스포츠</a></li>
											<li><a href="#">&nbsp;&nbsp;&nbsp;게임</a></li>
											<li><a href="#">&nbsp;&nbsp;&nbsp;상식</a></li>
											<li><a href="#">&nbsp;&nbsp;&nbsp;학습</a></li>
											<li><a href="#">&nbsp;&nbsp;&nbsp;연예인</a></li>
											<li><a href="#">&nbsp;&nbsp;&nbsp;신조어</a>
												<!-- <a href="#">Phasellus consequat</a>
												<ul>
													<li><a href="#">Magna phasellus</a></li>
													<li><a href="#">Etiam dolore nisl</a></li>
													<li><a href="#">Phasellus consequat</a></li>
												</ul> -->
											</li>
										</ul>
									</li>
									<li><a href="<%=request.getContextPath() %>/giftcon/giftconCon.jsp" class="icon solid fa-cog"><span>기프티콘</span></a></li>
									<li><a href="#" class="icon solid fa-retweet"><span>이용안내</span></a></li>
									<li><a href="<%=request.getContextPath() %>/etc/customer.jsp" class="icon solid fa-sitemap"><span>고객센터</span></a></li>
								</ul>
							</nav>
								<nav id="nav2">
									<ul>
										<%if(!t_login){ %>			
											<li><a href="<%=request.getContextPath() %>/member/login.jsp"><span>LOGIN</span></a></li>
											<li><a href="<%=request.getContextPath() %>/member/agreement.jsp"><span>JOIN</span></a></li>           
										<%}else{ %>
											<li><a href="<%=request.getContextPath() %>/member/logout.jsp"><span>LOGOUT</span></a></li>
											<li><a href="#"><span>MYPAGE</span></a></li>	            
										<%} %>
									</ul>
								</nav>							
					</div>
				</section>
    