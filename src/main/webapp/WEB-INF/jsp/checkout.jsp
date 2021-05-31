<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="button" uri="http://www.springframework.org/tags/form" %>



<head>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/checkout/">
    <meta name="theme-color" content="#7952b3">

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
</head>
<body class="bg-light">
<div class="container">
    <main>
        <div class="py-5 text-center">
            <h2>Checkout</h2>
        </div>
        <div class="row g-5">
            <div class="col-md-5 col-lg-4 order-md-last">
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="text-primary">Sepet : </span>
                    <span class="badge bg-primary rounded-pill"></span>
                </h4>
                <ul class="list-group mb-3">

                    <c:if test="${not null}">
                        <c:forEach var="cartItem" items="${cartItemList}">
                            <li class="list-group-item d-flex justify-content-between lh-sm">
                                <div>
                                    <h6 class="my-0">Ürünler</h6>
                                    <small class="text-muted">${cartItem.product.productName}</small>
                                </div>
                                <span class="text-muted">${cartItem.product.price}TL</span>
                            </li>
                        </c:forEach>
                    </c:if>

                    <li class="list-group-item d-flex justify-content-between">
                        <span>Toplam Fiyat</span>
                        <strong>${shoppingCart.grandTotal}TL</strong>
                    </li>
                </ul>
            </div>
            <div class="col-md-7 col-lg-8">
                <h4 class="mb-3">Adres</h4>
                <form action="/checkout/success" method="post" class="needs-validation" novalidate>
                    <div class="row g-3">
                        <div class="col-sm-6">
                            <label for="firstName" class="form-label">İsim</label>
                            <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                        </div>

                        <div class="col-sm-6">
                            <label for="lastName" class="form-label">Soyisim</label>
                            <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                        </div>

                        <div class="col-12">
                            <label for="username" class="form-label">Kullanıcı Adı</label>
                            <div class="input-group has-validation">
                                <span class="input-group-text">@</span>
                                <input type="text" class="form-control" id="username" placeholder="Username" required>
                            </div>
                        </div>

                        <div class="col-12">
                            <label for="email" class="form-label">Email <span class="text-muted">(Optional)</span></label>
                            <input type="email" class="form-control" id="email" placeholder="you@example.com">
                        </div>

                        <div class="col-12">
                            <label for="address" class="form-label">Adres</label>
                            <input type="text" class="form-control" id="address" placeholder="1234 Main St" required>
                        </div>

                        <div class="col-12">
                            <label for="address2" class="form-label">Adres 2 <span class="text-muted">(Optional)</span></label>
                            <input type="text" class="form-control" id="address2" placeholder="Apartment or suite">
                        </div>

                    </div>

                    <hr class="my-4">

                    <h4 class="mb-3">Ödeme</h4>

                    <div class="row gy-3">
                        <div class="col-md-6">
                            <label for="cc-name" class="form-label">Kartın Sahibinin Adı</label>
                            <input type="text" class="form-control" id="cc-name" placeholder="" required>
                        </div>

                        <div class="col-md-6">
                            <label for="cc-number" class="form-label">Kart numarası</label>
                            <input type="text" class="form-control" id="cc-number" placeholder="" required>
                        </div>

                        <div class="col-md-3">
                            <label for="cc-expiration" class="form-label">Son Kullanma Tarihi</label>
                            <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
                        </div>

                        <div class="col-md-3">
                            <label for="cc-cvv" class="form-label">CVV</label>
                            <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
                        </div>
                    </div>
                    <hr class="my-4">
                    <input class="w-100 btn btn-primary btn-lg" type="submit" value="Ödemeyi Tamamla"/>
                </form>
            </div>
        </div>
    </main>
</div>
</body>
