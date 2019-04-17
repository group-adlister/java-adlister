<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>login.jsp</title>
    <style>
        * {
            margin: 0;
            padding: 1px;
            /*border: 1px solid gray;*/
            background-color: #EFEFEF;
            color: #333333;
        }
    </style>
</head>
<body>


    <form action="login.jsp" method="post">
        <p><strong>Username:</strong></p>
        <input type="text" placeholder="username..." name="username">
        <p><strong>Password:</strong></p>
        <input type="text" placeholder="password..." name="password">
        <br>
        <input type="submit" value="Login">
    </form>

</body>
</html>

<%

    if (request.getMethod().toLowerCase().equals("post")){
        String un = request.getParameter("username");
        String pw = request.getParameter("password");
        if (un.toLowerCase().equals("admin") && pw.equals("password")) {
            response.sendRedirect("profile.jsp");
        }
    }

%>
