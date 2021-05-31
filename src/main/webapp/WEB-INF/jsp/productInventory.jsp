<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main>
    <section>
        <div class="container-wrapper">
            <div class="container product-padding">
                <div class="block-heading">
                    <h2 class="text-info">Ürün Listesi</h2>
                    <p>Hey Admin, ister ürün ekle istersen listedeki ürünleri görüntüle sil veya güncelle !</p>
                </div>
                <a href="<spring:url value="/admin/product/addProduct" />"
                   class="btn btn-primary">Ürün Ekle</a>
                <br/><br/><br/>
                <div class="container-fluid">
                    <h3 class="text-dark mb-4">Ürünler</h3>
                    <div class="card shadow">
                        <div class="card-header py-3">
                            <p class="text-primary m-0 font-weight-bold">Ürün Bilgileri</p>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="text-md-right dataTables_filter" id="dataTable_filter"></div>
                                </div>
                            </div>
                            <div class="table-responsive table mt-2" role="grid" aria-describedby="dataTable_info">
                                <table class="table my-0" id="dataTable">
                                    <thead>
                                    <tr>
                                        <th>Ürün Resmi</th>
                                        <th>Ürün Adı</th>
                                        <th>Kategori</th>
                                        <th>Tanıtım</th>
                                        <th>Fiyat</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                     <c:forEach items="${products}" var="product">
                                         <tr>
                                             <td>
                                                 <c:if test="${not empty product.imageURL}" >
                                                     <img src="${product.imageURL}" alt="image" width="150" height="150"/>
                                                 </c:if>
                                                 <c:if test="${empty product.imageURL}">
                                                     <img src="http://birlikbaski.com/wp-content/uploads/2018/12/resim-yok-png-3-300x300.png" width="150" height="150" alt="image"/>
                                                 </c:if>
                                             </td>
                                             <td>${product.productName}</td>
                                             <td>${product.category}</td>
                                             <td>${product.description}</td>
                                             <td>${product.price} TL</td>
                                             <td>
                                                 <span style="font-size: 9px; text-align: center">
                                                 <a href="<spring:url value="/view/${product.id}" />">Ürünü Görüntüle <span class="glyphicon glyphicon-info-sign"></span></a>
                                                 <hr>
                                                 <a href="<spring:url value="/admin/product/deleteProduct/${product.id}" />" onclick="removeProduct()">Ürünü Sil <span class="glyphicon glyphicon-remove"></span></a>
                                                 <hr>
                                                 <a href="<spring:url value="/admin/product/editProduct/${product.id}" />">Ürünü Güncelle <span class="glyphicon glyphicon-pencil"></span></a></td>
                                                 </span>

                                         </tr>
                                     </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
</main>

