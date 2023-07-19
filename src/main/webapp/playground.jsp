<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <% request.setAttribute("writingCode", true); %>
<c:choose>
    <c:when test="${writingCode}">
        Learning about JSTL!
    </c:when>
    <c:otherwise>
        "You're already an expert on JSTL!"
    </c:otherwise>
</c:choose>
<c:if test="${writingCode}">
    We're still writing code!
</c:if>
<%! ArrayList<String> names = new ArrayList<>(); %>
<% names.add("Brittany");
    names.add("Jessica");
    names.add("Brad");
    names.add("Mahmoud");
    request.setAttribute("names", names);
    %>
        <ul>
    <c:forEach items="${names}" var="str">
        <li>$</li>
    </c:forEach>
        </ul>



</body>
</html>
