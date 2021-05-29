<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<main class="page product-page">
    <section class="clean-block clean-product dark">
            <div class="container product-padding">
                <div class="block-heading">
                    <h2 class="text-info">Ürün Detayı</h2>
                    <p>Detaylı ürün bilgisi aşağıda sunulmuştur.</p>
                </div>
                <div class="block-content">
                    <div class="product-info">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="gallery">
                                    <c:if test="${not empty product.imageURL}">
                                        <div class="sp-wrap"><img src="${product.imageURL}" height="350" width="350" alt="image"/></div>
                                    </c:if>
                                    <c:if test="${empty product.imageURL}">
                                    <div class="sp-wrap"><img src="http://birlikbaski.com/wp-content/uploads/2018/12/resim-yok-png-3-300x300.png" height="350" width="350" alt="image"/></div>
                                    </c:if>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="info">
                                    <h3>${product.productName}</h3>
                                <div class="price">
                                    <h3>${product.price} TL</h3>
                                </div>
                                <div class="summary">
                                    <p>${product.description}</p>
                                </div>
                                    <c:if test="${ userSession != null}">
                                        <form action="/addToCart/${product.id}" method="post">
                                            <input type="hidden" name="id" value="${product.id}" />
                                            <button class="btn btn-primary" type="submit"><i class="icon-basket"></i>Sepete Ekle</button>
                                            <!--<input type="submit" value="Sepete Ekle" class = "icon-basket"/>-->
                                        </form>
                                        <!--   <button class="btn btn-primary" type="button"><i class="icon-basket"></i>Sepete Ekle</button> -->
                                    </c:if>
                                    <c:if test="${userSession == null}">
                                        <a href="/login">
                                            <button class="btn btn-primary" type="submit"><i class="icon-basket"></i>Sepete Ekle</button>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>
</main>
