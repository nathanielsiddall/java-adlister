<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>

    <%--<c:forEach var="ad" items="${ads}">--%>
        <%--<div class="col-md-6">--%>
            <%--<h2>${ad.title}</h2>--%>
            <%--<p>${ad.description}</p>--%>
        <%--</div>--%>
    <%--</c:forEach>--%>
<div style="display: flex; flex-wrap: wrap; " class="container">
        <c:forEach items="${ads}" var="ad">
                <div class="card mb-3 text-center  " >
                    <img class="card-img-top" src="http://via.placeholder.com/50x50" alt="Card image cap">
                    <a style=" width: auto; text-decoration: none; color: #000" href="ads/${ad.id}">

                    <div  class="card-body" >
                        <h5 class="card-title">${ad.title}</h5>
                        <p class="card-text">${ad.description}</p>
                     </div>
                    </a>
                </div>
        </c:forEach>
</div>

</body>
</html>
