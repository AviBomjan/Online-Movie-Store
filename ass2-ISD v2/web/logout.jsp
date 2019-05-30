<%@page import="java.text.SimpleDateFormat"%>
<%@page import="OMS.model.dao.*"%>
<%@page import="OMS.controller.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="OMS.model.*" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/demo.css"> 
        <script type="text/javascript" src="js/script.js"></script>
        <title>Logout</title>
    </head>
    <body onload="startTime()">
        <div><span class="time" id="time" ></span></div>
        <%           
            DBManager manager = (DBManager)session.getAttribute("manager");
            java.util.Date date = new java.util.Date();
            String d = date.toLocaleString();
            
            UserLog log = (UserLog)session.getAttribute("log");
            log.setLogOutTime(d);
            manager.AddLog(log.getID(), log.getLoginTime(),log.getLogOutTime());
            
            session.invalidate();
        %>
        <p class="outline">You have been logged out. Click <a class="link" href="index.jsp">here</a> to return to the welcome page.</p>
    </body>
</html>
