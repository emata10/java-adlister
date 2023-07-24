<%--
  Created by IntelliJ IDEA.
  User: snowbunny
  Date: 7/24/23
  Time: 4:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Playground</title>
    <style>
        body {
            background: olivedrab;
        }
    </style>
</head>
<body>
<%! String name = "David"; %>
<% name = "Bill"; %>
<h1>Hello, <%= name %>!</h1> <%-- Should see Hello, Bill! --%>
<% request.setAttribute("name", "Gregory"); %>
<h1>Hello, ${name}!</h1> <%-- Should see Hello, Gregory! --%>
<jsp:include page="partials/howdy.jsp" />
<% request.setAttribute("writingCode", true); %>
<c:choose>
    <c:when test="${writingCode}">
        Learning about JSTL!
    </c:when>
    <c:otherwise>
        You're already an expert on JSTL!
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
        <li>${str}</li>
    </c:forEach>
</ul>
</body>
</html>
