<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit This Ad" />
    </jsp:include>

</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<br>
<br>
<br>

<div class="container">
    <c:forEach var="ad" items="${ads}">

        <div class="row">
            <div class="col-lg">
                <p>Title</p>
                <input type="text" class="form-control" id="1" placeholder="${ad.title}">
            </div>
        </div>
        <br>

        <div class="row">
            <div class="col-lg">
                <p>Description</p>
                <input type="text" class="form-control" id="2" placeholder="${ad.description}">
            </div>
        </div>
        <br>

        <div class="row">
            <div class="col-lg">
                <p>Zipcode</p>
                <input type="text" class="form-control" id="3" placeholder="${ad.zipcode}">
            </div>
        </div>
        <br>

        <div class="row">
            <div class="col-lg">
                <a href="/userAds?edit=${ad.id}&update=1" class="btn btn-success">Save</a>
            </div>
        </div>

    </c:forEach>
</div>

</body>
</html>
