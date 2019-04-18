<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>List of Ads @ ads/index.jsp</title>
</head>
<body>
    <table>
        <thead>
            <th>Title</th>
            <th>UserID</th>
            <th>Description</th>
        </thead>
        <c:forEach var="ad" items="${asdf}" >
            <tr>
                <td>${ad.title}</td>
                <td>${ad.userId}</td>
                <td>${ad.description}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
