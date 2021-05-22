<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="button" uri="http://www.springframework.org/tags/form" %>
<%@include file="header/header.jsp" %>

<html>
<head>
    <title>Admin Panel</title>
</head>
<body>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <p class="lead">Admin Sayfası.</p>
        </div>

        <%-- <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h3>
                Welcome: ${pageContext.request.userPrincipal.name} | <a href="<c:url
                value="/j_spring_security_logout" />">Logout</a>
            </h3>
        </c:if> --%>

        <h3>
            <a href="<c:url value="/admin/productInventory" />" >Product Inventory</a>
        </h3>

        <p>View and modify the product inventory.</p>

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

    </div>
</div>
</body>

</html>

