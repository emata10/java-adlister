<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="navbar.jsp" />

<div class="container">
    <h1>Viewing your profile.</h1>
    <h1>Viewing ${user}'s profile.</h1>
</div>

</body>
</html>
