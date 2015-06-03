<%--
  Created by IntelliJ IDEA.
  User: sachindra
  Date: 22/05/2015
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tilesx" uri="http://tiles.apache.org/tags-tiles-extras" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title><tiles:getAsString name="title"></tiles:getAsString></title>

    <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

</head>
<body>

<%--get the current attribute  general.xml--%>
<tilesx:useAttribute name="current"/>

<div class="container">
    <!-- Static navbar -->
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                        aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<spring:url value="/" />">SBA</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="${current == "index" ? "active": ""}"><a href="<spring:url value="/"/>">Home</a></li>
                    <security:authorize access="hasRole('ROLE_ADMIN')">
                        <li class="${current == "users" ? "active": ""}"><a
                                href="<spring:url value="/users.html" />">Users</a></li>
                    </security:authorize>

                    <security:authorize access="!isAuthenticated()">
                        <li class="${current == "register" ? "active": ""}"><a
                                href="<spring:url value="/register.html" />">Register</a></li>
                        <li class="${current == "login" ? "active": ""}"><a
                                href="<spring:url value="/login.html" />">Login</a></li>
                    </security:authorize>

                    <security:authorize access="isAuthenticated()">
                        <li class="${current == "account" ? "active": ""}"><a
                                href="<spring:url value="/account.html"/>">My Account</a></li>
                        <li class="${current == "logout" ? "active": ""}"><a
                                href="<spring:url value="/logout.html"/>">Logout</a></li>
                    </security:authorize>
                </ul>

            </div>
            <!--/.nav-collapse -->
        </div>
        <!--/.container-fluid -->
    </nav>

    <tiles:insertAttribute name="body"/>
</div>
<div style="text-align: center">
    <tiles:insertAttribute name="footer"/>
</div>

</body>
</html>
