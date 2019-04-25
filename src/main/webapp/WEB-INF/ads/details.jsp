<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ad Information" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <h1>Ad info/pic</h1>
    <c:out value="${ads}" />
    <c:forEach var="ad" items="${ads}">
        <%--<c:if test="${ad.id == }" />--%>
            <div class="col-md-6">
                <h2>${ad.id}</h2>
                <h2>${ad.description}</h2>
            </div>
    </c:forEach>

</div>
<jsp:include page="/WEB-INF/partials/includes.jsp" />

</body>
</html>
