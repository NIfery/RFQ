<%@page import="com.giftcon.model.GiftconVO"%>
<%@page import="com.giftcon.model.GiftconService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%

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
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="img/product/chk1.png" alt="">
                <ul class="card-product__imgOverlay">
                  <li><button onclick="location.href='single-product.jsp?no=1'"><i class="ti-search"></i></button></li>

                </ul>
              </div>
              <div class="card-body">
                <p>네네치킨</p>
                <h4 class="card-product__title">후라이드 + 콜라1.25L</h4>
                <p class="card-product__price">15800 point</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="img/product/chk2.png" alt="">
                <ul class="card-product__imgOverlay">
                  <li><button onclick="location.href='single-product.jsp?no=2'"><i class="ti-search"></i></button>
                  </li>

                </ul>
              </div>
              <div class="card-body">
                <p>BHC</p>
                <h4 class="card-product__title">뿌링클 + 콜라1.25L</h4>
                <p class="card-product__price">17000 point</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="img/product/chk3.png" alt="">
                <ul class="card-product__imgOverlay">
                  <li><button onclick="location.href='single-product.jsp?no=3'"><i class="ti-search"></i></button>
                  </li>
                </ul>
              </div>
              <div class="card-body">
                <p>굽네치킨</p>
                <h4 class="card-product__title">굽네치킨 볼케이노 + 콜라1.25L</h4>
                <p class="card-product__price">16800 point</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="img/product/chk4.png" alt="">
                <ul class="card-product__imgOverlay">
                  <li><button onclick="location.href='single-product.jsp?no=4'"><i class="ti-search"></i></button>
                  </li>
                </ul>
              </div>
              <div class="card-body">
                <p>KFC</p>
                <h4 class="card-product__title">KFC 징거버거세트</h4>
                <p class="card-product__price">9700 point</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="img/product/cof1.png" alt="">
                <ul class="card-product__imgOverlay">
                  <li><button onclick="location.href='single-product.jsp?no=5'"><i class="ti-search"></i></button></li>
                </ul>
              </div>
              <div class="card-body">
                <p>스타벅스</p>
                <h4 class="card-product__title">아메리카노</h4>
                <p class="card-product__price">4100 point</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="img/product/cof2.png" alt="">
                <ul class="card-product__imgOverlay">
                  <li><button onclick="location.href='single-product.jsp?no=6'"><i class="ti-search"></i></button></li>

                </ul>
              </div>
              <div class="card-body">
                <p>이디야</p>
                <h4 class="card-product__title">토피넛 라떼</a></h4>
                <p class="card-product__price">3800 point</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="img/product/cof3.png" alt="">
                <ul class="card-product__imgOverlay">
                  <li><button onclick="location.href='single-product.jsp?no=7'"><i class="ti-search"></i></button></li>

                </ul>
              </div>
              <div class="card-body">
                <p>빽다방</p>
                <h4 class="card-product__title">초코칩 피스타치오</a></h4>
                <p class="card-product__price">3800 point</p>
              </div> 
            </div>
          </div>
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="img/product/cof4.png" alt="">
                <ul class="card-product__imgOverlay">
                  <li><button onclick="location.href='single-product.jsp?no=8'"><i class="ti-search"></i></button></li>

                </ul>
              </div>
              <div class="card-body">
                <p>베스킨라빈스</p>
                <h4 class="card-product__title">파인트</h4>
                <p class="card-product__price">12300 point</p>
              </div>
            </div>
          </div>
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
              <a class="button button--active mt-3 mt-xl-4" href="#">전체상품</a>
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
          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="img/product/product1.png"> alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Accessories</p>
              <h4 class="card-product__title"><a href="single-product.html">Quartz Belt Watch</a></h4>
              <p class="card-product__price">$150.00</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="img/product/product2.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Beauty</p>
              <h4 class="card-product__title"><a href="single-product.html">Women Freshwash</a></h4>
              <p class="card-product__price">$150.00</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="img/product/product3.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Decor</p>
              <h4 class="card-product__title"><a href="single-product.html">Room Flash Light</a></h4>
              <p class="card-product__price">$150.00</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="img/product/product4.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Decor</p>
              <h4 class="card-product__title"><a href="single-product.html">Room Flash Light</a></h4>
              <p class="card-product__price">$150.00</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="img/product/product1.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>악세사리</p>
              <h4 class="card-product__title"><a href="single-product.html">손목 시계</a></h4>
              <p class="card-product__price">49000 point</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="img/product/product2.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>핸드크림</p>
              <h4 class="card-product__title"><a href="single-product.html">여성용 핸드크림</a></h4>
              <p class="card-product__price">9800 point</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="img/product/product3.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>인테리어</p>
              <h4 class="card-product__title"><a href="single-product.html">침대 조명등</a></h4>
              <p class="card-product__price">19900 point</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="img/product/product4.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>소품</p>
              <h4 class="card-product__title"><a href="single-product.html">가죽 공병</a></h4>
              <p class="card-product__price">28000 point</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ================ Best Selling item  carousel end ================= --> 

    <!-- ================ Blog section start ================= -->  
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