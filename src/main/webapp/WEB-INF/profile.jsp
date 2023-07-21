<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="">
        <page>../partials/head.jsp</page>
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="../partials/navbar.jsp" />
    <h2>Welcome, <%= request.getAttribute("username") %>!</h2>
    <a href="logout">Logout</a>

    <div class="container">
        <h1>Viewing your profile.</h1>
    </div>

</body>
</html>
