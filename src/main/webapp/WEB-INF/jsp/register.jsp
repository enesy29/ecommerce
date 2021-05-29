<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Üye Kayıt Sayfası</title>
</head>

<div class="container mt-5">

    <form:form action="register" modelAttribute="createUser" cssClass="form-signin" method="post">
    <h2 class="form-signin-heading text-center">Üye Ol</h2>
    <hr/>
    <div class="form-group">

        <form:input path="name" cssClass="form-control" placeholder="İsim" required="required"></form:input>
        <hr>
        <form:input path="surname" cssClass="form-control"  placeholder="Soyisim" required="required"></form:input>
        <hr>
        <form:input path="username" cssClass="form-control"  placeholder="Kullanıcı Adı" required="required"></form:input>
            <span class="form-text text-center text-danger">${alreadyExistsUser}</span>
        <form:errors path="username" cssClass="form-text text-danger"></form:errors>
        <hr>
        <form:input path="email" type = "email" cssClass="form-control"  placeholder="E Mail" required="required"></form:input>
        <hr>
        <form:input path="password" type="password" cssClass="form-control"  placeholder="Şifre" required="required"></form:input>
        <hr>

    </form:form>
        <p>Üye iseniz lütfen Giriş Yap butonuna tıklayarak giriş sayfasına gidiniz ..</p>
        <button name="submit" class="btn btn-success btn-lg my-2">Kayıt Ol</button>
        <a href="/login" class="btn btn-success btn-lg my-2">Giriş yap</a>
    </div>

        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</html>