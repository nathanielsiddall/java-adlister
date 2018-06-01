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
    <%@ include file="partials/head.jsp" %>

</head>
<body>
<%@ include file="partials/navbar.jsp" %>

<form action="/login.jsp" method="GET">
    <label for="userName">Username
        <input name="userName" id="userName"  type="text">
    </label>
    <label for="password"> Password
        <input name="password" id="password" type="text">
    </label>
    <label for="submit">Submit
        <button id="submit" name="submit">submit</button>
    </label>
</form>

<%@ include file="partials/footer.jsp" %>

</body>
</html>

<%
String userName = request.getParameter("userName");
String password = request.getParameter("password");


if (userName != null){

    if ("admin".equals(userName)&& "password".equals(password)){
        String url = "/profile.jsp";
        response.sendRedirect(url);
    }
    else if (!"admin".equals(userName)|| !"password".equals(password)){
        String url = "/login.jsp";
        response.sendRedirect(url);
    }
}
%>



