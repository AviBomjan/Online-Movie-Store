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
        <title>Main Page</title>
    </head>
    <%
        User user = (User) session.getAttribute("user");
        DBManager manager = (DBManager) session.getAttribute("manager");
        ResultSet g = manager.findUserLogbyiD(user.getID());
    %>
    <form onaction ="AccessLog.jsp" method ="post">
        <body  onload="startTime()">
            <h2 class="outline">AccessLog</h2> 
           
          <hr>
            
            <table class="account" id="AccessLog">
               
                <thead class="h">
                    <tr>
                        <td class="a">ID</td>
                        <td class="a">LoginTime</td>
                        <td class="a">LogOutTime</td>

                    </tr>
                </thead>
                <% if(g!= null){
                 while (g.next()) {%>
                <tbody >
                    <tr>
                        <td class="a"><%= g.getString("ID")%></td>
                        <td class="a" ><%= g.getString("LoginTime")%></td>
                        <td class="a"><%= g.getString("LogOutTime")%></td>
                        
                    </tr>
                </tbody>
                <%}}%>
            </table>
            <p class="outline">Are you sure to delete ALL YOUR ACCESS LOGS</p>
            <Input type="submit" value="Delete" name = "submit">
            
    </form>
            <button onclick="location.href = 'SearchLog.jsp'">Search</button>
    <%
        String x = request.getParameter("submit");
        String a = request.getParameter("searchInput");
        if (x != null && x.equals("Delete")) {
            manager.deleteLog(user.getID());
            System.out.println("Sccuess");
        }
    %>
</body>
</html>
