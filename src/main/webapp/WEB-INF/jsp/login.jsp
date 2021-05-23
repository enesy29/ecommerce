<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header/header.jsp" %>

<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Üye Giriş Sayfası</title>
</head>

<div class="container mt-5">

    <form:form modelAttribute="login" cssClass="form-login" method="post">
    <h2 class="form-signin-heading text-center">Giriş Yap</h2>
    <hr/>
        <c:if test="${not empty msg}">
        <div class="msg">${msg}</div>
        </c:if>
    <div class="form-group" aria-setsize="5">
        <c:if test="${not empty passwordOrUsernameError}">
            <div class="alert alert-danger">
                <p class="text-center">${passwordOrUsernameError}</p>
            </div>
        </c:if>
        <form:input path="username" cssClass="form-control"  placeholder="Kullanıcı Adı" required="required"></form:input>
        <hr>
        <form:input path="password" type="password" cssClass="form-control"  placeholder="Şifre" required="required"></form:input>
        <hr>
        </form:form>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <button name="submit" class="btn btn-success btn-lg my-2">Giriş Yap</button>
    </div>
</div>
</html>