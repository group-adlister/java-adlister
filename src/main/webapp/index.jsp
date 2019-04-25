<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar_logged_out.jsp" />
        <div class="container">
            <h1>Welcome to Exotic Animal Lister</h1>
            <%--<img src="${pageContext.request.contextPath}/WEB-INF/img/kwanzaa.png" />--%>
        </div>
    </div>
</body>
</html>
