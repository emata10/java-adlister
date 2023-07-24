<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
<%--<c:if test='${pageContext.request.method.equalsIgnoreCase("POST")}'>--%>
<%--    <c:if test="${param.username == 'admin' && param.password == 'password'}">--%>
<%--      <% response.sendRedirect("/profile.jsp"); %>--%>
<%--    </c:if>--%>
<%--</c:if>--%>

<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username.equals("admin") && password.equals("password")) {
            response.sendRedirect("/profile.jsp");
        }
    }
%>

<form action="login.jsp" method="POST">
    <label for="username">Username:</label>
    <input type="text" name="username" id="username">
    <br/>
    <label for="password">Password:</label>
    <input type="password" name="password" id="password">
    <input type="submit">
</form>
<c:if test='${pageContext.request.method.equalsIgnoreCase("POST")}'>
    <c:if test='${param.username != "admin" || param.password != "password"}'>
        <p style="color: red;">Invalid username or password. Please try again.</p>
    </c:if>
</c:if>
</body>
</html>