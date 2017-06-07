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
//				resp.getWriter().write("��֤����ȷ\n");
//	        }else{
//				resp.getWriter().write("��֤�����\n");
//				//resp.getWriter().print("print");
//				flag=false;
//	        }
	        ManageSQLServer2008 db = new ManageSQLServer2008();
	        String result = db.checkUser(username,password);
	        if (result.equals("hasUserNameAndPasswordCorrect")) {
				resp.getWriter().write("�û������������ȷ\n");
	        } else if (result.equals("hasUserNameButPasswordInCorrect")) {
				resp.getWriter().write("�û�����ȷ,���벻��ȷ\n");
				flag=false;
	        } else if (result.equals("hasNoUserName")) {
				resp.getWriter().write("û�д��û�\n");
				flag=false;
	        }
	        //flag is true means the user account info is correct
			if(flag==true){
	        	//ע��session
				String sessionId = session.getId();
				Cookie cookie = new Cookie(username, sessionId);
				// �ֶ�����session����Ч��Ϊ30����
				cookie.setMaxAge(60 * 30);
				cookie.setPath(req.getContextPath());
				resp.addCookie(cookie);
				// ��¼�ɹ���Ҫ�����û��ĵ�¼״̬��key���û������String��ʽ,value������Ȥģ��
				session.setAttribute("username", username);
				session.setAttribute("Interest1", db.getInst(username,1));
				session.setAttribute("Interest2", db.getInst(username,2));
				session.setAttribute("Interest3", db.getInst(username,3));
				session.setAttribute("Interest4", db.getInst(username,4));

				//ת����loginHome.jsp
				RequestDispatcher rd = req.getRequestDispatcher("loginHome.jsp");
				rd.forward(req, resp);
			}
	    }
	    @Override
	    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        doGet(req,resp);
	    }
}
