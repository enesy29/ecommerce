<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="header/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="container">
                <div class="page-header">
                    <h2>Cart</h2>

                    <p class="lead">All the selected products in your shopping cart.</p>
                </div>
            </div>
        </section>

        <section class="container" ng-app="cartApp">
            <div ng-controller="cartCtrl" ng-init="initCartId('${cart}')">
                <div>
                    <a class="btn btn-danger pull-left" onclick="this.clearCart()"><span
                            class="glyphicon glyphicon-remove-sign"></span>&nbsp; Clear Cart</a>
                    <a href="<spring:url value="/order/${cart}"/>"
                       class="btn btn-success pull-right"><span
                            class="glyphicon-shopping-cart glyphicon"></span>&nbsp; Checkout </a>
                </div>

                <br/><br/><br/>

                <table class="table table-hover">
                    <tr>
                        <th>Product</th>
                        <th>Unit Price</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                    <tr ng-repeat="item in cart.cartItems">
                        <c:forEach items="cart">
                            <td>${productName}</td>
                            <td>${productId}</td>
                        </c:forEach>
                        <td>${productName}</td>
                        <td>${productId}</td>
                        <td>${cart}</td>
                        <td><a href="#" class="label label-danger" onclick="this.cartItemRemove(productId)">
                            <span class="glyphicon glyphicon-remove"></span>&nbsp; Remove</a></td>
                    </tr>
                    <tr>
                        <th></th>
                        <th></th>
                        <th>Toplam Fiyat</th>
                        <th>${total}</th>
                        <th></th>
                    </tr>
                </table>

                <br/>

                <a href="<spring:url value="/allProducts" />" class="btn btn-default">Continue Shopping</a>
            </div>
        </section>

    </div>
</div>
<script
        src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>