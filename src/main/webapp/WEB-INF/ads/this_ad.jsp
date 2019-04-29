<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>

    <style>
        .card-img-top {
            width: 100%;
            height: 15vw;
            object-fit: cover;
        }
        .card {
            margin-bottom: 20px;
        }

    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h1>${ad.title}</h1>
            <h2>${ad.zipcode}</h2>
            <p>${ad.description}</p>

        </div>
    </c:forEach>
</div>




</body>
</html>
