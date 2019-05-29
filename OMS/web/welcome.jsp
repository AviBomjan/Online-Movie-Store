<%@page import="OMS.model.dao.*"%>
<%@page import="OMS.controller.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" import="java.util.*" import="OMS.model.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
    </head>
     <%
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String dob = request.getParameter("dob");
        String password = request.getParameter("password");
        String tos = request.getParameter("tos");
        int key = (new Random()).nextInt(999999);
        String ID = "" + key;
        %>
     <body onload="startTime()">
        <div><span class="time" id="time" ></span></div>
        <h1>Hello, <%=name%></h1> 
        <p>Your email: <%=email%></p>
        <p>Your DOB: <%=dob%></p>
        <p>Your password is: <%=password%></p>
        <p>Your ID is: <%=ID%></p>
         
        <%    
            DBManager manager = (DBManager) session.getAttribute("manager");
            User user = new User(ID,name,email,password,dob);
            manager.Register(ID, email, name, password, dob);
            session.setAttribute("user",user);
        %>
           
    </body>
</html>
