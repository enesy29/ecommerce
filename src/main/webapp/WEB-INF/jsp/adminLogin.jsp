<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header/header.jsp" %>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Admin Giriş Sayfası</title>
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
        <button name="submit" class="btn btn-success btn-lg my-2">Giriş Yap</button>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</html>