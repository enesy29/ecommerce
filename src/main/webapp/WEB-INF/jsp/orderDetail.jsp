<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main class="order-md-0">
    <section class="order-0">
        <div class="container product-padding">
            <div class="block-heading">
                <h2 class="text-info">Sipariş Özeti</h2>
                <p>Vermiş olduğunuz siparişin içeriği : </p>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <div class="table-bordered">
                        <table class="table table-condensed">
                            <thead>
                            <tr>
                                <td><strong>Ürün Adı</strong></td>
                                <td class="text-center"><strong>Ürün Adedi
                                </strong></td>
                                <td class="text-center"><strong>Fiyatı
                                </strong></td>
                            </tr>
                            </thead>
                            <c:forEach items="${cartItemList}" var="cartItem">
                                <tbody>
                                <tr>
                                    <td>${cartItem.product.productName}</td>
                                    <td>${cartItem.qty}</td>
                                    <td>${cartItem.subtotal} TL</td>
                                </tr>
                                </tbody>
                            </c:forEach>
                            <tr>Toplam Fiyat</tr>
                            <tr>
                                <td>${order.orderTotal} TL</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
