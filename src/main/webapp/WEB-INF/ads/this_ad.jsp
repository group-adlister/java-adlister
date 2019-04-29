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
    <h1>${sessionScope.ad.title}</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
    <%--<c:forEach var="user" items="${users}">--%>
        <%--<div class="col-md-6">--%>
            <%--<h2>${users.username}</h2>--%>
            <%--<p>${users.email}</p>--%>
        <%--</div>--%>
    <%--</c:forEach>--%>
</div>
</body>
</html>
