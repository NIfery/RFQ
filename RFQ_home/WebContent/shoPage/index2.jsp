<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.giftcon.model.GiftconVO"%>
<%@page import="com.giftcon.model.GiftconService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
	GiftconService gs = new GiftconService();
 	List<GiftconVO> list = null;
 	List<GiftconVO> list2 = null;
 	String recommend = "추천";
 	try{
 		list = gs.selectAll();
 		list2 = gs.selectRecommend(recommend);
 	}catch(SQLException e){
 		e.printStackTrace();
 	}
 	
 	DecimalFormat df=new DecimalFormat();
 %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>RFQ POINT SHOP</title>
	<link rel="icon" href="img/qpoint.PNG" type="image/png">
  <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
  <link rel="stylesheet" href="vendors/nice-select/nice-select.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">

  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  
                <!-- <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="category.html">전체상품</a></li>
                  <li class="nav-item"><a class="nav-link" href="single-product.html">상품상세</a></li>
                  <li class="nav-item"><a class="nav-link" href="cart.html">장바구니</a></li>
                </ul> -->
				

  <main class="site-main">
    

    <!-- ================ trending product section start ================= -->  
    <section class="section-margin calc-60px" style="margin: 0 70px 0;">
      <div class="container">
        <div class="section-intro pb-60px">
          <p>Popular Item in the RFQ point shop</p>
          <h2>인기 <span class="section-intro__style">상품</span></h2>
        </div>
       
        <div class="row">
        <%for (int i=0; i<9; i++){
        	GiftconVO vo = list.get(i);
        	%>
        
          <!-- 인기상품 품목 처리 예정 -->
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="../images/product/<%=vo.getImage() %>.png">
                <ul class="card-product__imgOverlay">
                  <li><button onclick="location.href='single-product.jsp?no=<%=vo.getNo()%>'"><i class="ti-search"></i></button></li>

                </ul>
              </div>
              <div class="card-body">
                <p><%=vo.getSeller() %></p>
                <h4 class="card-product__title"><%=vo.getName() %></h4>
                <p class="card-product__price"><%=df.format(vo.getPrice()) %> point</p>
              </div>
            </div>
          </div>
          <!-- 인기상품 품목 처리 끝 -->
          <%} //for %>
        </div>
      </div>
    </section>
    <!-- ================ trending product section end ================= -->  


    <!-- ================ offer section start ================= --> 
    <section class="offer" id="parallax-1" data-anchor-target="#parallax-1" data-300-top="background-position: 20px 30px" data-top-bottom="background-position: 0 20px">
      <div class="container">
        <div class="row">
          <div class="col-xl-5">
            <div class="offer__content text-center">
              <h3>Open Event</h3>
              <h4>지금 가입시 500P 지급!</h4>
              <p>Ready for the quiz ?</p>
              <a class="button button--active mt-3 mt-xl-4" href="../member/agreement.jsp">회원가입</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ================ offer section end ================= --> 

    <!-- ================ Best Selling item  carousel ================= --> 
     <section class="section-margin calc-60px">
      <div class="container">
        <div class="section-intro pb-60px">
          <p>Popular Item in the market</p>
          <h2>추천 <span class="section-intro__style">상품</span></h2>
        </div>
        <div class="owl-carousel owl-theme" id="bestSellerCarousel">    
          
		
          	<%for (int i=0; i<list2.size(); i++){
					GiftconVO vo2 = list2.get(i);
				%>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="../images/product/<%=vo2.getImage() %>.png">
              <ul class="card-product__imgOverlay">
                <li><button onclick="location.href='single-product.jsp?no=<%=vo2.getNo()%>'"><i class="ti-search"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p><%=vo2.getSeller() %></p>
              <h4 class="card-product__title"><a href="single-product.html"><%=vo2.getName() %></a></h4>
              <p class="card-product__price"><%=vo2.getPrice() %> Point</p>
            </div>
          </div>
	<%} %>
        </div>
      </div>
    </section>
    <!-- ================ Best Selling item  carousel end ================= --> 

    <!-- ================ Event section start ================= -->  
    <section class="blog">
      <div class="container">
        <div class="section-intro pb-60px">
          <p>RFQ news</p>
          <h2>RFQ <span class="section-intro__style">오늘의 소식</span></h2>
        </div>

        <div class="row">
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="card card-blog">
              <div class="card-blog__img">
                <img class="card-img rounded-0" src="img/quiz.jpg" alt="">
              </div>
              <div class="card-body">
                <ul class="card-blog__info">
                  <li><a href="#">By Admin</a></li>
                  <li><a href="#"><i class="ti-comments-smiley"></i> 2 Comments</a></li>
                </ul>
                <h4 class="card-blog__title"><a href="single-blog.html">현금영수증 OX 퀴즈 !(진행중)</a></h4>
                <p>현금영수증 OX퀴즈풀고 에어팟 프로 받자 </p>
                <a class="card-blog__link" href="#">Read More <i class="ti-arrow-right"></i></a>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="card card-blog">
              <div class="card-blog__img">
                <img class="card-img rounded-0" src="img/quiz2.jpg" alt="">
              </div>
              <div class="card-body">
                <ul class="card-blog__info">
                  <li><a href="#">By Admin</a></li>
                  <li><a href="#"><i class="ti-comments-smiley"></i> 2 Comments</a></li>
                </ul>
                <h4 class="card-blog__title"><a href="single-blog.html">뉴스 저작권 관련 퀴즈</a></h4>
                <p>한국진흥재단 X RFQ 총 상금 600만 Point</p>
                <a class="card-blog__link" href="#">Read More <i class="ti-arrow-right"></i></a>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="card card-blog">
              <div class="card-blog__img">
                <img class="card-img rounded-0" src="img/quiz3.jpg" alt="">
              </div>
              <div class="card-body">
                <ul class="card-blog__info">
                  <li><a href="#">By Admin</a></li>
                  <li><a href="#"><i class="ti-comments-smiley"></i> 2 Comments</a></li>
                </ul>
                <h4 class="card-blog__title"><a href="single-blog.html">로봇활용 제조혁신 지원사업은 ?!</a></h4>
                <p>정답을 맞추고 추첨을 통해 기프티콘 지급!</p>
                <a class="card-blog__link" href="#">Read More <i class="ti-arrow-right"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ================ Blog section end ================= -->  

    <!-- ================ Subscribe section start ================= --> 
    <section class="subscribe-position">


            </form>
          </div>
          
        </div>
      </div>
    </section>
    <!-- ================ Subscribe section end ================= --> 

  </main>
  <script src="vendors/jquery/jquery-3.2.1.min.js"></script>
  <script src="vendors/bootstrap/bootstrap.bundle.min.js"></script>
  <script src="vendors/skrollr.min.js"></script>
  <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
  <script src="vendors/nice-select/jquery.nice-select.min.js"></script>
  <script src="vendors/jquery.ajaxchimp.min.js"></script>
  <script src="vendors/mail-script.js"></script>
  <script src="js/main.js"></script>
</body>
</html>