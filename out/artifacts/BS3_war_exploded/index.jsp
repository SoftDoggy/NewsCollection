<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<%@ page import="com.eiffai.bean.DBManager.ManageSQLServer2008" %>
<%ManageSQLServer2008 db = new ManageSQLServer2008();%>
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
							<%@include file="COMMON/navigator.jsp"%>
							<div class="ban-top">
								<div class="col-md-6 bann-left">
									<div class="slider">
										<!-- Slideshow 3 -->
										<ul class="rslides" id="slider">
										  <li><img src="STATIC/images/zju.jpg" class="img-responsive" alt=""></li>
											<li><img src="STATIC/images/5.jpg" class="img-responsive" alt=""></li>
										  <li><img src="STATIC/images/2.jpg" class="img-responsive" alt=""></li>
										  <li><img src="STATIC/images/3.jpg" class="img-responsive" alt=""></li>
										  <li><img src="STATIC/images/4.jpg" class="img-responsive" alt=""></li>
										</ul>
										<!-- Slideshow 3 Pager -->
										<ul id="slider3-pager">
										  <li><a href="#"><img src="STATIC/images/zjuc.jpg" class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="STATIC/images/5c.jpg" class="img-responsive" alt=""></a></li>
										  <li><a href="#"><img src="STATIC/images/2c.jpg" class="img-responsive" alt=""></a></li>
										  <li><a href="#"><img src="STATIC/images/3c.jpg" class="img-responsive" alt=""></a></li>
										  <li><a href="#"><img src="STATIC/images/4c.jpg" class="img-responsive" alt=""></a></li>
										</ul>
									</div>
								</div>
								<div class="col-md-6 bann-right">
									<p class="comments">//  Eiffai  //  May 21 2017 </p>
									<h2><a href="http://120.zju.edu.cn/">浙江大学120周年校庆</a></h2>
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
												<li><h3>国内</h3></li>
												<li class="mor">
													<a class="view" href="#">view more...</a>
												</li>
											</ul>
												<div class="clearfix"> </div>
												<a href="single.html"><img src="STATIC/images/6.jpg" class="img-responsive" alt="" /></a>
												<h4><a target="_blank" href=<%=db.getNews("detail","国内",1)%>><%=db.getNews("title","国内",1)%></a></h4>
												<h5><a target="_blank" href=<%=db.getNews("detail","国内",2)%>><%=db.getNews("title","国内",2)%></a></h5>
												<h5><a target="_blank" href=<%=db.getNews("detail","国内",3)%>><%=db.getNews("title","国内",3)%></a></h5>
											</div>
											<div class="col-md-6 banner-left-grid">
											<ul>
												<li><h3>体育</h3></li>
												<li class="mor">
													<a class="view" href="#">view more...</a>
												</li>
											</ul>
												<a href="single.html"><img src="STATIC/images/7.jpg" class="img-responsive" alt="" /></a>
												<h4><a target="_blank" href=<%=db.getNews("detail","体育",1)%>><%=db.getNews("title","体育",1)%></a></h4>
												<h5><a target="_blank" href=<%=db.getNews("detail","体育",2)%>><%=db.getNews("title","体育",2)%></a></h5>
												<h5><a target="_blank" href=<%=db.getNews("detail","体育",3)%>><%=db.getNews("title","体育",3)%></a></h5>
											</div>
											<div class="clearfix"> </div>
										</div>
										<div class="banner-bottom-left-grids">
											<div class="col-md-6 banner-left-grid">	
											<ul>
												<li><h3>国际</h3></li>
												<li class="mor">
													<a class="view" href="#">view more...</a>
												</li>
											</ul>
												<a href="single.html"><img src="STATIC/images/8.jpg" class="img-responsive" alt="" /></a>
												<h4><a target="_blank" href=<%=db.getNews("detail","国际",1)%>><%=db.getNews("title","国际",1)%></a></h4>
												<h5><a target="_blank" href=<%=db.getNews("detail","国际",2)%>><%=db.getNews("title","国际",2)%></a></h5>
												<h5><a target="_blank" href=<%=db.getNews("detail","国际",3)%>><%=db.getNews("title","国际",3)%></a></h5>
												
											</div>
											<div class="col-md-6 banner-left-grid">
											<ul>
												<li><h3>互联网</h3></li>
												<li class="mor">
													<a class="view" href="#">view more...</a>
												</li>
											</ul>
												<a href="single.html"><img src="STATIC/images/9.jpg" class="img-responsive" alt="" /></a>
												<h4><a target="_blank" href=<%=db.getNews("detail","互联网",1)%>><%=db.getNews("title","互联网",1)%></a></h4>
												<h5><a target="_blank" href=<%=db.getNews("detail","互联网",2)%>><%=db.getNews("title","互联网",2)%></a></h5>
												<h5><a target="_blank" href=<%=db.getNews("detail","互联网",3)%>><%=db.getNews("title","互联网",3)%></a></h5>
												
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
												<form action="http://www.baidu.com/baidu" target="_blank">
														<input name=tn type=hidden value=baidu>
														<input type=text name=word width="100px" value="to use baidu search, type and hit enter" onfocus="this.value = '';">
												</form>
											</div>
										<div class="pro-tb">
											<div class="product-tabs">
											<!--Horizontal Tab-->
												<div id="horizontalTab">
													<ul>
														<li><a href="#tab-1">百度</a></li>
														<li><a href="#tab-2">澎湃</a></li>
														<li><a href="#tab-3">新浪</a></li>
														 <li><a href="#tab-4">腾讯</a></li>
													</ul>
													<div id="tab-1" class="product-complete-info">
														<div class="prod">
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/1b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href=<%=db.getNews("detail","国内",1)%>><%=db.getNews("title","国内",1)%></a>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/2b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href=<%=db.getNews("detail","国内",2)%>><%=db.getNews("title","国内",2)%></a>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/3b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href=<%=db.getNews("detail","国内",3)%>><%=db.getNews("title","国内",3)%></a>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/4b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href=<%=db.getNews("detail","国内",4)%>><%=db.getNews("title","国内",4)%></a>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/5b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href=<%=db.getNews("detail","国内",5)%>><%=db.getNews("title","国内",5)%></a>
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
																	<a href=<%=db.getNews("detail","国内",1)%>><%=db.getNews("title","国内",1)%></a>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/4b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href=<%=db.getNews("detail","国内",1)%>><%=db.getNews("title","国内",1)%></a>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/3b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href=<%=db.getNews("detail","国内",1)%>><%=db.getNews("title","国内",1)%></a>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/5b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href=<%=db.getNews("detail","国内",1)%>><%=db.getNews("title","国内",1)%></a>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/5b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href=<%=db.getNews("detail","国内",1)%>><%=db.getNews("title","国内",1)%></a>
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
																	<a href=<%=db.getNews("detail","国内",1)%>><%=db.getNews("title","国内",1)%></a>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/2b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href=<%=db.getNews("detail","国内",1)%>><%=db.getNews("title","国内",1)%></a>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/4b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href=<%=db.getNews("detail","国内",1)%>><%=db.getNews("title","国内",1)%></a>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/5b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href=<%=db.getNews("detail","国内",1)%>><%=db.getNews("title","国内",1)%></a>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/6b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href=<%=db.getNews("detail","国内",1)%>><%=db.getNews("title","国内",1)%></a>
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
																	<a href=<%=db.getNews("detail","国内",1)%>><%=db.getNews("title","国内",1)%></a>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/4b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href=<%=db.getNews("detail","国内",1)%>><%=db.getNews("title","国内",1)%></a>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/3b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href=<%=db.getNews("detail","国内",1)%>><%=db.getNews("title","国内",1)%></a>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/2b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href=<%=db.getNews("detail","国内",1)%>><%=db.getNews("title","国内",1)%></a>
																</div>
																<div class="clearfix"> </div>
															</div>
															<div class="blog-grids">
																<div class="blog-grid-left">
																	<img src="STATIC/images/1b.jpg" class="img-responsive" alt="">
																</div>
																<div class="blog-grid-right">
																	<a href=<%=db.getNews("detail","国内",1)%>><%=db.getNews("title","国内",1)%></a>
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