<%--
  Created by IntelliJ IDEA.
  User: snowbunny
  Date: 7/20/23
  Time: 9:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guessing Game</title>
</head>
<body>
    <h1>Guess a Number between 1 and 3</h1>
    <form action="guess" method="post">
        <input type="number" name="guess" min="1" max="3" required>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
