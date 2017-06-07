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
        String rpsw = request.getParameter("regConPwd");//�õ������������
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        boolean flag=true;//��¼�Ƿ�������������Ϊ0
        if(username==null||username.trim().isEmpty()){
            response.getWriter().write("�ʺŲ���Ϊ��<br>");
//          request.setAttribute("msg", "�ʺŲ���Ϊ��");
//          request.getRequestDispatcher("/regist.jsp").forward(request, response);
            flag=false;
        }
        if(username.length()<6){
            response.getWriter().write("�ʺű������6���ַ�<br>");
            flag=false;
        }
        if(password==null||password.trim().isEmpty()){
            response.getWriter().write("���벻��Ϊ��<br>");
//            request.setAttribute("msg", "���벻��Ϊ��");
//             request.getRequestDispatcher("/regist.jsp").forward(request, response);
            flag=false;
        }
        if(password.length()<6){
            response.getWriter().write("����������6���ַ�<br>");
            flag=false;
        }
        if(!password.equals(rpsw)){
            response.getWriter().write("������������벻ͬ<br>");
//            request.setAttribute("msg", "������������벻ͬ");
//           request.getRequestDispatcher("/regist.jsp").forward(request, response);
            flag=false;
        }
        String check = "^([a-z0-9A-Z]+[-|_|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
        Pattern regex = Pattern.compile(check);
        Matcher matcher = regex.matcher(email);
        if(!matcher.matches()){
            response.getWriter().write("�����ʽ����\n");
            flag=false;
        }
        if(flag==false){
            return;
        }
        ManageSQLServer2008 mss = new ManageSQLServer2008();
        int checkUni=mss.checkUni(username,password,email,name);//1������Ψһ��0����username��Ψһ��-1����email��Ψһ
        if(checkUni==0){
            response.getWriter().write("�˻������Ѵ���");
            return;
        }else if(checkUni==-1){
            response.getWriter().write("�����˺��Ѵ���");
            return;
        }else if(checkUni==-2){
            response.getWriter().write("�ж�Ψһ����");
            return;
        }
        if(mss.insertAccount(username,password,email,name)) {
            //UserDao u = new UserDao();
            //u.addUser(username,password);//����addUser��������
            response.getWriter().write("��ϲ��" + username + "��ע��ɹ�");
//          request.setAttribute("msg", "��ϲ��"+username+"��ע��ɹ�");
//          request.getRequestDispatcher("/index.html").forward(request, response);
        }
        else{
            response.getWriter().write("���ݿ�������");
        }

	}

}
