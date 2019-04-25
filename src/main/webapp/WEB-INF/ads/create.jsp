<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">

                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control"></textarea>

                <%--<h5><strong>Gender</strong></h5>--%>
                <%--<label for="male"></label>--%>
                <%--<input type="radio" name="gender" value="male" id="male" checked> Male<br>--%>

                <%--<label for="female"></label>--%>
                <%--<input type="radio" name="gender" value="female" id="female"> Female<br>--%>

                <%--<label for="other"></label>--%>
                <%--<input type="radio" name="gender" value="other" id="other"> Other<br>--%>

                <label for="size">Size</label>
                <select name="size" id="size">
                    <option value="small"> Small</option>
                    <option value="medium"> Medium</option>
                    <option value="large"> Large</option>
                </select>



            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
    <jsp:include page="/WEB-INF/partials/includes.jsp" />

</body>
</html>
