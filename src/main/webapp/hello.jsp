<%--
  Created by IntelliJ IDEA.
  User: snowbunny
  Date: 7/19/23
  Time: 3:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Hello</title>
</head>
<body>
<h1>Hello ${name}</h1>
<h1>The number is ${theNumber}.</h1>


<div class="container">
    <h1>Enter your name below!</h1>
    <form action="/hello" method="POST">
        <div class="form-group">
            <label for="name">Enter your name:</label>
            <!--Parameter name = "name"-->
            <input id="name" name="name" class="form-control" type="text">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Submit">
    </form>
</div>


</body>
</html>