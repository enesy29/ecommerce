<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="button" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Admin Panel</title>
</head>
<body>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h2>Admin Sayfası</h2>
        </div>
        <c:if test="${empty adminSession}">
            <a href="adminLogin">Admin Login</a>
        </c:if>

        <c:if test="${not empty adminSession}">
            <h3>
                <a href="<c:url value="/admin/productInventory" />" >Ürün Listesi</a>
            </h3>

            <p>Ürünleri ekle ve güncelle</p>

            <br>

            <h3>
                <a href="<c:url value="/admin/pendingOrders" />" >Pending Orders</a>
            </h3>

            <p>View and fulfill all pending orders.</p>

            <br>

            <h3>
                <a href="<c:url value="/admin/allOrders" />" >All Orders</a>
            </h3>

            <p>View all orders.</p>

            <br>

        </c:if>
    </div>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</html>

