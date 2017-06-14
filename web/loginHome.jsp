<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ page import="com.eiffai.bean.DBManager.ManageSQLServer2008" %>
<%ManageSQLServer2008 db = new ManageSQLServer2008();%>
<!DOCTYPE html>
<html>
<head>
    <title>WELCOME <%=session.getAttribute("username")%></title>
   <%@include file="COMMON/headTag.jsp"%>
</head>
<body>
<div id="home" class="header">
    <!--header-->
    <%@include file="COMMON/loginHeader.jsp"%>
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
                                            <% String Intr1=(String)session.getAttribute("Interest1");%>
                                            <li><h3><%=Intr1%></h3></li>
                                            <li class="mor">
                                                <a class="view" href="#">view more...</a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"> </div>
                                        <a href="single.html"><img src="STATIC/images/5.jpg" class="img-responsive" alt="" /></a>
                                        <h4><a target="_blank" href=<%=db.getNews("detail",Intr1,1)%>><%=db.getNews("title",Intr1,1)%></a></h4>
                                        <h5><a target="_blank" href=<%=db.getNews("detail",Intr1,2)%>><%=db.getNews("title",Intr1,2)%></a></h5>
                                        <h5><a target="_blank" href=<%=db.getNews("detail",Intr1,3)%>><%=db.getNews("title",Intr1,3)%></a></h5>
                                    </div>
                                    <div class="col-md-6 banner-left-grid">
                                        <ul>
                                            <% String Intr2=(String)session.getAttribute("Interest2");%>
                                            <li><h3><%=Intr2%></h3></li>
                                            <li class="mor">
                                                <a class="view" href="#">view more...</a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"> </div>
                                        <a href="single.html"><img src="/STATIC/images/9.jpg" class="img-responsive" alt="" /></a>
                                        <h4><a target="_blank" href=<%=db.getNews("detail",Intr2,1)%>><%=db.getNews("title",Intr2,1)%></a></h4>
                                        <h5><a target="_blank" href=<%=db.getNews("detail",Intr2,2)%>><%=db.getNews("title",Intr2,2)%></a></h5>
                                        <h5><a target="_blank" href=<%=db.getNews("detail",Intr2,3)%>><%=db.getNews("title",Intr2,3)%></a></h5>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="banner-bottom-left-grids">
                                    <div class="col-md-6 banner-left-grid">
                                        <ul>
                                            <% String Intr3=(String)session.getAttribute("Interest3");%>
                                            <li><h3><%=Intr3%></h3></li>
                                            <li class="mor">
                                                <a class="view" href="#">view more...</a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"> </div>
                                        <a href="single.html"><img src="STATIC/images/6.jpg" class="img-responsive" alt="" /></a>
                                        <h4><a target="_blank" href=<%=db.getNews("detail",Intr3,1)%>><%=db.getNews("title",Intr3,1)%></a></h4>
                                        <h5><a target="_blank" href=<%=db.getNews("detail",Intr3,2)%>><%=db.getNews("title",Intr3,2)%></a></h5>
                                        <h5><a target="_blank" href=<%=db.getNews("detail",Intr3,3)%>><%=db.getNews("title",Intr3,3)%></a></h5>
                                    </div>
                                    <div class="col-md-6 banner-left-grid">
                                        <ul>
                                            <% String Intr4=(String)session.getAttribute("Interest4");%>
                                            <li><h3><%=Intr4%></h3></li>
                                            <li class="mor">
                                                <a class="view" href="#">view more...</a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"> </div>
                                        <a href="single.html"><img src="STATIC/images/7.jpg" class="img-responsive" alt="" /></a>
                                        <h4><a target="_blank" href=<%=db.getNews("detail",Intr4,1)%>><%=db.getNews("title",Intr4,1)%></a></h4>
                                        <h5><a target="_blank" href=<%=db.getNews("detail",Intr4,2)%>><%=db.getNews("title",Intr4,2)%></a></h5>
                                        <h5><a target="_blank" href=<%=db.getNews("detail",Intr4,3)%>><%=db.getNews("title",Intr4,3)%></a></h5>
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
                                                <%@include file="COMMON/interestNews.jsp"%>
                                            </div>
                                            <div id="tab-2" class="product-complete-info">
                                                <%@include file="COMMON/interestNews.jsp"%>
                                            </div>
                                            <div id="tab-3" class="product-complete-info">
                                                <%@include file="COMMON/interestNews.jsp"%>
                                            </div>
                                            <div id="tab-4" class="product-complete-info">
                                                <%@include file="COMMON/interestNews.jsp"%>
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