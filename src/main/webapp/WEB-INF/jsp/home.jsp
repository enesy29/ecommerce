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
        <a href="<c:url value="/product/productList/all" />" class="btn btn-success">
            <span class="glyphicon glyphicon-hand-right"></span>Alışverişe Başla</a>
        <a href="<c:url value="register" />" class="btn btn-success">
            <span class="glyphicon glyphicon-hand-right"></span>Kayıt Ol</a>
        <a href="<c:url value="login" />" class="btn btn-success">
            <span class="glyphicon glyphicon-hand-right"></span>Giriş Yap</a>
    </div>

</div>
