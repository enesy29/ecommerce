<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="button" uri="http://www.springframework.org/tags/form" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h2>Ürün Ekle</h2>

            <p class="lead">Yeni Ürün Ekle</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post"
                   modelAttribute="product" enctype="multipart/form-data">

            <div class="form-group">
                <label for="name">Ürün Adı</label> <form:errors path="productName" cssStyle="color: #ff0000;" />
                <form:input path="productName" id="name" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="category">Kategori</label>
                <form:input path="category" id="category" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="description">Tanım</label>
                <form:textarea path="description" id="description" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="price">Fiyat</label>  <form:errors path="price" cssStyle="color: #ff0000;" />
                <form:input path="price" id="price" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="category">Ürün Resmi</label>
                <form:input path="imageURL" id="imageURL" class="form-Control"/>
            </div>

            <br><br>
            <input type="submit" value="Submit" class="btn btn-default">
            <a href="<c:url value="/admin/productInventory/" />" class="btn btn-default">Cancel</a>
        </form:form>


    </div>
</div>