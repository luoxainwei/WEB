
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!Doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document/jsp</title>
  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

当前登陆用户<%=session.getAttribute("name")%>;
<a href='shoping.jsp'>去购买吧</a>
<%
  if(session.getAttribute("name")!=null){
    out.println("<a href='logout.jsp'>" +
            "<button type=\"reset\" class=\"btn btn-danger\">注销</button>" +
            "</a>");
  }else{
    out.println("<a href='login.html'>" +
            "<button type=\"reset\" class=\"btn btn-primary\">登陆</button>" +
            "</a>");
  }
%>
</body>
</html>
