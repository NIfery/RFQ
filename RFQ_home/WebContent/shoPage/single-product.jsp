<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.List"%>
<%@page import="com.member.model.MemberVO"%>
<%@page import="com.member.model.MemberService"%>
<%@page import="com.giftcon.model.GiftconVO"%>
<%@page import="com.giftcon.model.GiftconService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	String no = request.getParameter("no");
 	String userid=request.getParameter("userid");
 	
 	boolean login=false;
 	if(userid!=null && !userid.isEmpty()){
 		login=true;
 	}
 
 	GiftconService gs = new GiftconService();
 	GiftconVO vo = new GiftconVO();
   	List<GiftconVO> list = null;
 	try{
	 	vo = gs.selectByNo(Integer.parseInt(no));
	   	list = gs.selectRelationship(vo.getCategory());
 	}catch(SQLException e){
 		e.printStackTrace();
 	}

 	DecimalFormat df=new DecimalFormat();
 %>
 
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>RFQ POINT SHOP</title>
	<link rel="icon" href="img/Fevicon.png" type="image/png">
  <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
	<link rel="stylesheet" href="vendors/linericon/style.css">
  <link rel="stylesheet" href="vendors/nice-select/nice-select.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">

  <link rel="stylesheet" href="css/style.css">
</head>
<script type="text/javascript" src="../assets/js/jquery.min.js"></script>
<script type="text/javascript">	
	$(function(){
		$('#buyBtn').click(function(){
			if(!<%=login%>){
				alert('로그인을 먼저 하세요!');
				event.preventDefault();
				var gsWind=window.open("../member/login.jsp","about:top");
			}
			
			if($('#sst').val().length < 1){
				alert('수량을 다시 선택하세요!');
				event.preventDefault();
			}
		});
	});
</script>
<style type="text/css">
	#arrow {
    display: inline;
    border: none;
    background: transparent;
    box-shadow: none;
    cursor: pointer;
    position: relative;
    right: 0px;
    font-size: 14px;
    color: #cccccc;
    -webkit-transition: all 0.3s ease 0s;
    -moz-transition: all 0.3s ease 0s;
    -o-transition: all 0.3s ease 0s;
    transition: all 0.3s ease 0s;
    }
</style>




<body>
  
                <!-- <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="category.html">전체상품</a></li>
                  <li class="nav-item"><a class="nav-link" href="single-product.html">상품상세</a></li>
                  <li class="nav-item"><a class="nav-link" href="cart.html">장바구니</a></li>
                </ul> -->
				

  <main class="site-main">
    
	<!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="blog">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<a href="#"><h1>RFQ POINT SHOP</h1></a><br>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Ready for the Quiz</a></li>
              <li class="breadcrumb-item active" aria-current="page">Point shop</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->



<!--================Single Product Area =================-->
	<div class="product_image_area">
		<div class="container">
			<div class="row s_product_inner">
				<div class="col-lg-6">
					<div class="owl-carousel owl-theme s_Product_carousel">
						<div class="single-prd-item">
							<img class="img-fluid" src="../images/product/<%=vo.getImage()%>.PNG">
						</div>
						<!-- <div class="single-prd-item">
							<img class="img-fluid" src="img/category/s-p1.jpg" alt="">
						</div>
						<div class="single-prd-item">
							<img class="img-fluid" src="img/category/s-p1.jpg" alt="">
						</div> -->
					</div>
				</div>
				<div class="col-lg-5 offset-lg-1">
					<div class="s_product_text">
						<h3><%=vo.getName() %></h3>
						<h2><%=df.format(vo.getPrice()) %> Point</h2>
						<ul class="list">
							<li><a class="active" href="#"><span>카테고리</span> : <%=vo.getCategory() %></a></li>
							<li><a href="#"><span>판매처</span> : <%=vo.getSeller() %></a></li>
						</ul>
						<p><%= vo.getDetail() %></p>
					<form action="../buy/buyCon.jsp?no=<%=no%>" method="post" target="_top">
						<div class="product_count">
              			<label for="qty">수량:</label>
              			<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) && sst>1) result.value--;return false;"
							 class="increase items-count" type="button" id="arrow">
						<i class="ti-angle-left"></i></button>
							<input type="text" name="qty" id="sst" size="2" maxlength="12" value="1" title="Quantity:" class="input-text qty">
               			<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
							 class="increase items-count" type="button" id="arrow">
               			<i class="ti-angle-right"></i></button>
							<input type="submit" class="button primary-btn" id="buyBtn" value="구매하기">                
						</div>
					</form>
						<div class="card_area d-flex align-items-center">
							<a class="icon_btn" href="#"><i class="lnr lnr lnr-diamond"></i></a>
							<a class="icon_btn" href="#"><i class="lnr lnr lnr-heart"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================End Single Product Area =================-->



