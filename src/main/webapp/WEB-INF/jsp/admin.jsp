<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="button" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<main class="page">
    <section class="clean-block features">
        <div class="container product-padding">
            <c:if test="${not empty adminSession}">
                <div class="block-heading">
                    <h2 class="text-info">Admin Panel</h2>
                    <p>Hey Admin, ister ürünleri listele ve göster , istersen siparişleri gör !</p>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-5 feature-box"><i class="icon-pencil icon"></i>
                        <h4>Ürünleri Listele</h4>
                        <p>Ürünlerini listeleyip , ürünlerini güncelleyebilirsin ! Veya yeni bir ürün ekleyebilirsin !</p>
                        <a href="<spring:url value="/admin/productInventory"/>"
                           class="w-100 btn btn-primary btn-lg"><span
                                class="glyphicon-shopping-cart glyphicon"></span>&nbsp; Ürünleri Listele </a>
                    </div>
                    <div class="col-md-5 feature-box"><i class="icon-star icon"></i>
                        <h4>Siparişleri Göster</h4>
                        <p>Şuana kadar verilmiş olan siparişleri görüntüleyebilirsin ! Hadi iyisin , para kazanıyorsun :) </p>
                        <a href="<spring:url value="/admin/allOrders"/>"
                           class="w-100 btn btn-primary btn-lg"><span
                                class="glyphicon-shopping-cart glyphicon"></span>&nbsp; Siparişleri Görüntüle </a>
                    </div>
                </div>
            </c:if>
            <br>
        </div>
    </section>
</main>
