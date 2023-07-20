<%--
  Created by IntelliJ IDEA.
  User: snowbunny
  Date: 7/20/23
  Time: 9:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pick Your Favorite Color</title>
</head>
<body>
<form action="/pickcolor" method="post">
    <label for="colorInput">Enter your favorite color:</label>
    <input type="text" id="colorInput" name="color" required>
    <button type="submit">Submit</button>
</form>

</body>
</html>
