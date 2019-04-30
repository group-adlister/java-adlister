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
<br>
<div class="container">
    <div class="row">

        <c:forEach var="ad" items="${ads}">
            <div class="d-flex col-sm justify-content-center align-items-center">
                <div class="card d-flex align-text-white bg-dark outline" style="width: 18rem;">
                    <img class="card-img-top d-none d-sm-block" src="http://lorempixel.com/250/250/animals/${ad.id}/"
                         alt="Card image cap">
                    <div class="card-body text-white">
                        <h5 class="card-title">${ad.title}</h5>
                        <p class="card-text">${ad.description}</p>
                        <p class="card-text">${ad.zipcode}</p>
                        <div class="row d-flex">
                            <div class="col-sm">

                                <button type="button" class="btn btn-info w-30">Edit</button>

                                    <a href="/editAd$?edit=${ad.id}" class="btn btn-primary">Edit</a>

                            </div>
                            <%--<!––delete button---------------------------------------------------------------------------------––>--%>
                            <div class="col-sm">

                                 <form action="/userAds" method="post">
                                     <button class="btn btn-danger w-30" type="submit" name="delete"
                                             value="Delete">Delete</button>
                                 </form>

                                     <a href="/userAds?delete=${ad.id}" class="btn btn-danger">Delete</a>

                            </div>
                            <%--<!––---------------------------------------------------------------------------------––>--%>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>
