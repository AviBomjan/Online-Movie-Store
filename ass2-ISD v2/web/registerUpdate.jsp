<%-- 
    Document   : registerUpdate
    Created on : 2019-5-25, 15:51:55
    Author     : Admin
--%>

<%@page import="OMS.model.dao.DBManager"%>
<%@page import="OMS.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            User user =(User)session.getAttribute("user");
        %>
    </head>
    <body>
        <form action="registerUpdate.jsp" method="post">
            <table>
                <tr><td>Student ID</td><td><%= user.getID()%></td></tr>
                <tr><td>Name:</td><td><input size="30" type="text" name="name" value="<%=user.getName()%>"></td></tr>
                <tr><td>Email:</td><td><input size="30" type="text" name="email" value="<%=user.getEmail()%>"></td></tr>
                <tr><td>Password:</td><td><input size="30" type="password" name="password" value="<%=user.getPassword()%>"></td></tr>
                 <tr><td>Phone:</td><td><input size="30" type="text" name="phone" value="<%=user.getPhone()%>"></td></tr>
                <tr><td>Date of Birth:</td><td><input size="30" name="dob" value="<%=user.getDob()%>"></td></tr>  
                <tr><td></td>
                    <td><input type="hidden" value="updated" name="updated"></td>
                        <input class="button" type="submit" value="Save"> 
                        &nbsp; 
                        <button class="button" type="button" onclick="location.href = 'registerWelcome.jsp'" > back </button>
                    </td>
                </tr>
            </table>
        </form>
        <%
                DBManager manager = (DBManager)session.getAttribute("manager");
                if(request.getParameter("updated")!=null){
                   user.updateDetails(request.getParameter("name"),request.getParameter("email"),request.getParameter("password"),
                           request.getParameter("phone"),request.getParameter("dob"));
                   
                   manager.updateStudent(user.getID(), request.getParameter("email"),request.getParameter("name"),request.getParameter("password"),
                           request.getParameter("phone"),request.getParameter("dob"));
                
        
        %>
        <p class="outline">information updated</p>
        <%}%>
    </body>
</html>
