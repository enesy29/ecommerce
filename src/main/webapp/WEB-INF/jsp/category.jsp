<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<form name="HomeForm" action="category" method="post">
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
                <li><a href="registration">Register</a></li>
            </ul>
        </div>
    </nav>
    <div class="form-group">
        <img src="https://reimg-teknosa-cloud-prod.mncdn.com/mnresize/600/600/productimage/125076650BASE/125076650BASE_0_MC/23656490.jpg"  width="250" height="300">
        <hr>
        <img src="https://www.techindeep.com/phones/devicephotos/nokia-3.4.png"  width="250" height="300">
        <hr>
        <img src="https://sansliplatform.com/images/thumbs/0035619_AppleiPhone1164GBPurple(Mor)CepTelefonuMWLC2LL-A_600.jpeg"  width="250" height="300">
    </div>
</form>
</body>
</html>
