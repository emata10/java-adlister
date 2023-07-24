<%--
  Created by IntelliJ IDEA.
  User: snowbunny
  Date: 7/24/23
  Time: 3:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "some title" %></title>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
<c:if test="true">
    <h1>Variable names should be very descriptive</h1>
</c:if>
<c:if test="false">
    <h1>single letter variable names are good</h1>
</c:if>
<jsp:include page="partials/navbar.jsp" />
<div class="container">
    <h1>Welcome to the Adlister!</h1>
</div>
</body>
</html>
