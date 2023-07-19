<%--
  Created by IntelliJ IDEA.
  User: snowbunny
  Date: 7/19/23
  Time: 10:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html;" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Form</title>
</head>
<h2>Login</h2>
<body>
<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");

        if (uname.equals("admin") && pass.equals("password")) {
            response.sendRedirect("profile.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }
    }

%>
<form action="Login" method="post">
    Enter username : <input type="text" name="uname"><br>
    Enter password : <input type="password" name="pass"><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
