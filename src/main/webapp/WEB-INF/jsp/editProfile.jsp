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