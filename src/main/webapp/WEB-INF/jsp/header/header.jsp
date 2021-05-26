<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<html>
<head>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <title>E Ticaret Sitesi</title>



</head>
<!-- NAVBAR
================================================== -->
<body>
<div class="header">
    <div class="rightContainer">
        <a href="<c:url value="/" /> ">
            <span class="glyphicon glyphicon-home"></span>&nbsp; Home</a>
        <a href="<c:url value="/allProducts/" />">Products</a>
        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <a>Hello, ${pageContext.request.userPrincipal.name}</a>

        </c:if>
        <c:if test="${empty userSession}">
            <a href="<c:url value="/login/" />">
                <span class="glyphicon glyphicon-log-in"></span>&nbsp; Log In</a>
            <a href="<c:url value="/register" />">
                <span class="glyphicon glyphicon-pencil"></span>&nbsp; Sign Up</a>
        </c:if>
        <c:if test="${not empty userSession}">
            <a href="<c:url value="/logout/" />">
                <span class="glyphicon glyphicon-log-in"></span>&nbsp; Logout</a>
        </c:if>
        <c:if
                test="${not empty userSession}">
            <a href="<c:url value="/cart" />">
                <span class="ui-icon-cart"></span>&nbsp; Cart</a>
        </c:if>
    </div>
</div>

<br/><br/><br/>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>