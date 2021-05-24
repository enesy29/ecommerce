<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="button" uri="http://www.springframework.org/tags/form" %>
<%@include file="header/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="container">
                <div class="page-header">
                    <h2>Checkout</h2>
                    <p class="lead">Checkout </p>
                </div>
            </div>
        </section>

        <section class="container">
            <div>
                    <table class="table table-hover">
                        <tr>
                            <th>Toplam Fiyat</th>
                            <th>${total}</th>
                        </tr>
                    </table>
                <form action="/checkout/success" method="post">
                    <input type="hidden" name="id" value="${order}" />
                    <input type="submit" value="checkoutPay" />
                </form>
            </div>
        </section>

    </div>
</div>
<script
        src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
