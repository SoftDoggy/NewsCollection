package com.eiffai.bean.DBManager;
import java.sql.*;
public class ManageSQLServer2008 {
    //���ݿ��������
    private final String dbDriver = "com.mysql.jdbc.Driver";
    //���ݿ��url��ַ
    private final String url = "jdbc:mysql://localhost:3306/mynews";
    private final String userName = "yyj";
    private final String password = "yang-123";
    private Connection conn = null;
    public ManageSQLServer2008(){
        //�������ݿ�����
        try {
            Class.forName(dbDriver).newInstance();
            //System.out.println("���������ɹ�");
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("���ݿ���������ʧ��");
        }
        //��ȡ���ݿ�����
        try {
            conn = DriverManager.getConnection(url,userName,password);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.err.println("��ȡ���ݿ�����ʧ��");
        }
    }
    //ִ�и���SQL���ķ���
    private ResultSet execSQL(String sql,Object... args) throws SQLException{
        //����PreparedStatement����
        PreparedStatement pStmt = conn.prepareStatement(sql);
        //ΪpStmt��������SQL����ֵ
        for(int i = 0; i < args.length; i++){
            pStmt.setObject(i+1, args[i]);
        }
        //ִ��SQL���
        pStmt.execute();
        //���ؽ����,���ִ�е�SQL��䲻���ؽ�������򷵻�null
        return pStmt.getResultSet();
    }

    private void closeSQLConn(){
        //�ر����ݿ�����
        if(conn != null){
            try {
                conn.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }

    public String getNews(String type,String className, int num){
        ResultSet res;
        String returnStr="";
        try {
            res=execSQL("select * from news where class = ?",className);
            for(int i=0;i<num;i++){
                if(!res.next()){
                    return "";
                }
            }
            returnStr=res.getString(type);
        }catch (Exception e){
            e.printStackTrace();
        }
        return  returnStr;
    }

    public String getInst(String username, int i){
        ResultSet res;
        String str="";
        try {
            res=execSQL("select * from userinfo where user_name = ?",username);
            res.next();
            str=res.getString("Interest"+i);
        }catch (SQLException e){
            System.err.println("��ȡ��Ȥģ��ʧ��");
            e.printStackTrace();
            return "Error happen";
        }
        return str;
    }

    public int intrLearn(String username, String intr){
        ResultSet res;
        int count=0;
        try {
            res=execSQL("select "+intr+" from interestlearn where username = ?",username);
            res.next();
            count=res.getInt(intr);
        }catch (SQLException e){
            System.err.println("�����û�ϰ��ʧ��");
            e.printStackTrace();
            return -1;
        }
        return count;
    }

    public boolean setIntrLearn(String username, String intr){
        ResultSet res;
        int count;
        try {
            res=execSQL("select "+intr+" from interestlearn where username = ?",username);
            res.next();
            count=res.getInt(intr)+1;
            execSQL("UPDATE interestLearn Set "+intr+"="+count+" where username=?",username);
        }catch (SQLException e){
            System.err.println("�����û�ϰ��ʧ��");
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public boolean insertAccount(String username,String password,String email,String name){
        try {
            execSQL("insert into login values(?,?,?,?);",username,password,email,name);
            execSQL("insert into userinfo values(?,?,?,?,?,?);",username,"2017-6-10","����","����","����","�Ƽ�");
            execSQL("insert into interestlearn values(?,?,?,?,?  ,?,?,?,?,?);",username,0,0,0,0  ,0,0,0,0,0);
        } catch (SQLException e) {
            System.err.println("�������ݳ���");
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public boolean changeInterest(String username,int i,String interest){
        try {
            execSQL("UPDATE userinfo SET interest"+i+"=? WHERE user_name=? ",interest,username);
        } catch (SQLException e) {
            System.err.println("�������ݳ���");
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public int checkUni(String username,String password,String email,String name){
        ResultSet rsName = null;
        ResultSet rsEmail = null;
        try{
            rsName = execSQL("select * from login where user_name = ?;",username);
            if(rsName.next()){
                return 0;
            }
            rsEmail=execSQL("select * from login where email = ?;",email);
            if(rsEmail.next()){
                return -1;
            }
        }catch (SQLException e){
            System.err.println("���ݿ��������");
            e.printStackTrace();
            return -2;
        }
        return 1;
    }

    public String checkUser(String username,String password){
        boolean has_username = false;
        boolean password_correct = false;
        ResultSet rs = null;
        try {
            rs = execSQL("select * from login");
        } catch (SQLException e) {
            System.err.println("��ѯ���ݿ����");
            e.printStackTrace();
            return null;
        }
        try {
            while(rs.next()){
                String temp_username = rs.getString("user_name").trim();
                String temp_password = rs.getString("password").trim();
                if(username.equals(temp_username)){
                    has_username = true;
                    if(password.equals(temp_password)){
                        password_correct = true;
                        return "hasUserNameAndPasswordCorrect";
                    }
                    return "hasUserNameButPasswordInCorrect";
                }
            }
        } catch (SQLException e) {
            System.err.println("����ResultSet����");
            e.printStackTrace();
        }
        return "hasNoUserName";
    }
}
