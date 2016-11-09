<!doctype html>
<html>
<head>
<title>总店服务员主页</title>
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
<%@ page import="com.bean.ProductPlan"%>
<%@ page import="java.util.*"%>
<%@ page import="com.bean.Log"%>
<%@ page import="com.bean.PayLog"%>
<%
List<Object> oList=null;
List<Log> lList=null;
List<PayLog> plList=null;
if(ServletActionContext.getRequest().getSession().getAttribute("log")!=null){

	oList = (List<Object>) ServletActionContext.getRequest().getSession().getAttribute("log");
	lList = (List<Log>) oList.get(0);
	plList = (List<PayLog>) oList.get(1);
}
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
				<div class="navigation" style="width: 120%; margin-left: -1%">
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
								<li><a href="/SSH/login.action">HOME <span
										class="sr-only">(current)</span></a></li>
								<li><a href="#">UPLOADBILL</a></li>
								<li><a class="active" href="branchWaiter_query.jsp">QUERYMEMBERINFO</a></li>
								<li><a href="#">QUERYSALELOG</a></li>
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
			</div>
		</div>
	</div>
	<!--header-ends-->

	<!--content-->
	<div class="our-products" style="border-top: 3px solid pink;">
		<div class="container">
			<div class="products-gallery" style="border-top: 3px solid pink;">
				<h2>INPUT THE MEMBER's ID</h2>
				<div class="col-md-2 arr"></div>
				<div class="col-md-8 arr">
					<form action="BLog">
						请输入要查找的会员卡号 <input type="text" class="form-control" placeholder=""
							name="mid" style="margin: 20px 0px; width: 750px;">
						<button type="submit" class="btn btn-primary"
							style="float: right; margin: 20px 260px; padding: 20px 100px;">确定</button>
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="products-gallery" style="border-top: 3px solid pink;">
				<h2>BILLS</h2>
				<div class="col-md-12 arr">
					<table class="table table-striped">
						<thead>
							<tr>
								<th style="text-align: center; vertical-align: middle;">#</th>
								<th style="text-align: center; vertical-align: middle;">服务员id</th>
								<th style="text-align: center; vertical-align: middle;">商品id</th>
								<th style="text-align: center; vertical-align: middle;">数量</th>
								<th style="text-align: center; vertical-align: middle;">总价</th>
								<th style="text-align: center; vertical-align: middle;">日期</th>
								<th style="text-align: center; vertical-align: middle;">付款方式</th>
							</tr>
						</thead>
						<tbody style="text-align: center; vertical-align: middle;">
							<%
								int i = 0;
							if(lList!=null){
								while (lList.size() >= (i + 1)) {
							%>
							<tr>
								<td><%=i + 1%></td>
								<td><%=lList.get(i).getWaiter_id()%></td>
								<td><%=lList.get(i).getProduct_id()%></td>
								<td><%=lList.get(i).getNum()%></td>
								<td><%=lList.get(i).getWaiter_id()%></td>
								<td><%=lList.get(i).getDate()%></td>
								<td>
									<%
										if (lList.get(i).getPaytype() == 1) {
									%>会员卡 <%
										} else {
									%>现金 <%
										}
									%>
								</td>
							</tr>
							<%
								i++;
								}}
							%>
						</tbody>
					</table>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="products-gallery" style="border-top: 3px solid pink;">
				<h2>PAYLOG</h2>
				<div class="col-md-12 arr">
					<table class="table table-striped">
						<thead>
							<tr>
								<th style="text-align: center; vertical-align: middle;">#</th>
								<th style="text-align: center; vertical-align: middle;">日期</th>
								<th style="text-align: center; vertical-align: middle;">缴费金额</th>
							</tr>
						</thead>
						<tbody style="text-align: center; vertical-align: middle;">
							<%
								int j = 0;
							if(plList!=null){
								while (plList.size() >= (j + 1)) {
							%>
							<tr>
								<td><%=j + 1%></td>
								<td><%=plList.get(i).getDate()%></td>
								<td><%=plList.get(i).getPay()%></td>
							</tr>
							<%
								j++;
								}}
							%>
						</tbody>
					</table>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="traits-technology"
				style="border-top: 3px solid pink; padding-top: 2%;">
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
