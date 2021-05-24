<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header/header.jsp"%>

<script>
    $(document).ready(
        function() {
            $('.table').DataTable({
                "lengthMenu" : [ [ 1, 2, 3, 5, 10, -1 ], [ 1, 2, 3, 5, 10, "All" ] ],
                "iDisplayLength": 5
            });
        });
</script>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h2>Ürünler</h2>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Fotoğraf</th>
                <th>Ürün Adı</th>
                <th>Kategori</th>
                <th>Fiyat</th>
                <th>Ürünü İncele</th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <c:if test="${empty product.imageURL}">
                        <td><img src="http://birlikbaski.com/wp-content/uploads/2018/12/resim-yok-png-3-300x300.png" width="200" height="200" alt="image"/></td>
                    </c:if>
                    <c:if test="${not empty product.imageURL}">
                    <td><img src="${product.imageURL}" width="200" height="200" alt="image"/></td>
                    </c:if>
                    <td>${product.productName}</td>
                    <td>${product.category}</td>
                    <td>${product.price} TL</td>
                    <td><a href="<spring:url value="/view/${product.productId}" />"
                    >Ürünü İncele<span class="glyphicon glyphicon-info-sign"></span></a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

