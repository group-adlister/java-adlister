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
            <div class="col-sm">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="#" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">${ad.title}</h5>
                        <p class="card-text">${ad.description}</p>
                        <p class="card-text">${ad.zipcode}</p>
                        <div class="row">
                            <div class="col-sm">
                                <button type="button" class="btn btn-primary">Edit</button>
                            </div>
                            <!––delete button---------------------------------------------------------------------------------––>
                            <div class="col-sm">
                                 <form action="/userAds" method="post">
                                     <input class="btn btn-danger" type="submit" name="delete" value="${ad.id}">
                                 </form>
                            </div>
                            <!––---------------------------------------------------------------------------------––>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>
