<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="button" uri="http://www.springframework.org/tags/form" %>
<%@include file="header/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h2>Profili Düzenle</h2>

        </div>

        <form:form action="${pageContext.request.contextPath}/dashboard/editProfile" method="post"
                   modelAttribute="user" enctype="multipart/form-data">

            <div class="form-group">
                <label for="name">Adı</label> <form:errors path="name" cssStyle="color: #ff0000;" />
                <form:input path="name" id="name" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="surname">Soyadı</label>
                <form:input path="surname" id="surname" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="username">Kullanıcı Adı</label>
                <form:textarea path="username" id="username" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="email">Email</label>  <form:errors path="price" cssStyle="color: #ff0000;" />
                <form:input path="email" id="email" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="password">Şifre</label>
                <form:input path="password" id="password" class="form-Control"/>
            </div>

            <br><br>
            <input type="submit" value="Submit" class="btn btn-default">
            <a href="<c:url value="/dashboard/" />" class="btn btn-default">Cancel</a>
        </form:form>


    </div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
