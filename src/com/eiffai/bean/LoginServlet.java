package com.eiffai.bean;

import com.eiffai.bean.DBManager.ManageSQLServer2008;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class LoginServlet extends HttpServlet{
	 @Override
	    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        //OutputStream out = resp.getOutputStream();
		 	boolean flag=true;
		 	resp.setCharacterEncoding("GBK");
	        String username = req.getParameter("username");
	        String password = req.getParameter("password");
	        String validationCode = req.getParameter("validationCode");
	        HttpSession session = req.getSession();
	        String validation_code = (String)session.getAttribute("validation_code");
//	        if(validationCode.equalsIgnoreCase(validation_code)){
//				resp.getWriter().write("验证码正确\n");
//	        }else{
//				resp.getWriter().write("验证码错误\n");
//				//resp.getWriter().print("print");
//				flag=false;
//	        }
	        ManageSQLServer2008 db = new ManageSQLServer2008();
	        String result = db.checkUser(username,password);
	        if (result.equals("hasUserNameAndPasswordCorrect")) {
				resp.getWriter().write("用户名和密码均正确\n");
	        } else if (result.equals("hasUserNameButPasswordInCorrect")) {
				resp.getWriter().write("用户名正确,密码不正确\n");
				flag=false;
	        } else if (result.equals("hasNoUserName")) {
				resp.getWriter().write("没有此用户\n");
				flag=false;
	        }
	        //flag is true means the user account info is correct
			if(flag==true){
	        	//注册session
				String sessionId = session.getId();
				Cookie cookie = new Cookie(username, sessionId);
				// 手动设置session的有效期为30分钟
				cookie.setMaxAge(60 * 30);
				cookie.setPath(req.getContextPath());
				resp.addCookie(cookie);
				// 登录成功后要存入用户的登录状态，key是用户对象的String形式,value就是兴趣模块
				session.setAttribute("username", username);
				session.setAttribute("Interest1", db.getInst(username,1));
				session.setAttribute("Interest2", db.getInst(username,2));
				session.setAttribute("Interest3", db.getInst(username,3));
				session.setAttribute("Interest4", db.getInst(username,4));

				//转发到loginHome.jsp
				RequestDispatcher rd = req.getRequestDispatcher("loginHome.jsp");
				rd.forward(req, resp);
			}
	    }
	    @Override
	    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        doGet(req,resp);
	    }
}
