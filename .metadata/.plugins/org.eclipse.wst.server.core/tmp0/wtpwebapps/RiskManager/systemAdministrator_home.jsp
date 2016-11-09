<!doctype html>
<html>
<head>
<title>系统管理员主页</title>
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
<%@ page import="com.bean.Store"%>
<%@ page import="com.bean.Waiter"%>
<%@ page import="java.util.*"%>
<%
	List<Store> sList;
	sList = (List<Store>) ServletActionContext.getRequest().getSession().getAttribute("allStore");
	List<Waiter> wList;
	wList = (List<Waiter>) ServletActionContext.getRequest().getSession().getAttribute("allWaiter");
	Store hs = new Store();
	List<Store> bsList = new ArrayList();
	if (sList != null) {
		for (Store s : sList) {
			if (s.getType() == 1)
				hs = s;
			else
				bsList.add(s);
		}
	}
	List<Waiter> hswList = new ArrayList();
	List<Waiter> bswList = new ArrayList();
	if (wList != null) {
		for (Waiter w : wList) {
			if (w.getStore_id() == hs.getId()) {
				hswList.add(w);
			} else
				bswList.add(w);
		}
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
				<div class="navigation" style="width: 110%; margin-left: -1.5%">
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
								<li><a href="systemAdministrator_updateStore.jsp">STOREMANAGE</a></li>
								<li><a href="systemAdministrator_updateWaiter.jsp">WAITERMANAGE</a></li>
								<li><a href="#">WAITINGFORADD</a></li>
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
						<a href="index.html">Dessert<span class="hlf"> House</span></a>
					</h1>
				</div>

			</div>
		</div>
	</div>
	<!--header-ends-->

	<!--content-->
	<div class="our-products">
		<div class="container">
			<div class="products-gallery" style="border-top: 3px solid pink;">
				<h2>OUR-STORES</h2>
				<div class="col-md-6 arr">
					<div class="bg">
						<img src="./images/hs.png" alt="" class="img-responsive">
						<div style="text-align: left; padding: 20px 20px">
							<h3><%=hs.getName()%></h3>
							<p
								style="line-height: 3; font-size: 16px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
								店员：
								<%
								for (Waiter ww : hswList) {
							%><%=ww.getName()%>&nbsp;&nbsp;<%
								}
							%>
							</p>
							<p style="line-height: 3; font-size: 16px;">
								联系电话：<%=hs.getTelephone()%></p>
							<p
								style="line-height: 3; font-size: 16px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
								地址：<%=hs.getAddress()%></p>
						</div>
					</div>
				</div>
				<div class="col-md-6 arr">
					<%
						int i = 0;
						while (bsList.size() >= (i + 1) && i <= 3) {
					%>
					<div class="col-md-6 arr" <%if (i > 1) {%> style="margin-top: 2%;"
						<%}%>>
						<div class="bg">
							<img src="./images/bs.png" alt="pet" class="img-responsive">
							<div style="text-align: left; padding: 20px 20px">
								<h4><%=bsList.get(i).getName()%></h4>
								<p>
									联系电话：<%=bsList.get(i).getTelephone()%></p>
								<p
									style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
									地址：<%=bsList.get(i).getAddress()%></p>
							</div>
						</div>
					</div>
					<%
						i++;
						}
					%>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="products-gallery" style="border-top: 3px solid pink;">
				<h2>OUR-WAITERS</h2>
				<div class="col-md-6 arr">
					<%
						int f = 0;
						while (hswList.size() >= (f + 1) && f <= 3) {
					%>
					<div class="col-md-12 arr" <%if (f > 0) {%> style="margin-top: 2%;"
						<%}%>>
						<div class="bg">
							<img src="./images/hw.png" alt="pet" class="img-responsive"
								style="width: 20%; float: left; padding: 20px; border-bottom: 0;">
							<div style="text-align: left; padding: 20px 20px">
								<h3><%=hswList.get(f).getName()%></h3>
								<p style="line-height: 3; font-size: 16px;">
									联系电话：<%=hswList.get(f).getPhone()%></p>
							</div>
						</div>
					</div>
					<%
						f++;
						}
					%>
				</div>
				<div class="col-md-6 arr">
					<%
						int k = 0;
						while (bswList.size() >= (k + 1) && k <= 3) {
					%>
					<div class="col-md-6 arr" <%if (k > 1) {%> style="margin-top: 2%;"
						<%}%>>
						<div class="bg">
							<img src="./images/bw.png" alt="pet" class="img-responsive"
								style="width: 40%; float: left; padding: 20px; border-bottom: 0;">
							<div style="text-align: left; padding: 20px 20px">
								<h4><%=bswList.get(k).getName()%></h4>
								<p>
									联系电话：<%=bswList.get(k).getPhone()%></p>
							</div>
						</div>
					</div>
					<%
						k++;
						}
					%>
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
						<img src="./images/home_bg.png" alt="" style="padding-top: 30%"
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