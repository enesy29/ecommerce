<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main class="page registration-page">
    <section class="clean-block clean-form dark">
        <div class="container product-padding">
            <div class="block-heading">
                <h2 class="text-info">Kayıt Ol</h2>
                <p>Bilgileri doldurarak kayıt olunuz .</p>
            </div>
            <form:form action="register" modelAttribute="createUser" cssClass="form-signin" method="post">
            <h2 class="form-signin-heading text-center">Üye Ol</h2>
            <hr/>
            <div class="form-group">

                <form:input path="name" cssClass="form-control" placeholder="İsim" required="required"></form:input>
                <hr>
                <form:input path="surname" cssClass="form-control"  placeholder="Soyisim" required="required"></form:input>
                <hr>
                <form:input path="username" cssClass="form-control"  placeholder="Kullanıcı Adı" required="required"></form:input>
                <span class="form-text text-center text-danger">${alreadyExistsUser}</span>
                <form:errors path="username" cssClass="form-text text-danger"></form:errors>
                <hr>
                <form:input path="email" type = "email" cssClass="form-control"  placeholder="E Mail" required="required"></form:input>
                <hr>
                <form:input path="password" type="password" cssClass="form-control"  placeholder="Şifre" required="required"></form:input>
                <hr>

                </form:form>
                <p>Üye iseniz lütfen Giriş Yap butonuna tıklayarak giriş sayfasına gidiniz ..</p>
                <button name="submit" class="btn btn-success btn-lg my-2">Kayıt Ol</button>
                <a href="/login" class="btn btn-success btn-lg my-2">Giriş yap</a>
            </div>
        </div>
    </section>
</main>
