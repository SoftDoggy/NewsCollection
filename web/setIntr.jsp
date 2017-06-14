<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Duplex a Magazine Category Flat Bootstarp responsive Website Template| Contact :: w3layouts</title>
	<%@include file="COMMON/headTag.jsp"%>
	<style type="text/css">
		.interest{
			background-color: #313842;
			opacity: 0.6;
			color: white;
			padding: 15px 32px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 16px;
			margin: 4px 2px;
			cursor: pointer;
			width: 120px;
		}
	</style>
</head>
<body>
	<div id="home" class="header">
		<%@include file="COMMON/loginHeader.jsp"%>
	</div>
	<!-- //header -->	
	<!-- bg-banner -->
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
									<li class="active"><a href="index.html">首页</a></li>
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
									<li class="dropdown1"><a href="404.jsp">旅游</a>
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
							<div class="banner-middle">
								<div class="login-page">
									<div class="account_grid">

											<h3>Choose you favorite module</h3>
											<p>You can choose at most 4 interest modules.</p>
											<script>
												var count=0
												function choose(btn) {
												    if(btn.style.opacity==1){
                                                        btn.style.opacity=0.6;
                                                        btn.value=btn.value.substr(1,btn.value.length-2)
                                                        count--
													}else if (count<4){
                                                        btn.style.opacity=1;
                                                        btn.value="-"+btn.value+"-"
                                                        count++
													}else {
													    alert("最多选择四个兴趣模块!")
													}
                                                }
											</script>
											<form action="SetInterestServlet" method="post">
												<input onclick="choose(this)" type="text" value="国内" name="国内" class="interest" readonly>
												<input onclick="choose(this)" type="text" value="体育" name="体育" class="interest" readonly>
												<input onclick="choose(this)" type="text" value="国际" name="国际" class="interest" readonly>
												<input onclick="choose(this)" type="text" value="财经" name="财经" class="interest" readonly>
												<input onclick="choose(this)" type="text" value="科技" name="科技" class="interest" readonly>
												<input onclick="choose(this)" type="text" value="军事" name="军事" class="interest" readonly>
												<input onclick="choose(this)" type="text" value="旅游" name="生活" class="interest" readonly>
												<input onclick="choose(this)" type="text" value="娱乐" name="娱乐" class="interest" readonly>
												<input onclick="choose(this)" type="text" value="游戏" name="游戏" class="interest" readonly>
												<br><br>
												<div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s">
													<input type="submit" value="确定" style="float: right;">
												</div>
											</form>

										<div class="clearfix"> </div>
									</div>
		
								</div>
							</div>
						</div>
					</div>
					<!-- //banner -->
				</div>
			</div>
		 </div>
	<%@include file="COMMON/footer.jsp"%>
	</div>
	</div>
</body>
</html>