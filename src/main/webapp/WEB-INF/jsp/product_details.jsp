<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header/header.jsp" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>E Commercial Site</title>
</head>
<body>
<form name="HomeForm" action="product_details" method="post">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">E-Commerce</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="home">Home</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="category">Category<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="category">Huawei</a></li>
                        <li><a href="category">Nokia</a></li>
                        <li><a href="category">Apple</a></li>
                    </ul>
                </li>
                <li><a href="login">Login</a></li>
                <li><a href="register">Register</a></li>
            </ul>
        </div>
    </nav>
    <div class="form-group">
        <hr>
        <img src="https://sansliplatform.com/images/thumbs/0035619_AppleiPhone1164GBPurple(Mor)CepTelefonuMWLC2LL-A_600.jpeg"  width="250" height="300"><br>
        <p>MacBook</p><br>
        <p>Computer</p><br>
        <p>1000$</p>
    </div>
    <div class="form-group">
        <hr>
        <img src="https://reimg-teknosa-cloud-prod.mncdn.com/mnresize/600/600/productimage/125076650BASE/125076650BASE_0_MC/23656490.jpg"  width="250" height="300"><br>
        <p>Apple</p><br>
        <p>Phone</p><br>
        <p>750$</p>
    </div>
    <div class="form-group">
        <hr>
        <img src="https://www.techindeep.com/phones/devicephotos/nokia-3.4.png"  width="250" height="300"><br>
        <p>${productName}</p><br>
        <p>${category}</p><br>
        <p>${price}</p>
    </div>
</form>
</body>
</html>
