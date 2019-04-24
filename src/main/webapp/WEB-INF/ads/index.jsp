<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<form action="/ads" method="get">
    <div class="form-group">
        <label for="search">search</label>
        <input id="search" name="search" class="form-control" type="text">
    </div>
    <input type="submit" class="btn btn-primary btn-block">
</form>

<div class="container">
    <h1>Here Are all the ads!</h1>
    <h1> <%= request.getParameter("search")%></h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <p>${ad.zipcode}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>

