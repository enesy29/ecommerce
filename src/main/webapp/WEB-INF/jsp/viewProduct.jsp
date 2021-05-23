<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="header/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h2>Ürün Detayı</h2>
        </div>

        <div class="container" ng-app = "cartApp">
            <div class="row">

                <div class="col-md-5">
                    <c:if test="${not empty product.imageURL}">
                        <img src="${product.imageURL}" width="200" height="200" alt="image"/>
                    </c:if>
                    <c:if test="${empty product.imageURL}">
                        <img src="http://birlikbaski.com/wp-content/uploads/2018/12/resim-yok-png-3-300x300.png" width="200" height="200" alt="image"/>
                    </c:if>
                </div>

                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p>${product.description}</p>
                    <p>
                        <strong>Category</strong>: ${product.category}
                    </p>
                    <p>
                        <strong>Price</strong>: ${product.price} TL
                    </p>
                    <br>

                    <c:set var="role" scope="page" value="${param.role}" />
                    <c:set var="url" scope="page" value="/product/productList/all" />
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory" />
                    </c:if>

                    <p ng-controller="cartCtrl">

                        <a href="<c:url value="${url}" />" class="btn btn-default">Back</a>

                        &nbsp;

                        <!-- Kullanıcı girişi yapılmışsa -->
                        <c:if test="${ userSession != null}">
                            <a href="#" class="btn btn-success btn-large" ng-click="addToCart('${product.productId}')">
                                <span class="glyphicon glyphicon-hand-right"></span>&nbsp; Order Now</a>
                            &nbsp;
                            <a href="<spring:url value="/customer/cart" />" class="btn btn-info">
                                <span class="glyphicon glyphicon-shopping-cart"></span>&nbsp; View Cart</a>
                        </c:if>

                        <c:if test="${userSession == null}">
                            <a href="/login" class="btn btn-success btn-large">
                                <span class="glyphicon glyphicon-hand-right"></span>&nbsp; Order Now</a>
                        </c:if>

                    </p>
                </div>
            </div>
        </div>
        <script src="<c:url value="/resources/js/controller.js" /> "></script>
    </div>
</div>
