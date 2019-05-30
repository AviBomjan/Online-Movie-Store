<%-- 
    Document   : main
    Created on : 2019-5-25, 15:33:57
    Author     : Admin
--%>

<%@page import="OMS.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
           User user =(User)session.getAttribute("student");
        %>
    </head>
    <body>
        <h1>Hello World!</h1>
        <p>Your name:<%=user.getName()%></p>
    </body>
</html>
