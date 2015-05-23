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

<html>
<head>
    <title><tiles:getAsString name="title"></tiles:getAsString></title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>

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
                    <li class="${current == "users" ? "active": ""}"><a
                            href="<spring:url value="/users.html" />">Users</a></li>
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
