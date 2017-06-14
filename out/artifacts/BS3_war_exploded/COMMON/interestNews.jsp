<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/14
  Time: 1:29
  To change this template use File | Settings | File Templates.
--%>
<div class="prod">
    <div class="blog-grids">
        <div class="blog-grid-left">
            <img src="STATIC/images/1b.jpg" class="img-responsive" alt="">
        </div>
        <div class="blog-grid-right">
            <a name="learn" target="_blank"
               href=<%="/LearnServlet"+"?learn=intrLearn1"
                    +"&detail="+db.getNews("detail",session.getAttribute("intrLearn1").toString(),1)%>>
                ><%=db.getNews("title",session.getAttribute("intrLearn1").toString(),1)%></a>
        </div>
        <div class="clearfix"> </div>
    </div>
    <div class="blog-grids">
        <div class="blog-grid-left">
            <img src="STATIC/images/2b.jpg" class="img-responsive" alt="">
        </div>
        <div class="blog-grid-right">
            <a name="learn" target="_blank"
               href=<%="/LearnServlet"+"?learn=intrLearn1"
                    +"&detail="+db.getNews("detail",session.getAttribute("intrLearn1").toString(),2)%>>
                ><%=db.getNews("title",session.getAttribute("intrLearn1").toString(),2)%></a>        </div>
        <div class="clearfix"> </div>
    </div>
    <div class="blog-grids">
        <div class="blog-grid-left">
            <img src="STATIC/images/3b.jpg" class="img-responsive" alt="">
        </div>
        <div class="blog-grid-right">
            <a name="learn" target="_blank"
               href=<%="/LearnServlet"+"?learn=intrLearn2"
                    +"&detail="+db.getNews("detail",session.getAttribute("intrLearn2").toString(),1)%>>
                ><%=db.getNews("title",session.getAttribute("intrLearn2").toString(),1)%></a>        </div>
        <div class="clearfix"> </div>
    </div>
    <div class="blog-grids">
        <div class="blog-grid-left">
            <img src="STATIC/images/4b.jpg" class="img-responsive" alt="">
        </div>
        <div class="blog-grid-right">
            <a name="learn" target="_blank"
               href=<%="/LearnServlet"+"?learn=intrLearn2"
                    +"&detail="+db.getNews("detail",session.getAttribute("intrLearn2").toString(),2)%>>
                ><%=db.getNews("title",session.getAttribute("intrLearn2").toString(),2)%></a>        </div>
        <div class="clearfix"> </div>
    </div>
    <div class="blog-grids">
        <div class="blog-grid-left">
            <img src="STATIC/images/5b.jpg" class="img-responsive" alt="">
        </div>
        <div class="blog-grid-right">
            <a name="learn" target="_blank"
               href=<%="/LearnServlet"+"?learn=intrLearn3"
                    +"&detail="+db.getNews("detail",session.getAttribute("intrLearn3").toString(),1)%>>
                ><%=db.getNews("title",session.getAttribute("intrLearn3").toString(),1)%></a>        </div>
        <div class="clearfix"> </div>
    </div>
    <div class="blog-grids">
        <div class="blog-grid-left">
            <img src="STATIC/images/5b.jpg" class="img-responsive" alt="">
        </div>
        <div class="blog-grid-right">
            <a name="learn" target="_blank"
               href=<%="/LearnServlet"+"?learn=intrLearn3"
                    +"&detail="+db.getNews("detail",session.getAttribute("intrLearn3").toString(),2)%>>
                ><%=db.getNews("title",session.getAttribute("intrLearn3").toString(),2)%></a>        </div>
        <div class="clearfix"> </div>
    </div>
</div>
