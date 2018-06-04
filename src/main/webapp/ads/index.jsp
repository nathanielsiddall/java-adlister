<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: computer
  Date: 6/4/18
  Time: 11:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="/partials/head.jsp"/>
<body>
<jsp:include page="/partials/navbar.jsp" />

<div class="container">
    <c:forEach items="${ads}" var="item">
    <a href="ads/">
        <div class="card" >
            <div class="card-body">
                <h5 class="card-title">${item.title}</h5>
                <p class="card-text">${item.description}</p>
            </div>
        </div>
    </a>
    </c:forEach>
</div>


</body>
</html>
