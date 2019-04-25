<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>

        <%--<c:out var="${user}"/>--%>

            <c:if test="${user == null}">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/login">Login</a></li>
                    <li><a href="/register">Sign up</a></li>
                </ul>
            </c:if>

            <c:if test="${user != null}">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/logout">Logout</a></li>
                    <li><a href="/ads">Search</a></li>
                    <li><a href="/ads/create">Post</a></li>
                    <li><a href="/userAds">Your ads</a></li>
                    <li><a href="/ads">${sessionScope.user.username}</a></li>
                </ul>
            </c:if>

    </div>

    </div>
</nav>
