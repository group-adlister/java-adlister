<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li>
                <form method="get">
                    <label for="search">Search</label>
                    <input type="text" name="search" id="search"><br>
                </form>
            </li>
            <c:if test="${user == null}">
                <li><a href="/register">Register</a></li>
                <li><a href="/login">Login</a></li>
            </c:if>
            <c:if test="${user != null}">
                <li><a href="/ads/create">Create Ad</a></li>
                <li><a href="/logout">Logout</a></li>
            </c:if>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<%--materialize nav bar--%>
<%--<nav>--%>
    <%--<div class="nav-wrapper">--%>
        <%--<a href="/ads" class="brand-logo center">Adlister</a>--%>
        <%--<ul id="nav-mobile" class="right hide-on-med-and-down">--%>
            <%--<li><a href="/ads/create">Create Ad</a></li>--%>
            <%--<c:if test="${user == null}">--%>
                <%--<li><a href="/register">Register</a></li>--%>
                <%--<li><a href="/login">Login</a></li>--%>
            <%--</c:if>--%>
            <%--<c:if test="${user != null}">--%>
                <%--<li><a href="/logout">Logout</a></li>--%>
            <%--</c:if>--%>

<%--<nav class="navbar navbar-default">--%>
    <%--<div class="container-fluid">--%>
        <%--<!-- Brand and toggle get grouped for better mobile display -->--%>
        <%--<div class="navbar-header">--%>
            <%--<a class="navbar-brand" href="/ads">Adlister</a>--%>
        <%--</div>--%>
        <%--<ul class="nav navbar-nav navbar-right">--%>
            <%--<li><a href="/profile">${sessionScope.user.username}</a></li>--%>
            <%--<li><a href="/logout">Log out</a></li>--%>
        <%--</ul>--%>
    <%--</div>--%>
<%--</nav>--%>