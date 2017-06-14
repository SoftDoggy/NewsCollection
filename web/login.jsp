<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Duplex a Magazine Category Flat Bootstarp responsive Website Template| Contact :: w3layouts</title>
	<%@include file="COMMON/headTag.jsp"%>
</head>
<body>
	<div id="home" class="header">
		<%@include file="COMMON/header.jsp"%>
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
							<%@include file="COMMON/navigator.jsp"%>
							<div class="banner-middle">
								<div class="login-page">
									<div class="account_grid">
										<div class="col-md-6 login-right wow fadeInLeft" data-wow-delay="0.4s">
											<h3>REGISTERED CUSTOMERS</h3>
											<p>If you have an account with us, please log in.</p>
											<form action = "loginServlet" method="post">
												<div>
													<span>Account<label>*</label></span>
													<input type="text"  name="username" >
												</div>
												<div>
													<span>Password<label>*</label></span>
													<input type="text" name="password">
												</div>
												<div>
													<span>Verification Code<label>*</label></span>
													<input type="text" name = "validationCode">
													<img class = "validationCode_img" src="validationCode">
													<a class="forgot" href="#">Forgot Your Password?</a>
												</div>
												<input type="submit" value="Login">
											</form>
									   </div>
									   <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s">
											<h3>JOIN　US</h3>
											<p>You can sign up for free.</p>
											<form action="registerServlet" method="post">
												<div>
													<span>Account<label>*Must be more than 6 characters</label></span>
													<input type="text" name="regUsername">
												</div>
												<div>
													<span>Password<label>*Must be more than 6 characters</label></span>
													<input type="text" name="regPwd">
												</div>
												<div>
													<span>Confirmed Password<label>*</label></span>
													<input type="text" name="regConPwd">
												</div>
												<div>
													<span>Email<label>*</label></span>
													<input type="text" name="email">
												</div>
												<div>
													<span>Name</span>
													<input type="text" name="name">
												</div>
												<input type="submit" value="Sign Up">
											</form>
									   </div>	
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