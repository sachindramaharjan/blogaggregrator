<%--
  Created by IntelliJ IDEA.
  User: sachindra
  Date: 22/05/2015
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../layout/taglib.jsp" %>

<c:url var="logoutUrl" value="/logout"/>
<form action="${logoutUrl}" method="post">
    <input class="btn btn-lg btn-primary btn-block"  type="submit" value="Log out" />
    <input  type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>