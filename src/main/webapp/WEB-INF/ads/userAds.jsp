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


    <h1>These are your current listed ads:</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2><a href="/this_ad?id=${ad.id}&seller=${ad.userId}">${ad.title}</a></h2>
            <!––delete button---------------------------------------------------------------------------------––>
            <div class="col-sm">
                <form action="/userAds" method="post">
                    <button type="submit" name="delete" value="${ad.id}">Delete</button>
                </form>
            </div>
            <!––---------------------------------------------------------------------------------––>
        </div>
    </c:forEach>
</div>




</body>
</html>
