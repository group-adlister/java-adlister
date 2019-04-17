<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%! int counter = 0; %>--%>
<%--<% counter += 1; %>--%>
<%--<% String name;%>--%>
<html>
<head>
    <title>hello.jsp</title>
</head>
<body>
<%@ include file="partials/navbar.jsp" %>
<%--<h1>The current count is <%= counter %>.</h1>--%>
<h1>The current count is ${counter}.</h1>


View the page source!

<%--<% name = request.getParameter("name");--%>
    <%--if (name == null) name = "Codeup";--%>
<%--%>--%>

<p>Hello ${param.name}!</p>
<%--<p>Your name has <%= name.length() %> letters in it.</p>--%>



<%-- this is a JSP comment, you will *not* see this in the html --%>
<!-- this is an HTML comment, you *will* see this in the html -->

</body>
</html>