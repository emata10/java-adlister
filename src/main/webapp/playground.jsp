<%--
  Created by IntelliJ IDEA.
  User: snowbunny
  Date: 7/18/23
  Time: 2:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Playground</title>
</head>
<body>
    <%!String name = "Emily"; %>
    <% name = "Bill"; %>
    <% request.setAttribute("name", "Gregory"); %>
    <h1>Hello, ${name}!</h1>
    <jsp:include page="partials/howdy.jsp"/>
</body>
</html>
