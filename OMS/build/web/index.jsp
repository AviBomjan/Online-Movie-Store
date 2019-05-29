<%@page import="java.sql.*"%>
<%@page import="OMS.controller.*"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Landing page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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

.active {
  background-color: #4CAF50;
}
        body 
        {
            background-color: f2f2f2
        }
        </style>
    </head>
    
    <body style="background:url(IndexpageBack.jpg); 
                 background-repeat: no-repeat; 
                 background-size: 100% 100%; 
                 height:100px; 
                 background-attachment: fixed">
        <ul>
            <li><a href="#home">Home</a></li>
            <li><a href="#Movies">Movies</a></li>
            <li><a href="#Genre">Genre</a></li>
            <li style="float:right"><a class="active" href="#about">About</a></li>
        </ul>
        <div align = "center">
        <h1><font color="White">Welcome to online movie store</font></h1>
        <p><font color="White">If you already have an account Please Click 
                                  <a href="login.jsp">Login</a></font></p>
        <p><font color="White">If not, Please Click 
                           <a href ="register.jsp">register</a></font></p>
        </div>
    </body>
    <jsp:include page="/ConnServlet" flush="true" />
</html>