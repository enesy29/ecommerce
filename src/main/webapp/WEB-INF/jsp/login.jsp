<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main class="page login-page">
    <section class="clean-block clean-form dark">
        <div class="container product-padding">
            <div class="block-heading">
                <h2 class="text-info">Giriş Yap</h2>
                <p>Üye bilgilerinizle giriş yapınız.</p>
            </div>
            <form:form modelAttribute="login" cssClass="form-login" method="post">
            <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>
            <div class="form-group" aria-setsize="5">
                <c:if test="${not empty passwordOrUsernameError}">
                    <div class="alert alert-danger">
                        <p class="text-center">${passwordOrUsernameError}</p>
                    </div>
                </c:if>
                <form:input path="username" cssClass="form-control"  placeholder="Kullanıcı Adı" required="required"></form:input>
                <hr>
                <form:input path="password" type="password" cssClass="form-control"  placeholder="Şifre" required="required"></form:input>
                <hr>
                </form:form>
                <button name="submit" class="btn btn-success btn-lg my-2">Giriş Yap</button>
            </div>
        </div>
    </section>
</main>
