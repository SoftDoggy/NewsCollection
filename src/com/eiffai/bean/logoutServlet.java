package com.eiffai.bean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Administrator on 2017/6/6.
 */
@WebServlet(name = "logoutServlet")
public class logoutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setHeader("Content-type", "text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(false);
        if (session == null) {
            // 没登录，重定向到首页
            String url = response.encodeRedirectURL(request.getContextPath()
                    + "/index.jsp");
            response.sendRedirect(url);
            return;
        }
        // 从session中移除登录状态
        session.removeAttribute("username");

        // 重定向到首页，URL重写方式
        String url = response.encodeRedirectURL(request.getContextPath()
                + "/index.jsp");
        response.sendRedirect(url);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
