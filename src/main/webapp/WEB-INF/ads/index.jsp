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

<br>
<br>
<div class="container">
<form action="/ads" method="get">
    <div class="form-group">
        <label for="search">Search</label>
        <input id="search" name="search" class="form-control" type="text">
    </div>
    <input type="submit" class="btn btn-secondary btn-block" value="Search">
</form>

    <div class="d-flex row justify-content-center align-items-center">
    <c:forEach var="ad" items="${ads}">
                <div class="d-flex col-sm justify-content-center align-items-center">
                    <div class="card d-flex align-text-white bg-dark outline" style="width:
                    18rem;">
                        <img class="card-img-top d-none d-sm-block"
                             src="http://lorempixel.com/250/250/animals/${ad.id}/" alt="img
                        ${ad.id}">
                        <div class="card-body text-white">
                            <h5 class="card-title">${ad.title}</h5>
                            <p class="card-text text-white text-truncate">${ad.description}</p>
                            <p class="card-text">${ad.zipcode}</p>
                            <p class="card-text">Created by: ${ad.userId}</p>

                            <button type="button" class="btn btn-info sharp w-100">View</button>
                        </div>
                    </div>
                </div>
    </c:forEach>
    </div>
</div>
</body>
</html>

