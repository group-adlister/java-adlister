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

<br>
<br>
<br>

<div class="container">
    <c:forEach var="ad" items="${ads}">

        <form action="/editAd$?edit=${ad.id}" method="POST">
        <div class="row">
            <div class="col-lg">
                <p>Title</p>
                <input id="title" name="title" class="form-control" type="text" placeholder="${ad.title}">
            </div>
        </div>
        <br>

        <div class="row">
            <div class="col-lg">
                <p>Description</p>
                <input id="description" name="description" class="form-control" type="text" placeholder="${ad.description}">
            </div>
        </div>
        <br>

        <div class="row">
            <div class="col-lg">
                <p>Zipcode</p>
                <input id="zipcode" name="zipcode" class="form-control" type="text" placeholder="${ad.zipcode}">
            </div>
        </div>
        <br>

        <div class="row">
            <div class="col-lg">
                <input type="submit" class="btn btn-primary btn-block" value="Save">
            </div>
        </div>
        </form>

    </c:forEach>
</div>


</body>
</html>

