<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<main>
    <section>
        <div class="container-wrapper">
            <div class="container product-padding">
                <div class="block-heading">
                    <h2 class="text-info">Sipariş Listesi</h2>
                    <p>Hey Admin, siparişlerin aşağıda listelendi !</p>
                </div>
                <br/><br/>
                <div class="container-fluid">
                    <h3 class="text-dark mb-4">Siparişler</h3>
                    <div class="card shadow">
                        <div class="card-header py-3">
                            <p class="text-primary m-0 font-weight-bold">Sipariş Bilgileri</p>
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
                                        <th>Ürünler</th>
                                        <th>Toplam Fiyat</th>
                                        <th>Sipariş Tarihi</th>
                                        <th>Alıcı</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${allOrdersList}" var="orders">
                                        <tr>
                                            <td>${orders.orderItems.toString()}</td>
                                            <td>${orders.grandTotal}</td>
                                            <td>${orders.orderDate}</td>
                                            <td>${orders.customer.toString()}</td>
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