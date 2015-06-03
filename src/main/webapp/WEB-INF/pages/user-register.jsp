<%--
  Created by IntelliJ IDEA.
  User: sachindra
  Date: 22/05/2015
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../layout/taglib.jsp" %>

<form:form class="form-horizontal registrationForm" commandName="user">

    <c:if test="${param.success eq true}">
        <div class="alert alert-success">Registration Successfull!!!</div>
    </c:if>

    <div class="form-group">
        <label for="name" class="col-sm-2 control-label">Name</label>

        <div class="col-sm-10">
            <form:input path="name" cssClass="form-control"/>
            <form:errors path="name"/>
        </div>
    </div>
    <div class="form-group">
        <label for="password" class="col-sm-2 control-label">Password</label>

        <div class="col-sm-10">
            <form:password path="password" cssClass="form-control"/>
            <form:errors path="password"/>
        </div>
    </div>
    <div class="form-group">
        <label for="confirmpwd" class="col-sm-2 control-label">Password</label>

        <div class="col-sm-10">
            <input type="password" id="confirmpwd" name="confirmpwd" class="form-control"/>
        </div>
    </div>
    <div class="form-group">
        <label for="email" class="col-sm-2 control-label">Email</label>

        <div class="col-sm-10">
            <form:input path="email" cssClass="form-control"/>
            <form:errors path="email"/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">Register</button>
        </div>
    </div>
</form:form>


<script type="text/javascript">
    $(document).ready(function () {
        $(".registrationForm").validate(
                {
                    rules: {
                        name: {
                            required: true,
                            minlength: 5,
                            remote: {
                                url: "<spring:url value='/register/available.html' />",
                                type: "get",
                                data: {
                                    username: function () {
                                        return $("#name").val();
                                    }
                                }
                            }
                        },
                        email: {
                            required: true,
                            email: true
                        },
                        password: {
                            required: true,
                            minlength: 6
                        },
                        confirmpwd: {
                            required: true,
                            minlength: 6,
                            equalTo: "#password"
                        }
                    },
                    highlight: function(element) {
                        $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
                    },
                    unhighlight: function(element) {
                        $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
                    },
                    messages: {
                        name: {
                            remote: "Username already exists!"
                        }
                    }

                }
        );
    });
</script>