<!--================Product Description Area =================-->
	<section class="product_description_area">
		<div class="container">
			
		</div>
	</section>
	<!--================End Product Description Area =================-->


    <!-- ================ trending product section start ================= -->  
    <section class="section-margin calc-60px" style="margin: 0 70px 0;">
      <div class="container">
        <div class="section-intro pb-60px">
          <p>Popular Item in the RFQ point shop</p>
          <h2>관련 <span class="section-intro__style">상품</span></h2>
        </div>
       
        <div class="row">
       
          <!-- 관련상품 품목 처리-->
           <div class="owl-carousel owl-theme" id="bestSellerCarousel">    
          
		<%for (int i=0; i<list.size(); i++){
					GiftconVO vo2 = list.get(i);
				%>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="../images/product/<%=vo2.getImage() %>.PNG">
              <ul class="card-product__imgOverlay">
              <%if(userid==null || userid.isEmpty()){ %>
                  <li><button type="button" onclick ="$('html, body', window.parent.document).scrollTop(800);location.href='single-product.jsp?no=<%=vo2.getNo()%>'"><i class="ti-search"></i></button></li>
                    <%}else{ %>
                    <li><button type="button" onclick ="$('html, body', window.parent.document).scrollTop(800);location.href='single-product.jsp?no=<%=vo2.getNo()%>&userid=<%=userid%>'"><i class="ti-search"></i></button></li>
                    
           		 <%} %>
              </ul>
            </div>
            <div class="card-body">
              <p><%=vo2.getSeller() %></p>
              <h4 class="card-product__title"><a href='single-product.jsp?no=<%=vo2.getNo()%>'><%=vo2.getName() %></a></h4>
              <p class="card-product__price"><%=df.format(vo2.getPrice())%> Point</p>
            </div>
          </div>
		<%} %>

         
        </div>
          <!-- 인기상품 품목 처리 끝 -->
        </div>
      </div>
    </section>
    <!-- ================ trending product section end ================= -->  


    <!-- ================ offer section start ================= --> 
    <section>
      <div class="container">
        <div class="row">
          <div class="col-xl-5">
            <div class="offer__content text-center">
              
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
         
         
        </div>
      </div>
    </section>
    <!-- ================ Best Selling item  carousel end ================= --> 

   
	<br>
   

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












<%-- 
	
	
	
<!--================ Start related Product area =================-->  
      <div class="container">
        <div class="section-intro pb-60px">
          <p>Relation Item in the RFQ POINT SHOP</p>
          <h2>관련 <span class="section-intro__style">상품</span></h2>
        </div>
        <div class="owl-carousel owl-theme" id="bestSellerCarousel">    
          
		
          	<%for (int i=0; i<list.size(); i++){
					GiftconVO vo2 = list.get(i);
				%>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="../images/product/<%=vo2.getImage() %>.png">
              <ul class="card-product__imgOverlay">
                <li><button onclick="$('html, body', window.parent.document).scrollTop(800);location.href='single-product.jsp?no=<%=vo2.getNo()%>'"><i class="ti-search"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p><%=vo2.getSeller() %></p>
              <h4 class="card-product__title"><a href='single-product.jsp?no=<%=vo2.getNo()%>'><%=vo2.getName() %></a></h4>
              <p class="card-product__price"><%=vo2.getPrice() %> Point</p>
            </div>
          </div>
	<%} %>
        </div>
      </div>
	<!--================ end related Product area =================-->  	


  
	<!--================Product Description Area =================-->
	
	<!--================End Product Description Area =================-->

	
  



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
 --%>

