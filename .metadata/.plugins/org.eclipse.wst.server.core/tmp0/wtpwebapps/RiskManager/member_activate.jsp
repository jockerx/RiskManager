<!doctype html>
<html>
<head>
<title>会员激活</title>
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
								<li><a href="/SSH/login.action">HOME <span
										class="sr-only">(current)</span></a></li>
								<li>
									<%
										if (m.getState() == 0) {
									%><a class="active" href="member_activate.jsp">ACTIVE</a> <%
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
			</div>
		</div>
	</div>
	<!--header-ends-->

	<div class="typography">
		<h3>Pay Page</h3>
		<div class="container">
			<div class="col-md-8">
				<div class="bs-docs-example">
					<table class="table table-hover">
						<caption style="text-align: center;">
							<strong>会员特权一览</strong>
						</caption>
						<thead>
							<tr>
								<th style="text-align: center;">特权/要求</th>
								<th style="text-align: center;">非会员</th>
								<th style="text-align: center;">未激活/已暂停会员</th>
								<th style="text-align: center;">vip1会员</th>
								<th style="text-align: center;">vip2会员</th>
								<th style="text-align: center;">vip3会员</th>
								<th style="text-align: center;">vip4会员</th>
								<th style="text-align: center;">vip5会员</th>
							</tr>
						</thead>
						<tbody style="text-align: center;">
							<tr>
								<td>每年缴费</td>
								<td><strong>\</strong></td>
								<td><strong>\</strong></td>
								<td><strong>200</strong></td>
								<td><strong>400</strong></td>
								<td><strong>600</strong></td>
								<td><strong>800</strong></td>
								<td><strong>1000</strong></td>
							</tr>
							<tr>
								<td>查询消费记录</td>
								<td><strong>×</strong></td>
								<td><strong>×</strong></td>
								<td><strong>√</strong></td>
								<td><strong>√</strong></td>
								<td><strong>√</strong></td>
								<td><strong>√</strong></td>
								<td><strong>√</strong></td>
							</tr>
							<tr>
								<td>预订商品服务</td>
								<td><strong>×</strong></td>
								<td><strong>×</strong></td>
								<td><strong>√</strong></td>
								<td><strong>√</strong></td>
								<td><strong>√</strong></td>
								<td><strong>√</strong></td>
								<td><strong>√</strong></td>
							</tr>
							<tr>
								<td>购物返积分服务</td>
								<td><strong>×</strong></td>
								<td><strong>×</strong></td>
								<td><strong>√</strong></td>
								<td><strong>√</strong></td>
								<td><strong>√</strong></td>
								<td><strong>√</strong></td>
								<td><strong>√</strong></td>
							</tr>
							<tr>
								<td>热门商品信息推送</td>
								<td><strong>×</strong></td>
								<td><strong>×</strong></td>
								<td><strong>×</strong></td>
								<td><strong>×</strong></td>
								<td><strong>√</strong></td>
								<td><strong>√</strong></td>
								<td><strong>√</strong></td>
							</tr>
							<tr>
								<td>上门送货服务</td>
								<td><strong>×</strong></td>
								<td><strong>×</strong></td>
								<td><strong>×</strong></td>
								<td><strong>×</strong></td>
								<td><strong>×</strong></td>
								<td><strong>√</strong></td>
								<td><strong>√</strong></td>
							</tr>
							<tr>
								<td>24小时送达服务</td>
								<td><strong>×</strong></td>
								<td><strong>×</strong></td>
								<td><strong>×</strong></td>
								<td><strong>×</strong></td>
								<td><strong>×</strong></td>
								<td><strong>×</strong></td>
								<td><strong>√</strong></td>
							</tr>
							<tr>
								<td>购物优惠</td>
								<td>无优惠</td>
								<td>无优惠</td>
								<td>5%</td>
								<td>10%</td>
								<td>15%</td>
								<td>20%</td>
								<td>30%</td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>
			<div class="col-md-4" style="padding: 45px;text-align: center;border: 3px solid #F1E2E5;margin-top: 100px;">
				<p>完成缴费以激活你的账号</p>
				<form class="bs-example bs-example-form" role="form"
					style="padding: 45px" action="Member_activate">
					<div class="input-group" style="width:200px">
						<input type="text" class="form-control"
							placeholder="请输入缴费金额" name="money">
					</div>
					<br>
					<button type="submit" class="btn btn-primary" style="float:right;margin-right: 60px;">确认</button>
				</form>
			</div>
		</div>
	</div>

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
