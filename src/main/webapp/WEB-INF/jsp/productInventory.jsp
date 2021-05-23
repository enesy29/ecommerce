<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
            <h2>Ürün Listesi</h2>

            <p class="lead">Ürünleri Listele ve Düzenle</p>
        </div>

        <a href="<spring:url value="/admin/product/addProduct" />"
           class="btn btn-primary">Ürün Ekle</a>

        <br/><br/><br/>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Ürün Resmi</th>
                <th>Ürün Adı</th>
                <th>Kategori</th>
                <th>Tanıtım</th>
                <th>Fiyat</th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td>
                        <c:if test="${not empty product.imageURL}" >
                            <img src="${product.imageURL}" alt="image" width="200" height="200"/>
                        </c:if>
                        <c:if test="${empty product.imageURL}">
                            <img src="http://birlikbaski.com/wp-content/uploads/2018/12/resim-yok-png-3-300x300.png" width="200" height="200" alt="image"/>
                        </c:if>
                    </td>
                    <td>${product.productName}</td>
                    <td>${product.category}</td>
                    <td>${product.description}</td>
                    <td>${product.price} TL</td>
                    <td><a
                            href="<spring:url value="/product/viewProduct/${product.productId}" />">Ürünü Görüntüle<span
                            class="glyphicon glyphicon-info-sign"></span></a> <a
                            href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />">Ürünü Sil<span
                            class="glyphicon glyphicon-remove"></span></a> <a
                            href="<spring:url value="/admin/product/editProduct/${product.productId}" />">Ürünü Güncelle<span
                            class="glyphicon glyphicon-pencil"></span></a></td>
                </tr>
            </c:forEach>
        </table>

    </div>
</div>