package com.eiffai.bean;

import com.eiffai.bean.DBManager.ManageSQLServer2008;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Servlet implementation class registerServlet
 */
@WebServlet(name = "registerServlet", urlPatterns = { "/registerServlet" })
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerServlet() {
        // TODO Auto-generated constructor stub
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");  
        response.setContentType("text/html;charset=utf-8");  
        String username = request.getParameter("regUsername");
        String password = request.getParameter("regPwd");
        String rpsw = request.getParameter("regConPwd");//得到表单输入的内容
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        boolean flag=true;//记录是否出错，如果出错设为0
        if(username==null||username.trim().isEmpty()){
            response.getWriter().write("帐号不能为空<br>");
//          request.setAttribute("msg", "帐号不能为空");
//          request.getRequestDispatcher("/regist.jsp").forward(request, response);
            flag=false;
        }
        if(username.length()<6){
            response.getWriter().write("帐号必须多于6个字符<br>");
            flag=false;
        }
        if(password==null||password.trim().isEmpty()){
            response.getWriter().write("密码不能为空<br>");
//            request.setAttribute("msg", "密码不能为空");
//             request.getRequestDispatcher("/regist.jsp").forward(request, response);
            flag=false;
        }
        if(password.length()<6){
            response.getWriter().write("密码必须多于6个字符<br>");
            flag=false;
        }
        if(!password.equals(rpsw)){
            response.getWriter().write("两次输入的密码不同<br>");
//            request.setAttribute("msg", "两次输入的密码不同");
//           request.getRequestDispatcher("/regist.jsp").forward(request, response);
            flag=false;
        }
        String check = "^([a-z0-9A-Z]+[-|_|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
        Pattern regex = Pattern.compile(check);
        Matcher matcher = regex.matcher(email);
        if(!matcher.matches()){
            response.getWriter().write("邮箱格式不对\n");
            flag=false;
        }
        if(flag==false){
            return;
        }
        ManageSQLServer2008 mss = new ManageSQLServer2008();
        int checkUni=mss.checkUni(username,password,email,name);//1代表是唯一，0代表username不唯一，-1代表email不唯一
        if(checkUni==0){
            response.getWriter().write("账户名称已存在");
            return;
        }else if(checkUni==-1){
            response.getWriter().write("邮箱账号已存在");
            return;
        }else if(checkUni==-2){
            response.getWriter().write("判断唯一出错");
            return;
        }
        if(mss.insertAccount(username,password,email,name)) {
            //UserDao u = new UserDao();
            //u.addUser(username,password);//调用addUser（）方法
            response.getWriter().write("恭喜：" + username + "，注册成功");
//          request.setAttribute("msg", "恭喜："+username+"，注册成功");
//          request.getRequestDispatcher("/index.html").forward(request, response);
        }
        else{
            response.getWriter().write("数据库插入出错");
        }

	}

}
