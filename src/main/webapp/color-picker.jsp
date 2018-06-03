<%--
  Created by IntelliJ IDEA.
  User: computer
  Date: 6/1/18
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="partials/head.jsp" %>

</head>
<body>
<%@ include file="partials/navbar.jsp" %>

<h1>Pick a color</h1>

<form method="POST" action="/pickcolor">
    <input type="file" name="color">
    <%--<select name="color" >--%>
        <%--<option  value="blue">blue</option>--%>
        <%--<option value="red">red</option>--%>
        <%--<option value="papayawhip">papaya whip</option>--%>
        <%--<option value="cornsilk">corn silk</option>--%>
        <%--<option value="darkgrey">Dark grey</option>--%>
    <%--</select>--%>
    <button type="submit">Submit</button>

</form>

</body>
</html>
