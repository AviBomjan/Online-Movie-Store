<%@page import="java.sql.ResultSet"%>
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
    
    <form action ="SearchLog.jsp" method ="post">
        <body  onload="startTime()">
            <h2 class="outline">AccessLog</h2> 
            <table>     
        <tr>
                    <td><Input type ="text" name="searchInput">
            </td>
            <td><Input type ="submit" value ="Search" name = "submit"></td>
                </tr>
                </table>
            <%
        User user = (User) session.getAttribute("user");
        DBManager manager = (DBManager) session.getAttribute("manager");
        String input = request.getParameter("searchInput");
        ResultSet g = manager.searchLog(user.getID(),input);
        %>
            <table width="100%" >

            </table>        
            <hr>
            
            <table class="account" id="AccessLog">
               
                <thead class="h">
                    <tr>
                        <td class="a">ID</td>
                        <td class="a">LoginTime</td>
                        <td class="a">LogOutTime</td>

                    </tr>
                </thead>
                <% if (input!= null){
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
     
            
    </form>

</body>
</html>