<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8" %>
<%@ page import="com.eiffai.bean.DBManager.ManageSQLServer2008" %>
<!DOCTYPE html>
<html>
<head>
	<title>Eiffai News</title>
	<%@include file="COMMON/headTag.jsp"%>
</head>
<body>
	<div id="home" class="header">
		<%@include file="COMMON/header.jsp"%>
<div class="container">
	<div class="bg-banner">
		<div class="banner-bottom-bg">
			<div class="banner-bg"> 
				
					<!-- banner -->
					<div class="banner">
						<div class="banner-grids">
							<%@include file="COMMON/navigator.jsp"%>
							<div class="banner-middle">
								<!-- technology -->
								<div class="technology">
									<h3>SORRY !</h3>
									<p>Document or file requested was not found...</p>
									<h2>404</h2>
									<div class="back-to-home">
										<a href="index.html">Go Back to Home</a>
									</div>
								</div>
								<!-- //technology -->
							</div>
						</div>
					</div>
					<!-- //banner -->
				</div>
			</div>
		 </div>
	<%@include file="COMMON/footer.jsp"%>
</body>
</html>