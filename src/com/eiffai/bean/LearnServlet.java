package com.eiffai.bean;

import com.eiffai.bean.DBManager.ManageSQLServer2008;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Administrator on 2017/6/14.
 */
@WebServlet(name = "LearnServlet")
public class LearnServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String str=request.getParameter("learn");
        String detail=request.getParameter("detail");
        //修改用户习惯
        HttpSession session=request.getSession();
        String learn=session.getAttribute(str).toString();
        ManageSQLServer2008 db=new ManageSQLServer2008();
        db.setIntrLearn(session.getAttribute("username").toString(),learn);
        //重定向到新闻页面
        response.sendRedirect(detail);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
