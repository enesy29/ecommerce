<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="header/header.jsp" %>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Kullanıcı Profili</title>
</head>
<body>
<div>
    <section class="jumbotron text-center">
        <div class="container">
            Hoşgeldin <b>${username}</b>
            <p>Siparişlerini aşağıdaki siparişlerim kısmından inceleyebilirsin !</p>
            <c:if test="${not empty userSession}">
                <h3>Siparişlerim</h3>
                <c:forEach items="${orderList}" var="order">
                        <table>
                            <tr>
                                <td>Sipariş Tarihi</td>
                                <td>Toplam Fiyat</td>
                                <td>Action</td>
                            </tr>
                            <tr>
                                <td>${order.orderDate}</td>
                                <td>${order.orderTotal} TL</td>
                                <td><a
                                        href="<spring:url value="/orderDetail/${order.id}" />">Siparişi Görüntüle<span
                                        class="glyphicon glyphicon-info-sign"></span></a>
                            </tr>
                        </table>
                </c:forEach>

            <br>
            </c:if>
        </div>
    </section>
</div>
</body>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</html>