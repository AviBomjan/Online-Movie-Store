<%-- 
    Document   : registerAction
    Created on : 2019-5-25, 15:22:34
    Author     : Admin
--%>

<%@page import="OMS.model.User"%>
<%@page import="OMS.model.dao.DBManager"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>registerAction Page</title>
    </head>
    <%
       String name = request.getParameter("name");
        String email = request.getParameter("email");
        String dob = request.getParameter("dob");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String tos = request.getParameter("tos");
        int key = (new Random()).nextInt(999999);
        String ID = "" + key;
        if(tos!=null){
            
            DBManager manager = (DBManager) session.getAttribute("manager");
            User user = new User(ID,email,name,password,phone,dob);
            manager.Register(ID, email, name, password,phone, dob);
            session.setAttribute("user",user);
            response.sendRedirect("registerWelcome.jsp"); 
        }else{
            response.sendRedirect("index.jsp"); 
            
        }
    %>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
