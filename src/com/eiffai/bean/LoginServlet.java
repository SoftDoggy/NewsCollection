package com.eiffai.bean;

import com.eiffai.bean.DBManager.ManageSQLServer2008;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.*;

public class LoginServlet extends HttpServlet{
	 @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        //OutputStream out = response.getOutputStream();
		 	boolean flag=true;
		 	response.setCharacterEncoding("GBK");
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        String validationCode = request.getParameter("validationCode");
	        HttpSession session = request.getSession();
	        String validation_code = (String)session.getAttribute("validation_code");
//	        if(validationCode.equalsIgnoreCase(validation_code)){
//				response.getWriter().write("��֤����ȷ\n");
//	        }else{
//				response.getWriter().write("��֤�����\n");
//				//response.getWriter().print("print");
//				flag=false;
//	        }
	        ManageSQLServer2008 db = new ManageSQLServer2008();
	        String result = db.checkUser(username,password);
	        if (result.equals("hasUserNameAndPasswordCorrect")) {
				response.getWriter().write("�û������������ȷ\n");
	        } else if (result.equals("hasUserNameButPasswordInCorrect")) {
				response.getWriter().write("�û�����ȷ,���벻��ȷ\n");
				flag=false;
	        } else if (result.equals("hasNoUserName")) {
				response.getWriter().write("û�д��û�\n");
				flag=false;
	        }
	        //flag is true means the user account info is correct
			if(flag==true){
	        	//ע��session
				String sessionId = session.getId();
				Cookie cookie = new Cookie(username, sessionId);
				// �ֶ�����session����Ч��Ϊ30����
				cookie.setMaxAge(60 * 30);
				cookie.setPath(request.getContextPath());
				response.addCookie(cookie);
				// ��¼�ɹ���Ҫ�����û��ĵ�¼״̬��key���û������String��ʽ,value������Ȥģ��
				session.setAttribute("username", username);
				session.setAttribute("Interest1", db.getInst(username,1));
				session.setAttribute("Interest2", db.getInst(username,2));
				session.setAttribute("Interest3", db.getInst(username,3));
				session.setAttribute("Interest4", db.getInst(username,4));

				Map<String,Integer> map= new HashMap<String,Integer>();
				map.put("����",db.intrLearn(username,"����"));
				map.put("����",db.intrLearn(username,"����"));
				map.put("����",db.intrLearn(username,"����"));
				map.put("�ƾ�",db.intrLearn(username,"�ƾ�"));
				map.put("�Ƽ�",db.intrLearn(username,"�Ƽ�"));
				map.put("����",db.intrLearn(username,"����"));
				map.put("����",db.intrLearn(username,"����"));
				map.put("����",db.intrLearn(username,"����"));
				map.put("��Ϸ",db.intrLearn(username,"��Ϸ"));

				//��map�е�value��������
				List<Map.Entry<String,Integer>> list =
						new ArrayList<Map.Entry<String,Integer>>(map.entrySet());
				Collections.sort(list, new Comparator<Map.Entry<String, Integer>>() {
					public int compare(Map.Entry<String, Integer> o1,
									   Map.Entry<String, Integer> o2) {
						return (o2.getValue() - o1.getValue());
					}
				});
				session.setAttribute("intrLearn1",list.get(0).getKey());
				session.setAttribute("intrLearn2",list.get(1).getKey());
				session.setAttribute("intrLearn3",list.get(2).getKey());

				//System.out.println(list.get(0).getKey());
				//ת����loginHome.jsp
				RequestDispatcher rd = request.getRequestDispatcher("/loginHome.jsp");
				rd.forward(request, response);
			}
	    }

	    @Override
	    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				doGet(req,resp);
	    }
}
