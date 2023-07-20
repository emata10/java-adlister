<%--
  Created by IntelliJ IDEA.
  User: snowbunny
  Date: 7/20/23
  Time: 5:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View ads</title>
</head>
<body>
<h1>Here are all the products:</h1>

<c:forEach var="ads" items="${ads}">
    <div class="product">
        <h2>${ads.name}</h2>
        <p>Price: $ ${ads.price}</p>
    </div>
</c:forEach>

</body>
</html>

