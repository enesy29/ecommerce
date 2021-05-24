<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header/header.jsp" %>

<div class="container">

    <img class="home-image" src="<c:url value="https://fmlmarketing.com/wp-content/uploads/2020/04/e-commerce-website-web-design-FML-Marketing-Marbella-Alkmaar.png" />" alt="Online Shopping"
         height="75%"  width="75%" >
    <hr>
    <div class="carousel-caption">
        <h1><font color="black"><b>Sitemize Hoşgeldiniz !</b></font></h1>
        <a href="<c:url value="/allProducts" />" class="btn btn-success">
            <span class="glyphicon glyphicon-hand-right"></span>Alışverişe Başla</a>
        <c:if test="${empty userSession}">
        <a href="<c:url value="register" />" class="btn btn-success">
            <span class="glyphicon glyphicon-hand-right"></span>Kayıt Ol</a>
        <a href="<c:url value="login" />" class="btn btn-success">
            <span class="glyphicon glyphicon-hand-right"></span>Giriş Yap</a>
        </c:if>
    </div>

</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

