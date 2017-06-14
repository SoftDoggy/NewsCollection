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
//				response.getWriter().write("验证码正确\n");
//	        }else{
//				response.getWriter().write("验证码错误\n");
//				//response.getWriter().print("print");
//				flag=false;
//	        }
	        ManageSQLServer2008 db = new ManageSQLServer2008();
	        String result = db.checkUser(username,password);
	        if (result.equals("hasUserNameAndPasswordCorrect")) {
				response.getWriter().write("用户名和密码均正确\n");
	        } else if (result.equals("hasUserNameButPasswordInCorrect")) {
				response.getWriter().write("用户名正确,密码不正确\n");
				flag=false;
	        } else if (result.equals("hasNoUserName")) {
				response.getWriter().write("没有此用户\n");
				flag=false;
	        }
	        //flag is true means the user account info is correct
			if(flag==true){
	        	//注册session
				String sessionId = session.getId();
				Cookie cookie = new Cookie(username, sessionId);
				// 手动设置session的有效期为30分钟
				cookie.setMaxAge(60 * 30);
				cookie.setPath(request.getContextPath());
				response.addCookie(cookie);
				// 登录成功后要存入用户的登录状态，key是用户对象的String形式,value就是兴趣模块
				session.setAttribute("username", username);
				session.setAttribute("Interest1", db.getInst(username,1));
				session.setAttribute("Interest2", db.getInst(username,2));
				session.setAttribute("Interest3", db.getInst(username,3));
				session.setAttribute("Interest4", db.getInst(username,4));

				Map<String,Integer> map= new HashMap<String,Integer>();
				map.put("国内",db.intrLearn(username,"国内"));
				map.put("体育",db.intrLearn(username,"体育"));
				map.put("国际",db.intrLearn(username,"国际"));
				map.put("财经",db.intrLearn(username,"财经"));
				map.put("科技",db.intrLearn(username,"科技"));
				map.put("军事",db.intrLearn(username,"军事"));
				map.put("旅游",db.intrLearn(username,"旅游"));
				map.put("娱乐",db.intrLearn(username,"娱乐"));
				map.put("游戏",db.intrLearn(username,"游戏"));

				//对map中的value进行排序
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
				//转发到loginHome.jsp
				RequestDispatcher rd = request.getRequestDispatcher("/loginHome.jsp");
				rd.forward(request, response);
			}
	    }

	    @Override
	    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				doGet(req,resp);
	    }
}
