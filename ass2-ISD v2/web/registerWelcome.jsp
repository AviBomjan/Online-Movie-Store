<%-- 
    Document   : registertWelcome
    Created on : 2019-5-30, 12:05:34
    Author     : Admin
--%>


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
        User user =(User)session.getAttribute("user");
        %>
     <body onload="startTime()">
        <div><span class="time" id="time" ></span></div>
        <h1>Hello, <%=user.getName()%></h1> 
        <p>Your email: <%=user.getEmail()%></p>
        <p>Your DOB: <%=user.getDob()%></p>
        <p>Your password is: <%=user.getPassword()%></p>
        <p>Your phone is :<%=user.getPhone()%></p>
        <p>Your ID is: <%=user.getID()%></p>
        <p>Your Role is: <%=user.getRole()%></p>
         <button class="button" type="button" onclick="location.href = 'index.jsp'" > Main Page </button>
         <button class="button" type="button" onclick="location.href = 'registerDelete.jsp'" > cancel</button>
         <button class="button" type="button" onclick="location.href = 'registerUpdate.jsp'" > update information </button> 
         
       
    </body>
</html>

