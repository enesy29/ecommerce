<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="button" uri="http://www.springframework.org/tags/form" %>

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
                    </div>
                    <div class="col-md-5 feature-box"><i class="icon-star icon"></i>
                        <h4>Siparişleri Göster</h4>
                        <p>Şuana kadar verilmiş olan siparişleri görüntüleyebilirsin ! Hadi iyisin , para kazanıyorsun :) </p>
                    </div>
                </div>
            </c:if>
        </div>
    </section>
</main>
