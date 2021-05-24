<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<html>
<head>

    <title>E Ticaret Sitesi</title>

    <!-- Angular JS -->
    <script
            src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js">

    </script>

    <%--Jquery--%>
    <script type="text/javascript"
            src="https://code.jquery.com/jquery-2.1.4.min.js"></script>

    <%--Data Table--%>
    <script type="text/javascript"
            src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    <link
            href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css"
            rel="stylesheet">


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

            <c:if
                    test="${pageContext.request.userPrincipal.name  == 'admin'}">
                <a href="<c:url value="/admin" />">
                    <span class="glyphicon glyphicon-user"></span>&nbsp; Admin</a>
            </c:if>

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
                <span class="glyphicon glyphicon-shopping-cart"></span>&nbsp; Cart</a>
        </c:if>
    </div>
</div>

<br/><br/><br/>