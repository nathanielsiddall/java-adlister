<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
            <ul class="nav navbar-nav navbar-left">


                <c:if test="${loggedin != true && location == \"ads\"}">
                    <li><a href="/profile">Profile</a></li>
                </c:if>
                <c:if test="${location = "profile"}">
                    <li><a href="/ads">See Ads</a></li>
                </c:if>

            </ul>

        </div>
        <ul class="nav navbar-nav navbar-right">
            <c:choose>
                <c:when test="${loggedin != true}">
                <li><a href="/logout">logout</a></li>
                </c:when>
                <c:otherwise>
                <li><a href="/login">Login</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
