<%--
  Created by IntelliJ IDEA.
  User: sachindra
  Date: 22/05/2015
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../layout/taglib.jsp" %>


<script type="text/javascript">
    $(document).ready(function(){
        $(".triggerRemove").click(function(e){
            e.preventDefault();
            $("#modalRemove .removeBtn").attr("href", $(this).attr("href")); //get href attribute from triggerRemove class and assign to removeBtn class
            $("#modalRemove").modal();
        });
    });

</script>

<table class="table table-hover">
    <thead>
    <tr>
        <th>Users</th>
        <th></th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${users}" var="user">
        <tr>
            <td>
                <a href="<spring:url value="/users/${user.userid}.html" />">
                    <c:out value="${user.name}"/>
                </a>
            </td>
            <td>

                    <a href="<spring:url value="/users/remove/${user.userid}.html" /> " class="btn btn-danger triggerRemove">Remove
                        User</a>

            </td>
        </tr>
    </c:forEach>

    </tbody>

</table>

<!-- Modal -->
<div class="modal fade" id="modalRemove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Remove Blog</h4>
            </div>
            <div class="modal-body">
                Are you sure you want to delete this user?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                <a href="" class="btn btn-danger removeBtn">Remove</a>
            </div>
        </div>
    </div>
</div>