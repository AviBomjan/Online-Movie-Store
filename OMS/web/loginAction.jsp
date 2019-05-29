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
        <script type="text/javascript" src="js/script.js"></script>
        <title>Login Action Page</title>
    </head>
    <body>

        <%
            //Activate the database search-validate once DBManager functions are completed
            DBManager manager = (DBManager)session.getAttribute("manager");
            String ID = request.getParameter("ID");
            String password = request.getParameter("password");  
            
            User user = manager.findCustomer(ID, password);
            java.util.Date date = new java.util.Date();
            String d = date.toLocaleString();
            
            UserLog log = new UserLog(ID,d,"");
            Validator v = new Validator();
            if (v.validateID(ID) == false) {
                session.setAttribute("IDErr", "ID format is incorrect!");                
                response.sendRedirect("login.jsp");                
            } else if (v.validatePassword(password) == false) {
                session.setAttribute("passErr", "Password format is incorrect");  
                response.sendRedirect("login.jsp");                
            }
            
            if (user != null) {
                session.setAttribute("userLogin", user);
                session.setAttribute("log",log);
                response.sendRedirect("loginWelcome.jsp");                
            } else {                
                session.setAttribute("existErr", "User account does not exist!");              
                response.sendRedirect("login.jsp");                
            }           
        %>
        
    </body>
</html>
