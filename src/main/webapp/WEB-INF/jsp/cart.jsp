<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="button" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<main class="page shopping-cart-page">
    <section class="clean-block clean-cart dark">
        <div class="container product-padding">
            <div class="block-heading">
                <h2 class="text-info">Alışveriş Sepeti</h2>
                <p>Sepete eklediğiniz ürünler :</p>
            </div>
            <div class="content">
                <div class="row no-gutters">
                    <div class="col-md-12 col-lg-8">
                        <div class="items">
                            <c:if test="${not empty userSession}">
                            <div class="product">
                                <c:forEach items="${cartItemList}" varStatus="stat" var="cartItem">
                                <div class="row justify-content-center align-items-center">
                                    <div class="col-md-3">
                                        <c:if test="${empty cartItem.product.imageURL}">
                                            <div class="product-image"><img src="http://birlikbaski.com/wp-content/uploads/2018/12/resim-yok-png-3-300x300.png" width="200" height="200" alt="image"/></div>
                                        </c:if>
                                        <c:if test="${not empty cartItem.product.imageURL}">
                                            <div class="product-image"><img src="${cartItem.product.imageURL}" width="200" height="200" alt="image"/></div>
                                        </c:if>
                                    </div>
                                    <div class="col-md-5 product-info"><a class="product-name" href="<c:url value="/view/${cartItem.product.id}"/>">${cartItem.product.productName}</a>
                                        <div class="product-specs">
                                            <div><span>Ürün Tanıtımı:&nbsp;</span><span class="value">${cartItem.product.description}</span></div>
                                            <div><a href="/cart/removeItem/${cartItem.id}" class="btn btn-primary">Sil</a></div>
                                        </div>
                                    </div>
                                    <div class="col-6 col-md-2 quantity"><label class="d-none d-md-block" for="qty">Ürün Adedi</label><input type="number" id="number" class="form-control quantity-input" value="${cartItem.qty}"></div>
                                    <div class="col-6 col-md-2 price"><span>${cartItem.subtotal} TL</span></div>
                                </div>
                                </c:forEach>
                            </div>
                            </c:if>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-4">
                        <div class="summary">
                        <h3>Sepet</h3>
                        <h4><span class="text">Toplam Fiyat</span><span class="price">${shoppingCart.grandTotal} TL</span>
                        </h4><a href="<spring:url value="/checkout"/>"
                                class="btn btn-primary btn-block btn-lg"><span
                            class="glyphicon-shopping-cart glyphicon"></span>&nbsp; Ödeme Sayfası </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>