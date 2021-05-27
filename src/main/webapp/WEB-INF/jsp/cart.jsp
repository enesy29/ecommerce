<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="button" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="header/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="container">
                <div class="page-header">
                    <h2>Cart</h2>

                    <p class="lead">Sepete eklediğiniz ürünler : </p>
                </div>
            </div>
        </section>

        <section class="container">
            <div>
                <div>
                    <a href="<spring:url value="/checkout"/>"
                       class="btn btn-success pull-right"><span
                            class="glyphicon-shopping-cart glyphicon"></span>&nbsp; Checkout </a>
                </div>

                <br/><br/><br/>
                <c:if test="${not empty userSession}">
                <table class="table table-hover">
                    <tr>
                        <th>Ürün Resmi</th>
                        <th>Ürün Adı</th>
                        <th>Ürünün Tanıtımı</th>
                        <th>Ürün Miktarı</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>

                        <c:forEach items="${cartItemList}" varStatus="stat" var="cartItem">
                            <tr>
                                <td>
                                    <c:if test="${empty cartItem.product.imageURL}">
                                        <img src="http://birlikbaski.com/wp-content/uploads/2018/12/resim-yok-png-3-300x300.png" width="200" height="200" alt="image"/>
                                    </c:if>
                                    <c:if test="${not empty cartItem.product.imageURL}">
                                        <img src="${cartItem.product.imageURL}" width="200" height="200" alt="image"/>
                                    </c:if>
                                </td>
                                <td>${cartItem.product.productName}</td>
                                <td>${cartItem.product.description}</td>
                                <td>${cartItem.qty}</td>
                                <td>${cartItem.subtotal}</td>
                                <!--<td>${cartItem.product.price}</td> -->
                                <td><a href="/cart/removeItem/${cartItem.id}" class="label label-danger">
                                    <span class="glyphicon glyphicon-remove"></span>&nbsp; Remove</a>
                                <a href="updateCartItem/${cartItemId}" class="label label-danger">
                                    <span class="glyphicon glyphicon-remove"></span>&nbsp; Update</a></td>
                            </tr>
                        </c:forEach>
                        <tr>
                            <th></th>
                            <th></th>
                            <th>Toplam Fiyat</th>
                            <th>${shoppingCart.grandTotal} TL</th>
                            <th></th>
                        </tr>
                        </table>

                </c:if>
                <br/>

                <a href="<spring:url value="/allProducts"/>" class="btn btn-default"><span
                        class="glyphicon-shopping-cart glyphicon"></span>&nbsp; Alışverişe devam et
                </a>

            </div>
        </section>

    </div>
</div>
<script
        src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>