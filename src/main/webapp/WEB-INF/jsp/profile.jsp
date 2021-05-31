<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<main>
    <section>
        <div class="container product-padding">
            <section class="jumbotron text-center">
                <div class="container">
                    </b>
                    <p>Siparişlerini aşağıdaki siparişlerim kısmından inceleyebilirsin !</p>
                    <c:if test="${not empty userSession}">

                        <c:if test="${not empty orderList}">
                            <h3>Siparişlerim</h3>
                            <c:forEach items="${orderList}" var="order">
                                <table>
                                    <tr>
                                        <td>Sipariş Tarihi</td>
                                        <td>Toplam Fiyat</td>
                                        <td>Action</td>
                                    </tr>
                                    <tr>
                                        <td>${order.orderDate}</td>
                                        <td>${order.orderTotal} TL</td>
                                        <td><a
                                                href="<spring:url value="/orderDetail/${order.id}" />">Siparişi Görüntüle<span
                                                class="glyphicon glyphicon-info-sign"></span></a>
                                    </tr>
                                </table>
                            </c:forEach>
                        </c:if>

                    </c:if>
                </div>
            </section>
        </div>
    </section>
</main>
