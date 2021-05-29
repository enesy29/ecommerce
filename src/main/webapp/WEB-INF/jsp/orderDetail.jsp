<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header/header.jsp" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

<div class="panel-body">
    <div class="table-responsive">
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
        </table>
        <tr>Toplam Fiyat</tr>
        <tr>
            <td>${order.orderTotal} TL</td>
        </tr>
    </div>
</div>