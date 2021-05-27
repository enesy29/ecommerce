<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h2>Ürün Güncelle</h2>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/editProduct" method="post"
                   modelAttribute="product" enctype="multipart/form-data">
            <form:hidden path="id" value="${product.id}" />

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
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

