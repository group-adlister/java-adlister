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

<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <c:if test=""></c:if>
        <div class="col-md-6">
            <h2><a href="ads/details">${ad.title}</a></h2>
            <p>${ad.description}</p>

            <%--<p>asdf ${searchResults} asdf</p>--%>
            <%--<h2><a href="/this_ad/" id="${ad.id}">${ad.title}</a></h2>--%>
            <%--<p>${"searchResults"}</p>--%>
            <p>${ad.categoryId}</p>

        </div>
    </c:forEach>
</div>
<jsp:include page="/WEB-INF/partials/includes.jsp" />

</body>
</html>
