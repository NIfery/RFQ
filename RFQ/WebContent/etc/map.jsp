<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>RFQ</title>
<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		
		<!-- swiper -->
		<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
		<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
		
		<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
		<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
				
		<script type="text/javascript" src="../assets/js/jquery.min.js"></script>
		<script type="text/javascript">
			
		</script>
		
		<!-- 사용자 정의 css -->
		<style type="text/css">
			
		</style>
	</head>
	<body class="homepage is-preload">
		<div id="page-wrapper">

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
										<a href="#" class="icon fa-chart-bar"><span>퀴즈</span></a>
										<ul>
											<li><a href="#">전체보기</a></li>
											<li><a href="#">&nbsp;&nbsp;&nbsp;영화</a></li>
											<li><a href="#">&nbsp;&nbsp;&nbsp;넌센스</a></li>
											<li><a href="#">&nbsp;&nbsp;&nbsp;상식</a></li>
											<li><a href="#">&nbsp;&nbsp;&nbsp;사자성어</a>
												<!-- <a href="#">Phasellus consequat</a>
												<ul>
													<li><a href="#">Magna phasellus</a></li>
													<li><a href="#">Etiam dolore nisl</a></li>
													<li><a href="#">Phasellus consequat</a></li>
												</ul> -->
											</li>
										</ul>
									</li>
									<li><a href="#" class="icon solid fa-cog"><span>기프티콘</span></a></li>
									<li><a href="#" class="icon solid fa-retweet"><span>이용안내</span></a></li>
									<li><a href="<%=request.getContextPath() %>/etc/customer.jsp" class="icon solid fa-sitemap"><span>고객센터</span></a></li>
								</ul>
							</nav>
							<nav id="nav2">
								<ul>
									<li><a href="#"><span>LOGIN</span></a></li>
									<li><a href="#"><span>JOIN</span></a></li>
								</ul>
							</nav>							
					</div>
				</section>

			
			
			<!-- Main -->
				<section id="main_map">
					<div class="container" style="text-align:center;">
						<div id="map_title">
							<h2><b>오시는길</b></h2>
						</div>
						<div id="map" style="width:100%;height:700px;"></div>
						<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=225f070ac93da60529e74683aea1205f"></script>
						<script>
							var container = document.getElementById('map');
							var options = {
								center: new kakao.maps.LatLng(37.49888, 127.03180),
								level: 3
							};
							//지도생성
							var map = new kakao.maps.Map(container, options);
							//지도 마커
							var marker = new kakao.maps.Marker({ 
							    position: map.getCenter() 
							}); 
							marker.setMap(map);
							kakao.maps.event.addListener(marker, 'click', function() {
								window.open("https://map.kakao.com/link/to/아이티윌,37.49888,127.03180","_blank");
							});
							//확대축소 컨트롤
							var zoomControl = new kakao.maps.ZoomControl();
							map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
						</script>
						
						<!-- way_info -->
						<div class="container" style="border-bottom:1px dotted #888;padding-bottom:2em;">
							<div class="row" style="width:100%;padding-right:0;">
						 		<div class="col-4 col-6-medium col-12-small" style="width:50%;">
								<!-- Feature -->
									<section>
										<h4 style="margin-top:2em;display:inline-block;">주소</h4>
										<span style="margin-left: 2em;font-size:0.9em">서울특별시 강남구 테헤란로 124( 역삼동,삼원타워 ) 4층</span>
									</section>
								</div>
								<div class="col-4 col-6-medium col-12-small" style="width:50%;">
								<!-- Feature -->
									<section>
										<h4 style="margin-top:2em;display:inline-block;">연락처</h4>
										<span style="margin-left: 2em;font-size:0.9em">대표전화 : 02-6255-8002</span>
										<span style="margin-left: 2em;font-size:0.9em">팩스 : 02-566-1460</span>
									</section>
								</div>
							</div>
						</div>
						<div>
							<div class="row" style="width:100%">
						 		<div class="col-4 col-6-medium col-12-small" style="width:50%;">
								<!-- Feature -->
									<section>
										<h4 style="margin-top:2em;">지하철</h4>
										<span style="color:white;background:green;font-size:0.7em;padding:5px;font-weight:bold">2호선</span><br>
										<span style="font-size:0.9em"><b>강남역 1번 출구</b> 도보 300m<br><b>역삼역 3번 출구</b> 도보 350m
										</span>
									</section>
								</div>
								<div class="col-4 col-6-medium col-12-small" style="width:50%;">
								<!-- Feature -->
									<section>
										<h4 style="margin-top:2em;">버스</h4>
										<span style="color:white;background:blue;font-size:0.7em;padding:5px;font-weight:bold">간선</span><br>
										<span style="font-size:0.9em"><b>강남역,12번출구(23-284)</b> : 146, 341, 360, 740, N13, N61<br><b>강남역,역삼세무서(23-287) </b>: 146, 341, 360, 740, N13, N61
										</span><br><br>
										<span style="color:white;background:red;font-size:0.7em;padding:5px;font-weight:bold">직행</span><br>
										<span style="font-size:0.9em"><b>강남역,역삼세무서(23-287) </b>: 1100, 1700, 2000, 2000-1, 3002, 3007, 3200, 3300, 3400, 7007, 9303, 8001<br><b>강남역 12번 출구(23-284) </b>: 1100, 1700 ,2000 , 2000-1, 3600, 7007 ,9303 ,9600 ,8001
										</span>
									</section>
								</div>
							</div>
						</div>
						
					</div>
				</section>

			<%@ include file="../inc/footer.jsp"%>
		</div>

		<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.dropotron.min.js"></script>
			<script src="../assets/js/browser.min.js"></script>
			<script src="../assets/js/breakpoints.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>

	</body>
</html>