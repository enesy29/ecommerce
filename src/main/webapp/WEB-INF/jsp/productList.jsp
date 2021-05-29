<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main class="page catalog-page">
    <section class="clean-block clean-catalog dark">
        <div class="container">
            <div class="content">
                <div class="row">
                    <div class="col-md-9">
                        <div class="products">
                            <div class="row no-gutters">
                                <div class="col-12 col-md-6 col-lg-4">
                                    <div class="clean-product-item">
                                        <c:if test="${not empty products}">
                                            <c:forEach items="${products}" var="product">
                                                <c:if test="${empty product.imageURL}">
                                                    <div class="image"><a href="<spring:url value="/view/${product.id}" />"</a><img class="img-fluid d-block mx-auto" src="http://birlikbaski.com/wp-content/uploads/2018/12/resim-yok-png-3-300x300.png" width="200" height="200" alt="image" >
                                                    </div>
                                                </c:if>
                                                <c:if test="${not empty product.imageURL}">
                                                    <div class="image"><a href="<spring:url value="/view/${product.id}" />" </a><img class="img-fluid d-block mx-auto" src="${product.imageURL}" width="200" height="200" alt="image"/>
                                                    </div>
                                                </c:if>
                                                <div class="product-name"><a href="<spring:url value="/view/${product.id}" />"</a>${product.productName}</div>
                                                <div class="about">
                                                    <div class="price">
                                                        <h3>${product.price}TL</h3>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>