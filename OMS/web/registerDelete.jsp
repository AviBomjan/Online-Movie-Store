<%-- 
    Document   : registerDelete
    Created on : 2019-5-25, 14:28:13
    Author     : Admin
--%>

<%@page import="OMS.model.User"%>
<%@page import="OMS.model.dao.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
               DBManager manager = (DBManager) session.getAttribute("manager");
               User user = (User)session.getAttribute("student");
        
        %>
    </head>
    <body>
        <%
             manager.deleteStudent(user.getID());
             session.invalidate();
        %>
        <h1>cancel register ?</h1>
        <button class="button" type="button" onclick="location.href = 'index.jsp'" > YES </button>
        
        
    </body>
</html>
