<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" href="css/demo.css"> 
        <script type="text/javascript" src="js/script.js"></script>
        <title>Login Page</title>
    </head>
    <body onload="startTime()">
        <div><span class="time" id="time" ></span></div>
        <h1>Enter your details to register:</h1> 
        <br>
        <form action="welcome.jsp" method="post">
            <table>
                <tr><td>Name:</td><td><input size="30" type="text" name="name"></td></tr>
                <tr><td>Email:</td><td><input size="30" type="text" name="email"></td></tr>
                <tr><td>Password:</td><td><input size="30" type="password" name="password"></td></tr>
                <tr><td>Date of Birth:</td><td><input size="30" name="dob"></td></tr>  
                 <tr><td>Agree to TOS</td><td><input type="checkbox" name="tos"></td></tr>
                <tr><td></td>
                    <td>
                        <input class="button" type="submit" value="Register"> 
                        &nbsp; 
                        <button class="button" type="button" onclick="location.href = 'index.jsp'" > Home Page </button>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>