<!doctype html>
<html>
<head>
<title>会员主页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Play-Offs Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	
	 addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 






</script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page 
	import="org.apache.struts2.ServletActionContext"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.bean.Member"%>
<%
	Member m = (Member) ServletActionContext.getRequest().getSession().getAttribute("member");
%>
<!--bootstrap-->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<!--coustom css-->
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/owl.carousel.css" rel="stylesheet">
<link rel="stylesheet" href="css/chocolat.css" type="text/css"
	media="screen" charset="utf-8" />
<!--script-->
<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!--fonts-->
<link href='http://fonts.useso.com/css?family=Quicksand:300,400,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.useso.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<!--script-->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 900);
		});
	});
</script>
<style>
body {
	font-family: '微软雅黑 light';
}
</style>
</head>
<body>
	<!--header-part-->
	<div class="banner-background" id="to-top">
		<div class="container">
			<div class="nav-back">
				<div class="navigation" style="width: 110%; margin-left: 0">
					<nav class="navbar navbar-default">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a class="active" href="/SSH/login.action">HOME <span
										class="sr-only">(current)</span></a></li>
								<li>
									<%
										if (m.getState() == 0) {
									%><a href="member_activate.jsp">ACTIVE</a> <%
 	} else if (m.getState() == 1) {
 %><a data-toggle="modal" data-target="#myModal"
									style="cursor: pointer;">CANCEL</a> <%
 	} else {
 %><a href="member_recover.jsp">RECOVE</a> <%
 	}
 %>
								</li>
								<li><a href="/SSH/Log.action">QUERY</a></li>
								<li><a href="member_myinfo.jsp">MYINFO</a></li>
								<li><a href="/SSH/AllProduct.action">PRODUCT</a></li>
								<li><a href="/SSH/loginoff.action">LOGOUT</a></li>
							</ul>
						</div>
						<!-- /.navbar-collapse -->
						<div class="clearfix"></div>
						<div class="clearfix"></div>
					</nav>
					<div class="clearfix"></div>
				</div>
				<div class="logo">
					<h1>
						<a href="/SSH/login.action">Dessert<span class="hlf">
								House</span></a>
					</h1>
				</div>
				<div class="banner-slider">
					<div id="myCarousel" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>
						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img src="./images/1.jpg" alt="dog" class="img-responsive">
								<div class="carousel-caption ch">
									<h3>推荐商品1</h3>
									<p>Suspendisse ut ante eget ex maximus malesuada tincidunt
										eu ex.</p>
								</div>
							</div>
							<div class="item">
								<img src="./images/4.jpg" alt="cat" class="img-responsive">
								<div class="carousel-caption ch">
									<h3>推荐商品2</h3>
									<p>Suspendisse ut ante eget ex maximus malesuada tincidunt
										eu ex.</p>
								</div>
							</div>
							<div class="item">
								<img src="./images/2.jpg" alt="wolfdog" class="img-responsive">
								<div class="carousel-caption ch">
									<h3>推荐商品3</h3>
									<p>Suspendisse ut ante eget ex maximus malesuada tincidunt
										eu ex.</p>
								</div>
							</div>
						</div>
						<!-- Controls -->
						<a class="carousel-control left" href="#myCarousel" role="button"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="carousel-control right" href="#myCarousel"
							role="button" data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--header-ends-->

	<!--content-->
	<div class="our-products">
		<div class="container">
			<div class="products-gallery">
				<h2>OUR-PRODUCTS</h2>
				<div class="col-md-3 arr">
					<div class="bg">
						<img src="./images/p1.png" alt="pet" class="img-responsive">
						<span class="glyphicon glyphicon-heart pst" aria-hidden="true"></span>
						<div class="caption">
							<h3>糕点</h3>
							<p>月饼、蛋糕、酥饼</p>
							<p>
								<a href="#" class="btn btn-danger" role="button">More</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 arr">
					<div class="bg">
						<img src="./images/p2.png" alt="pet" class="img-responsive">
						<span class="glyphicon glyphicon-heart pst" aria-hidden="true"></span>
						<div class="caption">
							<h3>糖果</h3>
							<p>硬、软糖</p>
							<p>
								<a href="#" class="btn btn-danger" role="button">More</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 arr">
					<div class="bg">
						<img src="./images/p3.png" alt="pet" class="img-responsive">
						<span class="glyphicon glyphicon-heart pst" aria-hidden="true"></span>
						<div class="caption">
							<h3>巧克力</h3>
							<p>黑、白、夹心巧克力</p>
							<p>
								<a href="#" class="btn btn-danger" role="button">More</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 arr">
					<div class="bg">
						<img src="./images/p4.png" alt="pet" class="img-responsive">
						<span class="glyphicon glyphicon-heart pst" aria-hidden="true"></span>
						<div class="caption">
							<h3>饮品</h3>
							<p>奶茶、牛奶、咖啡、冰沙</p>
							<p>
								<a href="#" class="btn btn-danger" role="button">More</a>
							</p>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="traits-technology">
				<div class="col-md-8 tt">
					<ul class="traits-text">
						<li><h3>Delicious, Sweet</h3></li>
						<li><p>
								<b style="font-weight: 600;">Happy is the man who is living
									by his hobby.</b>
							</p></li>
						<li><p>
								甜品，是一个很广的概念，大致分为甜味点心和广式的糖水。甜品，一般不会被当作正餐，通常作为下午茶的小食。</p>
							<p>甜食，是治疗抑郁、放松心情的灵丹妙药。一般来说，喜欢吃甜食的人，脾气都不坏，她们的坏情绪可以被巧克力、蛋糕、布丁、奶酪等一切甜美的食物代谢殆尽。
							</p></li>
					</ul>
					<!-- 
					<ol>
						<div class="col-md-6 brk">
							<li><a href="#">Lorem Ipsum is simply dummy text.</a></li>
							<li><a href="#">Lorem Ipsum is simply dummy text.</a></li>
							<li><a href="#">Lorem Ipsum is simply dummy text.</a></li>
						</div>
						<div class="col-md-6 brk">
							<li><a href="#">Lorem Ipsum is simply dummy text.</a></li>
							<li><a href="#">Lorem Ipsum is simply dummy text.</a></li>
							<li><a href="#">Lorem Ipsum is simply dummy text.</a></li>
						</div>
						<div class="clearfix"></div>
					</ol> -->
				</div>
				<div class="col-md-4 tt">
					<div class="traits-logos">
						<img src="./images/home_bg.png" alt="" style="padding-top: 20%"
							class="img-responsive" />
						<!--  <div class="col-xs-6 col-md-6 tt brk2">
							<span class="glyphicon glyphicon-leaf bgtl" aria-hidden="true"></span>
						</div>
						<div class="col-xs-6 col-md-6 tt brk2">
							<span class="glyphicon glyphicon-grain bgtl" aria-hidden="true"></span>
						</div>
						<div class="col-xs-6 col-md-6 tt brk2">
							<span class="glyphicon glyphicon-fire bgtl" aria-hidden="true"></span>
						</div>
						<div class="col-xs-6 col-md-6 tt brk2">
							<span class="glyphicon glyphicon-camera bgtl" aria-hidden="true"></span>
						</div>-->
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--content-ends-->
	<!--brand-logos-->
	<div class="brand-logo">
		<div class="container">
			<div class="col-xs-6 col-md-3 brk3">
				<a href=""><img src="./images/bd1.png" alt=""
					class="img-responsive" /></a>
			</div>
			<div class="col-xs-6 col-md-3 brk3">
				<a href=""><img src="./images/bd2.png" alt=""
					class="img-responsive" /></a>
			</div>
			<div class="col-xs-6 col-md-3 brk3">
				<a href=""><img src="./images/bd3.png" alt=""
					class="img-responsive" /></a>
			</div>
			<div class="col-xs-6 col-md-3 brk3">
				<a href=""><img src="./images/bd4.png" alt=""
					class="img-responsive" /></a>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--brand-ends-->
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="col-md-6 mrg1">
				<div class="col-md-4 brk4">
					<div class="about">
						<h4>ABOUT</h4>
						<ul>
							<li><a href="about.html">Company Info</a></li>
							<li><a href="#">Sollution</a></li>
							<li><a href="services.html">Services</a></li>
							<li><a href="about.html">Team</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 brk4">
					<div class="advice">
						<h4>ADVICE</h4>
						<ul>
							<li><a href="#">Faqs</a></li>
							<li><a href="#">Accounts</a></li>
							<li><a href="contact.html">Contact</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 brk4">
					<div class="join-in">
						<h4>JOIN IN</h4>
						<ul>
							<li><a href="#">Forums</a></li>
							<li><a href="#">Promotions</a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-3 brk5">
				<div class="follow-us">
					<h4>FOLLOW US</h4>
					<ul>
						<li><a href="#" class="fb"></a></li>
						<li><a href="#" class="twt"></a></li>
						<li><a href="#" class="gpls"></a></li>
						<li><a href="#" class="pint"></a></li>
						<li><a href="#" class="lnkdin"></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 brk5">
				<div class="copy-rt">
					<h4>COPYRIGHT</h4>
					<p>Copyright &copy; 2015.Company name All rights reserved.</p>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--footer-->

	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">
						<strong>你确认吗？</strong>
					</h4>
				</div>
				<div class="modal-body" style="font-szie: 18px">
					会员一旦停止将不可恢复，如果确定请点击确定。</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消
					</button>
					<a class="btn btn-primary" href="/SSH/Member_delete.action"> 确定
					</a>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->

		<!---->
		<script type="text/javascript">
			$(document).ready(function() {
				/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
				 */
				$().UItoTop({
					easingType : 'easeOutQuart'
				});
			});
		</script>
		<a href="#to-top" id="toTop" style="display: block;"> <span
			id="toTopHover" style="opacity: 1;"> </span></a>
		<!---->
</body>
</html>
