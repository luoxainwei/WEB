<%@ page import="demo.userdemo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!Doctype html>
<html lang="en">
<head>
    <title>Document/jsp</title>
</head>
<body>
<%--<form action="shoping.jsp" method="post">--%>
    username=<%=request.getParameter("username")%>
    password=<%=request.getParameter("password")%>

    <%
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        if(userdemo.login(username,password)){
            out.println("welcome");
            session.setAttribute("name",username);
            response.sendRedirect("index.jsp");
        }else{
            out.println("登陆失败");
            response.sendRedirect("login.html");
        }
    %>
<%--</form>--%>
</body>
</html>
