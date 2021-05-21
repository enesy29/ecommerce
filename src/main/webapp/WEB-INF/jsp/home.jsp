<%@include file="header/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>E-Commerce Home</title>
</head>
<form:form action="${pageContext.request.contextPath}/logout" method="post">
    <input type="submit" value="Çıkış"/>
</form:form>
<body>

</body>
</html>