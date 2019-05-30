<%@page import="OMS.controller.Validator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/demo.css">
        <title>JSP Page</title>
    </head>
    <body>         
        <%
            String exist = (String) session.getAttribute("existErr");
            String idErr = (String) session.getAttribute("IDErr");
            String passError = (String) session.getAttribute("passErr");
        %>
        
        <h1>Enter your details to login: <span><%=(exist != null ? exist : "")%></span></h1>

        <form action="loginAction.jsp" method="post">
            <table>                
                <tr><td>User ID:</td><td><input type="text" name="ID" value="<%=(idErr != null ? idErr : "")%>"/></td></tr>
                <tr><td>Password:</td><td><input type="password" name="password" value="<%=(passError != null ? passError : "")%>"/></td></tr>                
                <tr><td><input type="hidden" value="submitted" name="submitted"></td>
                    <td><input class="button" type="submit" value="Login"> 
                        &nbsp; 
                        <button class="button" type="button" onclick="location.href = 'index.jsp'" > Home Page </button>
                    </td>
                </tr>
            </table>
        </form>  
        <%
            if (request.getParameter("submitted") != null) {
                exist = idErr = passError = null;
            }
            
        %>
    </body>
    
</html>
