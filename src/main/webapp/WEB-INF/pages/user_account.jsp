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

<h1>${user.name}</h1>

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
    Add New Blog
</button>

<form:form commandName="blog" class="form-horizontal">
    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">Name</label>

                        <div class="col-sm-10">
                            <form:input path="name" cssClass="form-control"/>
                            <form:errors path="name" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">Url</label>

                        <div class="col-sm-10">
                            <form:input path="url" cssClass="form-control"/>
                            <form:errors path="url" />
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
</form:form>


<div role="tabpanel">

    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
        <c:forEach items="${user.bloglist}" var="blog" varStatus="status">
            <li role="presentation" class=" <c:if test="${status.count == 1}">active</c:if>"><a href="#blog_${blog.blogid}" aria-controls="blog_${blog.blogid}" role="tab"
                                                      data-toggle="tab">${blog.name}</a></li>
        </c:forEach>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
        <c:forEach items="${user.bloglist}" var="blog" varStatus="status">
            <div role="tabpanel" class="tab-pane <c:if test="${status.count == 1}">active</c:if>" id="blog_${blog.blogid}">
                <h2>${blog.name}</h2>
                <p><i>${blog.url}</i></p>

                <c:if test="${blog.itemlist.size() > 0}">
                <table class="table table-border table-hover">
                    <thead>
                    <tr>
                        <th>Title</th>
                        <th>Link</th>
                        <th>Published Date</th>
                    </tr>
                    </thead>
                    <tbody>
                    </c:if>

                    <c:forEach items="${blog.itemlist}" var="item">
                        <tr>
                            <td>${item.title}</td>
                            <td>${item.link}</td>
                            <td>${item.publisedDate}</td>
                        </tr>

                    </c:forEach>
                    <c:if test="${blog.itemlist.size() > 0}">
                    </tbody>
                </table>
                </c:if>

                <a href="<spring:url value="/blog/remove/${blog.blogid}.html" />" class="btn btn-danger triggerRemove">Remove Blog</a>

            </div>
        </c:forEach>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="modalRemove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Remove Blog</h4>
            </div>
            <div class="modal-body">
                Are you sure you want to delete this blog?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                <a href="" class="btn btn-danger removeBtn">Remove</a>
            </div>
        </div>
    </div>
</div>

