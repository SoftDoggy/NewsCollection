<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<%@ page import="com.mysql.jdbc.Driver" %>   
<%@ page import="java.sql.*" %>
<%@ page import="com.eiffai.bean.DBManager.ManageSQLServer2008" %>
<%ManageSQLServer2008 db = new ManageSQLServer2008();%>
<%--<%--%>
<%--Connection conn=null;--%>
<%--ResultSet res = null;--%>
<%--Statement stm = null;--%>
<%--String sql;--%>
<%--String url = "jdbc:mysql://localhost:3306/test";--%>
<%--String username = "yyj";--%>
<%--String pwd = "yang-123";--%>
<%--Class.forName("com.mysql.jdbc.Driver");--%>
<%--conn = DriverManager.getConnection(url,username,pwd);--%>
<%--stm = conn.createStatement();--%>
<%--%>--%>
<!DOCTYPE html>
<html>
<head>
<title>Eiffai News</title>
<%@include file="COMMON/headTag.jsp"%>
</head>
<body>
<div id="home" class="header">
	<!-- header -->
	<%@include file="COMMON/header.jsp"%>
	<div class="container">
		<div class="bg-banner">
		<div class="banner-bottom-bg">
			<div class="banner-bg"> 
				
					<!-- banner -->
					<div class="banner">
						<div class="banner-grids">
							<div class="banner-top">
								<span class="menu">MENU</span>
								<ul class="nav banner-nav">                                     
										<li class="active"><a href="index.jsp">首页</a></li>
										<li class="dropdown1"><a href="culture.html">国内</a>
										</li>     
										<li class="dropdown1"><a href="lifestyle.html">国际</a>
										</li>  
										<li class="dropdown1"><a href="archives.html">体育</a>																</li>
										<li class="dropdown1"><a href="sports.html">娱乐</a>
										</li> 
										<li class="dropdown1"><a href="travel.html">财经</a>
										</li> 
										<li class="dropdown1"><a href="celebrity.html">股票</a>
										</li>
										<li class="dropdown1"><a href="fullwidth.html">直播 </a>
										</li> 
										<li class="dropdown1"><a href="404.html">旅游</a>
										</li> 
										<li class="dropdown1"><a href="contact.html">生活</a></li>
								</ul>
								<script>
									$("span.menu").click(function(){
										$(" ul.nav").slideToggle("slow" , function(){
										});
									});
								</script>
							</div>
							
								<div class="ban-top">
								<div class="col-md-6 bann-left">
									<div class="slider">
										<!-- Slideshow 3 -->
										<ul class="rslides" id="slider">
										  <li><img src="STATIC/images/1.jpg" class="img-responsive" alt=""></li>
										  <li><img src="STATIC/images/2.jpg" class="img-responsive" alt=""></li>
										  <li><img src="STATIC/images/3.jpg" class="img-responsive" alt=""></li>
										  <li><img src="STATIC/images/4.jpg" class="img-responsive" alt=""></li>
										  <li><img src="STATIC/images/5.jpg" class="img-responsive" alt=""></li>
										 
										</ul>
										<!-- Slideshow 3 Pager -->
										<ul id="slider3-pager">
										  <li><a href="#"><img src="STATIC/images/1c.jpg" class="img-responsive" alt=""></a></li>
										  <li><a href="#"><img src="STATIC/images/2c.jpg" class="img-responsive" alt=""></a></li>
										  <li><a href="#"><img src="STATIC/images/3c.jpg" class="img-responsive" alt=""></a></li>
										  <li><a href="#"><img src="STATIC/images/4c.jpg" class="img-responsive" alt=""></a></li>
										  <li><a href="#"><img src="STATIC/images/5c.jpg" class="img-responsive" alt=""></a></li>
										 
										</ul>
									</div>
								</div>
								<div class="col-md-6 bann-right">
									<p class="comments">//  Mike  //  May 14 2017  //<a href="#"> 8 Comments</a></p>
									<h2><a href="single.html">浙江大学120周年校庆</a></h2>
									<p class="text">在2017年5月21日当天，浙江大学将迎来它的120周年诞辰。</p>
								</div>
									<div class="clearfix"> </div>
								</div>
							<div class="banner-middle">
								<!-- banner-bottom-grids -->
								<div class="banner-bottom-grids">
									<!-- banner-bottom-left -->
									<div class="col-md-8 banner-bottom-left">
										<div class="banner-bottom-left-grids">
											<div class="col-md-6 banner-left-grid">
											<ul>
												<li><h3>兴趣版块1</h3></li>
												<li class="mor">
													<a class="view" href="#">view more...</a>
												</li>
											</ul>
												<div class="clearfix"> </div>
												<a href="single.html"><img src="STATIC/images/6.jpg" class="img-responsive" alt="" /></a>
												<h4><a href="single.html">Sed do eiusmod tempor incididunt ut </a></h4>
												<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
												<p class="text">Lorem ipsum ex vix illud nonummy, novum tation et his. At vix scripta patrioque scribentur...</p>
												<h5><a href="single.html">voluptatem accusantium doloremque</a></h5>
												<h5><a href="single.html">Neque porro quisquam est, qui dol</a></h5>
											</div>
											<div class="col-md-6 banner-left-grid">
											<ul>
												<li><h3>兴趣板块2</h3></li>
												<li class="mor">
													<a class="view" href="#">view more...</a>
												</li>
											</ul>
												<a href="single.html"><img src="STATIC/images/7.jpg" class="img-responsive" alt="" /></a>
												<h4><a href="single.html">But I must explain to you how mistaken</a></h4>
												<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
												<p class="text">Lorem ipsum ex vix illud nonummy, novum tation et his. At vix scripta patrioque scribentur...</p>
												<h5><a href="single.html">But who has any right to find fault with</a></h5>
												<h5><a href="single.html"> pleasure that has no annoying consequen</a></h5>
											</div>
											<div class="clearfix"> </div>
										</div>
										<div class="banner-bottom-left-grids">
											<div class="col-md-6 banner-left-grid">	
											<ul>
												<li><h3>兴趣板块3</h3></li>
												<li class="mor">
													<a class="view" href="#">view more...</a>
												</li>
											</ul>
												<a href="single.html"><img src="STATIC/images/8.jpg" class="img-responsive" alt="" /></a>
												<h4><a href="single.html">Silicon Valley Shows Signs of Dot-Com</a></h4>
												<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
												<p class="text">Lorem ipsum ex vix illud nonummy, novum tation et his. At vix scripta patrioque scribentur...</p>
												<h5><a href="single.html">vitae dicta sunt explicabo. Nemo enim</a></h5>
												<h5><a href="single.html">Numquam eius tempora incidunt labore</a></h5>
												
											</div>
											<div class="col-md-6 banner-left-grid">
											<ul>
												<li><h3>兴趣板块4</h3></li>
												<li class="mor">
													<a class="view" href="#">view more...</a>
												</li>
											</ul>
												<a href="single.html"><img src="STATIC/images/9.jpg" class="img-responsive" alt="" /></a>
												<h4><a href="single.html">explain to you how all this mistaken idea</a></h4>
												<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
												<p class="text">Lorem ipsum ex vix illud nonummy, novum tation et his. At vix scripta patrioque scribentur...</p>
												<h5><a href="single.html"> denouncing pleasure and praising pain </a></h5>
												<h5><a href="single.html">To take a trivial example, which of</a></h5>
												
											</div>
											<div class="clearfix"> </div>
										</div>

											<div class="clearfix"> </div>
										</div>
										<!-- post -->
										
										<!-- //post -->
									</div>
									<!-- //banner-bottom-left -->
									<!-- banner-bottom-right -->
									<div class="col-md-4 banner-bottom-right">
										<div class="banner-bottom-left-grids">
											<div class="search">
												<form>
													<input type="text" value="to search, type and hit enter" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'to search, type and hit enter';}" required="">
												</form>
											</div>
										<div class="pro-tb">
											<div class="product-tabs">
											<!--Horizontal Tab-->
												<div id="horizontalTab">
													<ul>
														<li><a href="#tab-1">Popular</a></li>
														<li><a href="#tab-2"> Recent</a></li>
														<li><a href="#tab-3">Comments</a></li>
														 <li><a href="#tab-4">Tags</a></li>
													</ul>
													<div id="tab-1" class="product-complete-info">
														<div class="prod">
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/1b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href="single.html">Little Invaders Fly Fishers Serving as Transports for Noxious </a>
																	<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/2b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href="single.html">Transports for Noxious Fly Fishers Serving as  Little Invaders</a>
																	<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/3b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href="single.html">Noxious Little Invaders Fly Fishers Serving as Transports for </a>
																	<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/4b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href="single.html"> Noxious Little Invaders Fly Fishers Serving as Transports for</a>
																	<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/5b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href="single.html">Serving Fly Fishers  as Transports for Noxious Little Invaders</a>
																	<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
																</div>
																<div class="clearfix"> </div>
															</div>
														</div>
													</div>
													<div id="tab-2" class="product-complete-info">
														<div class="prod">
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/5b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href="single.html">Invaders Little Fly Fishers Serving as Transports for Noxious  </a>
																	<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/4b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href="single.html">Noxious Fly Fishers Serving as Transports for Noxious Little Invaders</a>
																	<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/3b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href="single.html">Fishers Serving Fly as Transports for  Little Invaders</a>
																	<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/5b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href="single.html">Serving as Transports Fly Fishers  for Noxious Little Invaders</a>
																	<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
																</div>
																<div class="clearfix"> </div>
															</div>
														</div>
													</div>
													<div id="tab-3" class="product-complete-info">
														<div class="prod">
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/3b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href="single.html">Fishers Serving Fly  as Transports for Noxious Little Invaders</a>
																	<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/2b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href="single.html">Invaders Serving as  Fly Fishers Transports for Noxious Little </a>
																	<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/4b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href="single.html">Transports Fly Fishers Serving as  for Noxious Little Invaders</a>
																	<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/5b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href="single.html">Noxious Little Fly Fishers Serving as Transports for  Invaders</a>
																	<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/6b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href="single.html"> Serving as Transports Fly Fishers for Noxious Little Invaders</a>
																	<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
																</div>
																<div class="clearfix"> </div>
															</div>
														</div>
													</div>
													<div id="tab-4" class="product-complete-info">
														<div class="prod">
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/5b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href="single.html">Noxious Fly Fishers Serving as Transports for  Little Invaders</a>
																	<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/4b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href="single.html">Invaders Fly Fishers Serving as Transports for Noxious Little </a>
																	<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/3b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href="single.html">Little Fly Fishers Serving as Transports for Noxious Invaders</a>
																	<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/2b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href="single.html">Transports Fly Fishers Serving as Transports for Noxious Little Invaders</a>
																	<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/1b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href="single.html">Serving Fly Fishers as Transports for Noxious Little Invaders</a>
																	<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
																</div>
																<div class="clearfix"> </div>
															</div>
														</div>
														
													</div>
												</div>
												
												<!-- Responsive Tabs STATIC/js -->
												<script src="STATIC/js/jquery.responsiveTabs.js" type="text/javascript"></script>
											
												<script type="text/javascript">
													$(document).ready(function () {
														$('#horizontalTab').responsiveTabs({
															rotate: false,
															startCollapsed: 'accordion',
															collapsible: 'accordion',
															setHash: true,
															disabled: [4,5],
															activate: function(e, tab) {
																$('.info').html('Tab <strong>' + tab.id + '</strong> activated!');
															}
														});
											
														$('#start-rotation').on('click', function() {
															$('#horizontalTab').responsiveTabs('active');
														});
														$('#stop-rotation').on('click', function() {
															$('#horizontalTab').responsiveTabs('stopRotation');
														});
														$('#start-rotation').on('click', function() {
															$('#horizontalTab').responsiveTabs('active');
														});
														$('.select-tab').on('click', function() {
															$('#horizontalTab').responsiveTabs('activate', $(this).val());
														});
											
													});
												</script>
											</div>	
										</div>
										</div>
									</div>
									<!-- banner-bottom-right -->
									<div class="clearfix"> </div>
									
								</div>
								<!-- //banner-bottom-grids -->
							</div>
						</div>
					</div>
					<!-- //banner -->
				
			</div>
		 </div>
	</div>
	<%@include file="COMMON/footer.jsp"%>
</div>
</body>
</html>