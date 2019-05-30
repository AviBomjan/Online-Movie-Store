
<%@page contentType="text/html" import="OMS.model.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/demo.css"> 
        <script type="text/javascript" src="js/script.js"></script>
        <style>
                    ul 
        {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }
        li 
        {
            float: left;
        }
        li a 
        {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}
        </style>
        <title>Welcome Page</title>
    </head>    
    <%
        User user = (User)session.getAttribute("userLogin");
        UserLog log = (UserLog)session.getAttribute("log");
        %>
    <ul>
            <li><a href="#home">Home</a></li>
            <li><a href="#Movies">Movies</a></li>
            <li><a href="#Genre">Genre</a></li>
            <li style="float:right"><a class="active" href="#about">About</a></li>
        </ul>
        <body onload="startTime()">
         
        <div><span class="time" id="time" ></span></div>
        <% if(user != null) { %>        
        <h1>Hello, <%= user.getName() %></h1> 
        <p>Your ID is: <%= user.getID() %></p>
        <p>Your email: <%= user.getEmail() %></p>
        <p>Your DOB: <%= user.getDob() %></p>
        <p>Your password is: <%= user.getPassword() %></p>        
        <p>Your Role is: <%= user.getRole()%></p>     
        <%            
            session.setAttribute("user",user);
        %>
        <button class="button" type="button" onclick="location.href = 'index.jsp'" > Main Page </button>
        <%}else{%>
        <p class="outline"> Login unsuccessful! </p>
        <button class="button" type="button" onclick="location.href = 'index.jsp'" > Main Page </button>
        <%}%>        
        <button class="button" type="button" onclick="location.href = 'AccessLog.jsp'" > AccessLog Page </button>
        <button class="button" type="button" onclick="location.href = 'logout.jsp'" > Log Out </button>
    </body>
</html>
