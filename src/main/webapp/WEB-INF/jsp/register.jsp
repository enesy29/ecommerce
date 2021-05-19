<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Register Sayfası</title>
</head>

<div class="container mt-5">

    <form:form modelAttribute="createUser" cssClass="form-signin">
    <h2 class="form-signin-heading text-center">Üye Ol</h2>
    <hr/>
    <div class="form-group">

        <form:input path="name" cssClass="form-control"  placeholder="İsim"></form:input>
        <form:input path="surname" cssClass="form-control"  placeholder="Soyisim"></form:input>
        <form:input path="username" cssClass="form-control"  placeholder="Kullanıcı Adı"></form:input>
        <form:input path="password" type="password" cssClass="form-control"  placeholder="Şifre"></form:input>

        <form:button name="submit" class="btn btn-lg btn-primary btn-block">Kayıt Ol</form:button>
        </form:form>

    </div>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</html>