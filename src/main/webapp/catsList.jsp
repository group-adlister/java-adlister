<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>catsList.jsp</title>
</head>
<body>

<table>
    <thead>
            <th>Name</th>
            <th>Age</th>
            <th>Picture</th>
    </thead>
    <c:forEach var="cat" items="${cats}" >
        <tr>
            <td>${cat.name}</td>
            <td>${cat.age}</td>
            <td><img src="${cat.picture}" width="200px"></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
