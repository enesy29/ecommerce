<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="button" uri="http://www.springframework.org/tags/form" %>
<%@include file="header/header.jsp" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Admin Profili</title>
</head>
<body>
<div>
    <section class="jumbotron text-center">
        <div class="container">
            Admin <b>${username}</b>
            <div class="leftContainer">
                <hr>
                <a href="/adminDashboard/viewProduct/addProduct" class="btn btn-success btn-lg my-2">Ürün Ekle</a>
                <hr>
                <a href="/adminDashboard/viewProduct" class="btn btn-success btn-lg my-2">Ürün Görüntüle</a>
                <hr>
                <a href="/adminDashboard/viewProduct/deleteProduct" class="btn btn-success btn-lg my-2">Ürün Sil</a>
                <hr>
                <a href="/adminDashboard/viewProduct/updateProduct" class="btn btn-success btn-lg my-2">Ürün Güncelle</a>
                <hr>
            </div>



        </div>
        <div class="mainContainer"></div>
    </section>
</div>
</body>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</html>