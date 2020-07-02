<%@ page import="demo.userdemo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name request.getParameter("username");
    String pass1=request.getParameter("password1");
    String pass2=request.getParameter("password2");
    if(pass1.equals(pass2)&& userdemo.register(name,pass1)){
        out.println("注册成功");
        out.println("<a href='login.html'>登陆</a>");
    }else{
        out.println("注册失败");
        out.println("<a href='register.html'>重新注册</a>");
    }
%>
</body>
</html>
