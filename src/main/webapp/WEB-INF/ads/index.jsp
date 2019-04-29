<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>

    <% String user = request.getParameter("user");
        if (user != null) {
    %>
    <jsp:include page="/WEB-INF/partials/navbar_logged_out.jsp" />
    <%
    }
    else if (user == null) {
    %>
    <jsp:include page="/WEB-INF/partials/navbar_logged_in.jsp" />
    <%
        }
    %>

<div class="container">
    <form method="get">
        <label for="search">Search</label>
        <input type="text" name="search" id="search"><br>
    </form>


    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <c:if test=""></c:if>
        <div class="col-md-6">
            <h2><a href="/this_ad?id=${ad.id}&seller=${ad.userId}">${ad.title}</a></h2>
        </div>
    </c:forEach>
</div>

</body>
</html>
