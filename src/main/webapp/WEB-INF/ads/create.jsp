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
        <div class="row">

            <h1>Create a new Ad</h1>
            <form action="/ads/create" method="post">

                <div class="input-field col s12">
                    <label for="title">Title
                        <input id="title" name="title" class="form-control" type="text">
                    </label>
                </div>

                <div class="input-field col s12">
                    <label for="description">Description
                        <textarea id="description" name="description" class="form-control"></textarea>
                    </label>
                </div>

                <div class="input-field col s12">
                    <label for="size">Size
                        <select name="size" id="size">
                            <option value="" disabled selected>Choose your option</option>
                            <option value="small"> Small</option>
                            <option value="medium"> Medium</option>
                            <option value="large"> Large</option>
                        </select>
                    </label>
                    <%--<br>--%>
                    <input type="submit" class="btn btn-block btn-primary">
                <%--</div>--%>

                <%--<div class="input-field col s12">--%>
                    <%--<select id="size">--%>
                        <%--<option value="" disabled selected>Choose your option</option>--%>
                        <%--<option value="1">Option 1</option>--%>
                        <%--<option value="2">Option 2</option>--%>
                        <%--<option value="3">Option 3</option>--%>
                    <%--</select>--%>
                    <%--&lt;%&ndash;<label>Materialize Select</label>&ndash;%&gt;--%>
                <%--</div>--%>

            <%--<h5><strong>Gender</strong></h5>--%>
                    <%--<label for="male"></label>--%>
                    <%--<input type="radio" name="gender" value="male" id="male" checked> Male<br>--%>

                    <%--<label for="female"></label>--%>
                    <%--<input type="radio" name="gender" value="female" id="female"> Female<br>--%>

                    <%--<label for="other"></label>--%>
                    <%--<input type="radio" name="gender" value="other" id="other"> Other<br>--%>



                <%--</div>--%>
            </form>
        </div>
    </div>

<jsp:include page="/WEB-INF/partials/includes.jsp" />

</body>
</html>
