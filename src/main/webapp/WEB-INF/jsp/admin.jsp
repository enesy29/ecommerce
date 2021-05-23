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

            <h3>
                <a href="<c:url value="/admin/customer" />" >Customer Management</a>
            </h3>

            <p>View all customer information.</p>

        </c:if>
    </div>
</div>
</body>

</html>

