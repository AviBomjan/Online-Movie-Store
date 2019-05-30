<%-- 
    Document   : registerAction
    Created on : 2019-5-25, 15:22:34
    Author     : Admin
--%>


<%@page import="OMS.controller.Validator"%>
<%@page import="OMS.model.User"%>
<%@page import="OMS.model.dao.DBManager"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Action Page</title>
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
        Validator v = new Validator();
        
        if(tos!=null){
            if (!v.validateName(name)) {
                session.setAttribute("nameErr", "Name format is incorrect!");
                response.sendRedirect("register.jsp");
            } else if (!v.validatePassword(password)) {
                session.setAttribute("passErr", "Password format is incorrect");
                response.sendRedirect("register.jsp");
            } else if (!v.validateEmail(email)) {
                session.setAttribute("emailErr", "Email format is incorrect");
                response.sendRedirect("register.jsp");
            } else {
                
            DBManager manager = (DBManager) session.getAttribute("manager");
            User student = new User(ID,email,name,password,phone,dob);
            manager.Register(ID, email, name, password,phone, dob);
            session.setAttribute("user",student);
            response.sendRedirect("registerWelcome.jsp"); }
        }else{
            response.sendRedirect("index.jsp"); 
            
        }
    %>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
