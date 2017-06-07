package com.eiffai.bean.DBManager;
import java.sql.*;
public class ManageSQLServer2008 {
    //数据库的驱动名
    private final String dbDriver = "com.mysql.jdbc.Driver";
    //数据库的url地址
    private final String url = "jdbc:mysql://localhost:3306/mynews";
    private final String userName = "yyj";
    private final String password = "yang-123";
    private Connection conn = null;
    public ManageSQLServer2008(){
        //加载数据库驱动
        try {
            Class.forName(dbDriver).newInstance();
            //System.out.println("加载驱动成功");
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("数据库驱动加载失败");
        }
        //获取数据库链接
        try {
            conn = DriverManager.getConnection(url,userName,password);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.err.println("获取数据库链接失败");
        }
    }
    //执行各种SQL语句的方法
    private ResultSet execSQL(String sql,Object... args) throws SQLException{
        //建立PreparedStatement对象
        PreparedStatement pStmt = conn.prepareStatement(sql);
        //为pStmt对象设置SQL参数值
        for(int i = 0; i < args.length; i++){
            pStmt.setObject(i+1, args[i]);
        }
        //执行SQL语句
        pStmt.execute();
        //返回结果集,如果执行的SQL语句不返回结果集，则返回null
        return pStmt.getResultSet();
    }

    private void closeSQLConn(){
        //关闭数据库链接
        if(conn != null){
            try {
                conn.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }

    public String getInst(String username, int i){
        ResultSet res;
        String str="";
        try {
            res=execSQL("select * from userinfo where user_name = ?",username);
            res.next();
            str=res.getString("Interest"+i);
        }catch (SQLException e){
            System.err.println("获取兴趣模块失败");
            e.printStackTrace();
            return "Error happen";
        }
        return str;
    }

    public boolean insertAccount(String username,String password,String email,String name){
        try {
            execSQL("insert into login values(?,?,?,?);",username,password,email,name);
        } catch (SQLException e) {
            System.err.println("插入数据出错");
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
            System.err.println("数据库操作出错");
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
            System.err.println("查询数据库出错");
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
            System.err.println("操作ResultSet出错");
            e.printStackTrace();
        }
        return "hasNoUserName";
    }
}
