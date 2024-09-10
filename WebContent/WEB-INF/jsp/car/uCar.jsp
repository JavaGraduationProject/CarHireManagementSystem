<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>汽车详情</title>
<link href="${ctx}/resource/common/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${ctx}/resource/common/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="${ctx}/resource/common/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<link href="${ctx}/resource/common/css/product.css" rel="stylesheet" type="text/css"/>
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<!-- <link href='http://fonts.useso.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'> -->
<!--//fonts-->
<script type="text/javascript" src="${ctx}/resource/js/move-top.js"></script>
<script type="text/javascript" src="${ctx}/resource/js/easing.js"></script>
				<!-- <script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
				</script> -->
<!--slider-script-->
		<script src="${ctx}/resource/common/js/responsiveslides.min.js"></script>
			<script>
				$(function () {
				  $("#slider1").responsiveSlides({
					auto: true,
					speed: 500,
					namespace: "callbacks",
					pager: true,
				  });
				});
			</script>
<!--//slider-script-->
<script>$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
	$('.alert-close1').on('click', function(c){
		$('.message1').fadeOut('slow', function(c){
	  		$('.message1').remove();
		});
	});	  
});
</script>
<script>
	function saveCart(){
		document.getElementById("cartForm").submit();
	}
</script>
</head>
<body>
<%@ include file="/common/menu.jsp" %>
		<!---->
		<div class="container">
			<div class="single">
				<div class="col-md-9 top-in-single">
					<div class="col-md-5 single-top">	
						<!-- start product_slider -->
				    <div class="flexslider">
							        <!-- FlexSlider -->
										<script src="${ctx}/resource/common/js/imagezoom.js"></script>
										  <script defer src="${ctx}/resource/common/js/jquery.flexslider.js"></script>
										<link rel="stylesheet" href="${ctx}/resource/common/css/flexslider.css" type="text/css" media="screen" />
										<script>
										// Can also be used with $(document).ready()
										$(window).load(function() {
										  $('.flexslider').flexslider({
											animation: "slide",
											controlNav: "thumbnails"
										  });
										});
										</script>
									<!-- //FlexSlider-->

							  <ul class="slides">
								<li data-thumb="${car.carImage}">
									<div class="thumb-image"> <img src="${car.carImage }" data-imagezoom="true" class="img-responsive"> </div>
								</li>
<%-- 								<li data-thumb="${car.carImage}"> --%>
<%-- 									 <div class="thumb-image"> <img src="${car.carImage }" data-imagezoom="true" class="img-responsive"> </div> --%>
<!-- 								</li> -->
<%-- 								<li data-thumb="${car.carImage }"> --%>
<%-- 								   <div class="thumb-image"> <img src="${car.carImage }" data-imagezoom="true" class="img-responsive"> </div> --%>
<!-- 								</li> -->
<%-- 								<li data-thumb="${car.carImage}"> --%>
<%-- 								   <div class="thumb-image"> <img src="${car.carImage }" data-imagezoom="true" class="img-responsive"> </div> --%>
<!-- 								</li> -->
							  </ul>
							<div class="clearfix"></div>
					</div>
				<!-- end product_slider -->
					</div>	
					<div class="col-md-7 single-top-in">
					<form id="cartForm" action="${ctx}/cart_addCart.do" method="post" >
						<input type="hidden" name="carId" value="${car.id }"/>
						<div class="single-para">
						    <p>汽车编号：&nbsp;&nbsp;${car.id}</p>
							<h4>车名：&nbsp;&nbsp;${car.carType}</h4>
							<div class="para-grid">
								<span  class="add-to">日租价格：&nbsp;&nbsp;￥${car.dailyPrice}</span>
								<a href="${ctx}/car_uRentCar.do?id=${car.id}" class="hvr-shutter-in-vertical cart-to">我要租车</a>					
								<div class="clearfix"></div>
							 </div>
							
<!-- 							<div class="available" > -->
<!-- 								<h6 style="color: black;">购买数量 ：&nbsp;&nbsp;<input id="num" name="num" value="1" maxlength="4" onpaste="return false;" type="text"/>&nbsp;&nbsp;件</h6> -->
<!-- 						</div> -->
                           <h4>汽车品牌 ：&nbsp;&nbsp;${car.carCategory.cname}</h4>
                           <h4>车牌号 ：&nbsp;&nbsp;${car.carNumber}</h4>
                           <h4>汽油型号 ：&nbsp;&nbsp;${car.carOilType}</h4>
                           <h4>行驶里程 ：&nbsp;&nbsp;${car.distance}</h4>
						</div>
					</form>
					</div>
				<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
		</div>
	</div>
		<!---->
<%@ include file="/common/footer.jsp" %>	
</body>
</html>