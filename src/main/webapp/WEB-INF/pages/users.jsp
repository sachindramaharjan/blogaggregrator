<%--
  Created by IntelliJ IDEA.
  User: sachindra
  Date: 22/05/2015
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<table class="table table-hover table-bordered">
    <thead>
    <tr>
        <th>Users</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${users}" var="user">
        <tr>
            <td>
                <a href="<spring:url value="/users/${user.userid}.html" />" >
                    ${user.name}
                </a>
            </td>
        </tr>
    </c:forEach>

    </tbody>

</table>