<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<html lang="en">
<head>

    <!-- Access the bootstrap Css like this,
        Spring boot will handle the resource mapping automcatically -->
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.2.0/css/bootstrap.min.css" />


	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />

<%--    <c:url value="/css/main.css" var="jstlCss" />--%>
<%--    <link href="${jstlCss}" rel="stylesheet" />--%>

</head>
<body>

<ul class="nav justify-content-center nav-font-30px">
    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="#">Active</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
    </li>
    <li class="nav-item">
        <a class="nav-link disabled">Disabled</a>
    </li>
</ul>

<div class="container">

    <div class="starter-template">
        <h1>Spring Boot Web JSP Example</h1>
        <h2>Message: ${message}</h2>
        <button id="main-btn" type="button" class="btn btn-dark">Dark</button>
    </div>

</div>

<script type="text/javascript" src="webjars/bootstrap/5.2.0/js/bootstrap.min.js"></script>
<script>
    let mainBtn = document.getElementById("main-btn");

    mainBtn.onclick = () => {
        alert("Пiшов нахуii");
    }
</script>

</body>

</html>