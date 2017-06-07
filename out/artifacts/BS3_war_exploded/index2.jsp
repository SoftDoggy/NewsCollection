<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/3
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>test</title>
  </head>
  <body>
  <h3>JOIN　US</h3>
  <p>You can sign up for free.</p>
  <form action="/registerServlet" method="post">
    <div>
      <span>Account<label>*</label></span>
      <input type="text" name="regUsername">
    </div>
    <div>
      <span>Password<label>*</label></span>
      <input type="password" name="regPwd">
    </div>
    <div>
      <span>Confirmed Password<label>*</label></span>
      <input type="password" name="regConPwd">
    </div>
    <input type="submit" value="Sign Up">
  </form>
  <form action = "/loginServlet" method="post">

    <div class="loginform">
      <div class="loginform_row">
        <label>用户名:</label>
        <input type="text" class="loginform_input" name="username" />
      </div>
      <div class="loginform_row">
        <label>密码:</label>
        <input type="password" class="loginform_input" name="password" />
      </div>
      <div class = "loginform_row">
        <label>验证码:</label>
        <input type = "text" class="loginform_input_validationCode" name = "validationCode"/>
        <img class = "validationCode_img" src="/validationCode">
      </div>
      <div class="loginform_row">
        <span class = "returnInfo"></span>
        <input type="submit" class="loginform_submit" value="login" />
      </div>
      <div class="clear"></div>
    </div>
  </form>
  </body>
</html>
