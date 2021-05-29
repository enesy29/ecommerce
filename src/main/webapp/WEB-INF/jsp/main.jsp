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
        <div class="container"><a class="navbar-brand logo" href="#">e commercial</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link" href="<c:url value="/" />">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="<c:url value="/allProducts/" />">Products</a></li>
                    <c:if test="${empty userSession}">
                            <li class="nav-item"><a class="nav-link" href="<c:url value="/login/" />">Login</a></li>
                            <li class="nav-item"><a class="nav-link" href="<c:url value="/register" />">Register</a></li>
                    </c:if>
                    <c:if test="${not empty userSession}">
                            <li class="nav-item"><a class="nav-link" href="<c:url value="/logout/" />">Logout</a></li>
                    </c:if>
                    <c:if
                            test="${not empty userSession}">
                            <li class="nav-item"><a class="nav-link" href="<c:url value="/cart" />">Cart</a></li>
                    </c:if>

                </ul>
            </div>
        </div>
    </nav>
</header>
<body>
<jsp:include page="${pageType}"></jsp:include>

<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
<script src="/resources/js/smoothproducts.min.js"></script>
<script src="/resources/js/theme.js"></script>
</body>
</html>