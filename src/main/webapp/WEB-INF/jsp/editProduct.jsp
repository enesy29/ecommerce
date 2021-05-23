<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h2>Ürün Güncelle</h2>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/editProduct" method="post"
                   modelAttribute="product" enctype="multipart/form-data">
            <form:hidden path="productId" value="${product.productId}" />

            <div class="form-group">
                <label for="name">Name</label>
                <form:input path="productName" id="name" class="form-Control" value="${product.productName}"/>
            </div>

            <div class="form-group">
                <label for="category">Category</label>
                <form:input path="category" id="category" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="description">Description</label>
                <form:textarea path="description" id="description" class="form-Control" value="${product.description}"/>
            </div>

            <div class="form-group">
                <label for="price">Price</label>
                <form:input path="price" id="price" class="form-Control" value="${product.price}"/>
            </div>

            <div class="form-group">
                <label for="category">Ürün Resmi</label>
                <form:input path="imageURL" id="imageURL" class="form-Control"/>
            </div>

            <br><br>
            <input type="submit" value="Submit" class="btn btn-default">
            <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>
        </form:form>

    </div>
</div>
