<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="javax.servlet.annotation.WebServlet" %><%--
  Created by IntelliJ IDEA.
  User: computer
  Date: 5/31/18
  Time: 3:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="login.jsp" method="post">
    <label for="userName">Username
        <input name="userName" id="userName" type="text">
    </label>
    <label for="password"> Password
        <input name="password" id="password" type="text">
    </label>
    <label for="submit">Submit
        <input name="submit" id="submit" type="submit">
    </label>
</form>
</body>
</html>


    <%
     String userName = request.getParameter("userName");
     String password = request.getParameter("password");
     String submit = request.getParameter("submit");

    %>
<c:choose>
    <C:when test="${submit.equals(\"submit\")}">
    <c:choose>
        <c:when test="${username.equals(\"admin\") && password.equals(\"password\")}">
            <c:redirect url="/profile.jsp"></c:redirect>
        </c:when>
        <c:otherwise>
            <c:redirect url="/login.jsp"></c:redirect>

            <h1>You failed at logging in</h1>
        </c:otherwise>
    </c:choose>
    </c:when>
</c:choose>
