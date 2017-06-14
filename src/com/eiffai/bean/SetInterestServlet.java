package com.eiffai.bean;
import com.eiffai.bean.DBManager.ManageSQLServer2008;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Enumeration;

/**
 * Created by Administrator on 2017/6/13.
 */
@WebServlet(name = "SetInterestServlet" , urlPatterns = { "/SetInterestServlet" })
public class SetInterestServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        Enumeration rnames=request.getParameterNames();
        int i=0;
        HttpSession session = request.getSession();
        ManageSQLServer2008 db = new ManageSQLServer2008();
        for (Enumeration e = rnames ; e.hasMoreElements() ;) {
            String thisName=e.nextElement().toString();
            String thisValue=request.getParameter(thisName);
            if(thisValue.startsWith("-")){
                //System.out.println(thisName);
                i++;
                //System.out.println(session.getAttribute("username"));
                String username=session.getAttribute("username").toString();
               db.changeInterest(username,i,thisName);
               session.setAttribute("Interest"+i,thisName);
            }
            //System.out.println(thisName+"-------"+thisValue);
        }
        RequestDispatcher rd = request.getRequestDispatcher("loginHome.jsp");
        rd.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
