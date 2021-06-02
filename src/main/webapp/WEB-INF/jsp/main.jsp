<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<html>
<head>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i">
    <link rel="stylesheet" href="/resources/fonts/simple-line-icons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css">
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" >
    <link href="/resources/css/smoothproducts.css" rel="stylesheet">

    <title>E Ticaret Sitesi</title>


</head>
<!-- NAVBAR
================================================== -->
<header>
    <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white clean-navbar">
        <div class="container"><a class="navbar-brand logo" href="<c:url value="/" />">E.Y Ticaret Sitesi</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav ml-auto">
                    <c:if test="${empty adminSession}">
                        <li class="nav-item"><a class="nav-link" href="<c:url value="/" />">Anasayfa</a></li>
                        <li class="nav-item"><a class="nav-link" href="<c:url value="/allProducts/" />">Ürünler</a></li>
                        <c:if test="${empty userSession}">
                            <li class="nav-item"><a class="nav-link" href="<c:url value="/register" />">Kayıt Ol</a></li>
                            <li class="nav-item"><a class="nav-link" href="<c:url value="/login/" />">Giriş Yap</a></li>
                        </c:if>
                        <c:if test="${not empty userSession}">
                            <li class="nav-item"><a class="nav-link" href="<c:url value="/cart" />">Sepet</a></li>
                            <li class="nav-item"><a class="nav-link" href="<c:url value="/profile" />">Profil</a></li>
                            <li class="nav-item"><a class="nav-link" href="<c:url value="/logout/" />">Çıkış Yap</a></li>
                        </c:if>
                    </c:if>
                    <c:if test="${not empty adminSession}">
                        <li class="nav-item"><a class="nav-link" href="<c:url value="/" />">Anasayfa</a></li>
                        <li class="nav-item"><a class="nav-link" href="<c:url value="/admin" />">Admin Panel</a></li>
                        <li class="nav-item"><a class="nav-link" href="<c:url value="/logout/" />">Çıkış Yap</a></li>
                    </c:if>
                </ul>
            </div>
        </div>
    </nav>
</header>
<body>


<jsp:include page="${pageType}"></jsp:include>


<footer class="page-footer dark">
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <h5>Get started</h5>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Sign up</a></li>
                    <li><a href="#">Downloads</a></li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h5>About us</h5>
                <ul>
                    <li><a href="#">Company Information</a></li>
                    <li><a href="#">Contact us</a></li>
                    <li><a href="#">Reviews</a></li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h5>Support</h5>
                <ul>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Help desk</a></li>
                    <li><a href="#">Forums</a></li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h5>Legal</h5>
                <ul>
                    <li><a href="#">Terms of Service</a></li>
                    <li><a href="#">Terms of Use</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <p>© 2021 Copyright</p>
    </div>

</footer>

<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
<script src="/resources/js/smoothproducts.min.js"></script>
<script src="/resources/js/theme.js"></script>
<script src="/resources/js/alert.js"></script>
</body>
</html>