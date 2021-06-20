<%@page import="java.sql.SQLException"%>
<%@page import="com.giftcon.model.GiftconVO"%>
<%@page import="java.util.List"%>
<%@page import="com.giftcon.model.GiftconService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%	
    	request.setCharacterEncoding("utf-8");
    	String category = request.getParameter("brand");
    	String keyword = request.getParameter("searchName");
    	
    
    	GiftconService gs = new GiftconService();
    	List<GiftconVO> list = null;

    	try{
    		list = gs.selectSearch(category, keyword);
    	}catch(SQLException e){
    		e.printStackTrace();
    	}
    %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>RFQ POINT SHOP - Category</title>
	<link rel="icon" href="img/Fevicon.png" type="image/png">
  <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
	<link rel="stylesheet" href="vendors/linericon/style.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
  <link rel="stylesheet" href="vendors/nice-select/nice-select.css">
  <link rel="stylesheet" href="vendors/nouislider/nouislider.min.css">

  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  

	<!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>RFQ POINT Shop</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">퀴즈풀고</a></li>
              <li class="breadcrumb-item active" aria-current="page">포인트 모으자!</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->


	<!-- ================ category section start ================= -->		  
  <section class="section-margin--small mb-5">
    <div class="container">
      <div class="row">
        <div class="col-xl-3 col-lg-4 col-md-5">
          <div class="sidebar-categories">
            <div class="head">기프티콘 카테고리</div>
            <ul class="main-categories">
              <li class="common-filter">
                <form name=frmCategory method="get" action="category.jsp">
                  <ul>
                    <li class="filter-list"><input class="pixel-radio" type="radio" id="all" name="brand">전체상품<span> (3600)</span></li>
                    <li class="filter-list"><input class="pixel-radio" type="radio" id="food" name="brand">배달음식<span> (3600)</span></li>
                    <li class="filter-list"><input class="pixel-radio" type="radio" id="drink" name="brand">음료<span> (3600)</span></li>
                    <li class="filter-list"><input class="pixel-radio" type="radio" id="convenience" name="brand">편의점<span> (3600)</span></li>
                    <li class="filter-list"><input class="pixel-radio" type="radio" id="item" name="brand">소품<span> (3600)</span></li>
                    <li class="filter-list"><input class="pixel-radio" type="radio" id="daily" name="brand">생활<span> (3600)</span></li>
                    <li class="filter-list"><input class="pixel-radio" type="radio" id="voucher" name="brand">상품권<span> (3600)</span></li>
                  </ul>
                </form>
              </li>
            </ul>
          </div>
          
        </div>
        <div class="col-xl-9 col-lg-8 col-md-7">
          <!-- Start Filter Bar -->
          <div class="filter-bar d-flex flex-wrap align-items-center">
            
            <div class="sorting">
              <select>
                <option value="1">Default sorting</option>
                <option value="1">Default sorting</option>
                <option value="1">Default sorting</option>
              </select>
            </div>
            <div class="sorting mr-auto">
              <select>
                <option value="1">Show 12</option>
                <option value="1">Show 12</option>
                <option value="1">Show 12</option>
              </select>
            </div>
            <div>
            <form action="category.jsp" method="post">
              <div class="input-group filter-bar-search">
                <input type="text" placeholder="Search" name="searchName" id="searchName">
                <div class="input-group-append">
                  <button type="submit"><i class="ti-search"></i></button>
                </div>
              </div>
             </form>
            </div>
          </div>
          <!-- End Filter Bar -->
          <!-- Start Best Seller -->
          <section class="lattest-product-area pb-40 category-list">
            <div class="row">

             <%for (int i=0; i<9; i++ ){
            	 GiftconVO vo = list.get(i);
            	 %>
              <div class="col-md-6 col-lg-4">
                <div class="card text-center card-product">
                  <div class="card-product__img">
                    <img class="card-img" src="../images/product/<%=vo.getImage() %>.png">
                    <ul class="card-product__imgOverlay">
                      <li><button onclick ="location.href='single-product.jsp?no=<%=vo.getNo()%>'"><i class="ti-search"></i></button></li>
                    </ul>
                  </div>
                  <div class="card-body">
                    <p><%=vo.getSeller() %></p>
                    <h4 class="card-product__title"><a href="#"><%=vo.getName() %></a></h4>
                    <p class="card-product__price"><%=vo.getPrice() %> Point</p>
                  </div>
                </div>
              </div>
             <%}//for %>


            </div>
          </section>
          <!-- End Best Seller -->
        </div>
      </div>
    </div>
  </section>
	<!-- ================ category section end ================= -->		  

	<!-- ================ top product area start ================= -->	

	<!-- ================ top product area end ================= -->		

	<!-- ================ Subscribe section start ================= -->		  
  
	<!-- ================ Subscribe section end ================= -->		  


 


  <script src="vendors/jquery/jquery-3.2.1.min.js"></script>
  <script src="vendors/bootstrap/bootstrap.bundle.min.js"></script>
  <script src="vendors/skrollr.min.js"></script>
  <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
  <script src="vendors/nice-select/jquery.nice-select.min.js"></script>
  <script src="vendors/nouislider/nouislider.min.js"></script>
  <script src="vendors/jquery.ajaxchimp.min.js"></script>
  <script src="vendors/mail-script.js"></script>
  <script src="js/main.js"></script>
</body>
</html>