<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main class="page catalog-page">
    <section class="clean-block clean-catalog dark">
        <div class="container product-padding">
            <div class="block-heading">
                <h2 class="text-info">E.Y</h2>
                <p>En çok satılan ürünler</p>
            </div>
            <div class="content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="products">
                            <div class="row no-gutters">
                                <c:if test="${not empty products}">
                                    <c:forEach items="${products}" var="product">

                                        <c:if test="${product.stock > 1}" >
                                            <div class="col-12 col-md-6 col-lg-4">
                                                <div class="clean-product-item">
                                                    <c:if test="${empty product.imageURL}">
                                                        <div class="image"><a href="<spring:url value="/view/${product.id}" />"><img class="img-fluid d-block mx-auto" src="http://birlikbaski.com/wp-content/uploads/2018/12/resim-yok-png-3-300x300.png"></a></div>
                                                    </c:if>
                                                    <c:if test="${not empty product.imageURL}">
                                                        <div class="image"><a href="<spring:url value="/view/${product.id}" />"><img class="img-fluid d-block mx-auto" src="${product.imageURL}"></a></div>
                                                    </c:if>
                                                    <div class="product-name"><a href="<spring:url value="/view/${product.id}" />">${product.productName}</a></div>
                                                    <div class="about">
                                                        <div class="rating"><img src="/resources/img/star.svg"><img src="/resources/img/star.svg"><img src="/resources/img/star.svg"><img src="/resources/img/star-half-empty.svg"><img src="/resources/img/star-empty.svg"></div>
                                                        <div class="price">
                                                            <h3>${product.price}TL</h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                        <c:if test="${product.stock == 1}">
                                            <div class="col-12 col-md-6 col-lg-4">
                                                <div class="clean-product-item">
                                                    <c:if test="${empty product.imageURL}">
                                                        <div class="image"><a href="<spring:url value="/view/${product.id}" />"><img class="img-fluid d-block mx-auto" src="http://birlikbaski.com/wp-content/uploads/2018/12/resim-yok-png-3-300x300.png"></a></div>
                                                    </c:if>
                                                    <c:if test="${not empty product.imageURL}">
                                                        <div class="image"><a href="<spring:url value="/view/${product.id}" />"><img class="img-fluid d-block mx-auto" src="${product.imageURL}"></a></div>
                                                    </c:if>
                                                    <div class="product-name"><a href="<spring:url value="/view/${product.id}" />">
                                                            <h4>Son bir ürün !!</h4> ${product.productName}</a></div>
                                                    <div class="about">
                                                        <div class="rating"><img src="/resources/img/star.svg"><img src="/resources/img/star.svg"><img src="/resources/img/star.svg"><img src="/resources/img/star-half-empty.svg"><img src="/resources/img/star-empty.svg"></div>
                                                        <div class="price">
                                                            <h3>${product.price}TL</h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                        <c:if test="${product.stock == 0}">
                                            <div class="col-12 col-md-6 col-lg-4">
                                                <div class="clean-product-item">
                                                    <c:if test="${empty product.imageURL}">
                                                        <div class="image"><a href="<spring:url value="/view/${product.id}" />"><img class="img-fluid d-block mx-auto" src="http://birlikbaski.com/wp-content/uploads/2018/12/resim-yok-png-3-300x300.png"></a></div>
                                                    </c:if>
                                                    <c:if test="${not empty product.imageURL}">
                                                        <div class="image"><a href="<spring:url value="/view/${product.id}" />"><img class="img-fluid d-block mx-auto" src="${product.imageURL}"></a></div>
                                                    </c:if>
                                                    <div class="product-name"><a href="<spring:url value="/view/${product.id}" />">
                                                        <h4>Stokta YOK !</h4> ${product.productName}</a></div>
                                                    <div class="about">
                                                        <div class="rating"><img src="/resources/img/star.svg"><img src="/resources/img/star.svg"><img src="/resources/img/star.svg"><img src="/resources/img/star-half-empty.svg"><img src="/resources/img/star-empty.svg"></div>
                                                        <div class="price">
                                                            <h3>${product.price}TL</h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>

                                    </c:forEach>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>