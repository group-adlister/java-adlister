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
        .submitDeleteButton {
            display: none;
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
            <h2>${ad.title}</h2>
            <p>${ad.zipcode}</p>
            <p>${ad.description}</p>
            <p class="confirmDelete text-danger"><b></b></p>
            <!––delete button---------------------------------------------------------------------------------––>
            <div class="col-sm">
                <button class="firstDeleteButton">Delete</button>
            </div>

            <div class="col-sm">
                <form action="/userAds" method="post">
                    <button class="submitDeleteButton btn-danger" type="submit" name="delete" value="${ad.id}">Yes, delete forever.</button>
                </form>
            </div>
            <!––---------------------------------------------------------------------------------––>
        </div>
    </c:forEach>
</div>



<script>
    let submitDeleteButton = document.querySelector(".submitDeleteButton");
    let firstDeleteButton = document.querySelector(".firstDeleteButton");
    let confirmDeleteteText = document.querySelector(".confirmDelete");
    firstDeleteButton.addEventListener("click", function(){
        firstDeleteButton.style.display = "none";
        submitDeleteButton.style.display = "block";
        confirmDeleteteText.innerHTML = "Are you sure you want to delete this ad?"

    });
</script>
</body>
</html>
