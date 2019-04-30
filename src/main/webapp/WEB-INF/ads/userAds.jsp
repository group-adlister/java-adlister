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
        .submitDeleteButton,
        .cancelDeleteButton {
            display: none;
        }
        .editButton a {
            color: black;
            text-decoration: none;
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
        <div class="col-md-6 pb-6">
            <h2>${ad.title}</h2>
            <p><b>zip code:</b> ${ad.zipcode}</p>
            <p><b>description:</b> ${ad.description}</p>
            <p class="confirmDeleteText text-danger"><b></b></p>
            <!––delete buttons---------------------------------------------------------------------------------––>
            <div class="col-sm">
                <button class="firstDeleteButton btn-danger">Delete</button>
            </div>

            <div class="col-sm">
<<<<<<< HEAD
                <form action="/userAds" method="post">
                    <button class="submitDeleteButton btn-danger" type="submit" name="delete" value="${ad.id}">Yes, delete forever.</button>
                </form>
            </div>

            <form action="/userAds">
                <div class="col-sm">
                    <button class="cancelDeleteButton btn-secondary">No, nevermind.</button>
=======
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="#" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">${ad.title}</h5>
                        <p class="card-text">${ad.description}</p>
                        <p class="card-text">${ad.zipcode}</p>
                        <div class="row">
                            <div class="col-sm">
                                    <a href="/editAd$?edit=${ad.id}" class="btn btn-primary">Edit</a>
                            </div>
                            <!––delete button---------------------------------------------------------------------------------––>
                            <div class="col-sm">
                                     <a href="/userAds?delete=${ad.id}" class="btn btn-danger">Delete</a>
                            </div>
                            <!––---------------------------------------------------------------------------------––>
                        </div>
                    </div>
>>>>>>> a006cf1acd4288b2a92f3b1df52849dabd510e64
                </div>
            </form>
            <!––---------------------------------------------------------------------------------––>

            <!––edit button---------------------------------------------------------------------------------––>
            <div class="col-sm">
                <button class="editButton btn-warning" type="submit" name="edit"><a href="/ads/edit_ad?edit=${ad.id}&update=0">Edit</a></button>
            </div>
            <!––---------------------------------------------------------------------------------––>
        </div>
    </c:forEach>
</div>



<script>
    let firstDeleteButton = document.querySelector(".firstDeleteButton");
    let submitDeleteButton = document.querySelector(".submitDeleteButton");
    let cancelDeleteButton = document.querySelector(".cancelDeleteButton");
    let confirmDeleteteText = document.querySelector(".confirmDeleteText");
    firstDeleteButton.addEventListener("click", function(){
        firstDeleteButton.style.display = "none";
        submitDeleteButton.style.display = "block";
        cancelDeleteButton.style.display = "block";
        confirmDeleteteText.innerHTML = "Are you sure you want to delete this ad?"

    });
</script>
</body>
</html>
