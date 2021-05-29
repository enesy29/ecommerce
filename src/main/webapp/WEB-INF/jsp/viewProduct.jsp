<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h2>Ürün Detayı</h2>
        </div>

        <div class="container">
            <div class="row">

                <div class="col-md-5">
                    <c:if test="${not empty product.imageURL}">
                        <img src="${product.imageURL}" width="200" height="200" alt="image"/>
                    </c:if>
                    <c:if test="${empty product.imageURL}">
                        <img src="http://birlikbaski.com/wp-content/uploads/2018/12/resim-yok-png-3-300x300.png" width="200" height="200" alt="image"/>
                    </c:if>
                </div>

                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p>${product.description}</p>
                    <p>
                        <strong>Category</strong>: ${product.category}
                    </p>
                    <p>
                        <strong>Price</strong>: ${product.price} TL
                    </p>
                    <br>

                        <a href="<c:url value="/allProducts" />" class="btn btn-default">Back</a>
                        &nbsp;
                        <!-- Kullanıcı girişi yapılmışsa -->
                        <c:if test="${ userSession != null}">
                    <form action="/addToCart/${product.id}" method="post">
                        <input type="hidden" name="id" value="${product.id}" />
                        <input type="submit" value="Add to cart" />
                    </form>
                        </c:if>

                        <c:if test="${userSession == null}">
                            <a href="/login" class="btn btn-success btn-large">
                                <span class="glyphicon glyphicon-hand-right"></span>&nbsp; Order Now</a>
                        </c:if>

                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>