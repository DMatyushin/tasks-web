<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<html lang="en">
<head>
<%--    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.2.0/css/bootstrap.min.css" />--%>

    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
            crossorigin="anonymous">
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
            crossorigin="anonymous">

    </script>
    <spring:url value="/css/main.css" var="springCss" />
    <link href="${springCss}" rel="stylesheet" />
    <c:url value="/css/main.css" var="jstlCss" />
    <link href="${jstlCss}" rel="stylesheet" />


</head>
<body>

<div class="container">

    <div class="starter-template">
        <h1>Task and project management system</h1>
        <h2>${message}</h2>
        <form style="width: 40%; margin: auto;" th:action="@{/auth}">
            <div class="form-group">
                <label for="exampleInputEmail1">Логин</label>
                <input name="login" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Логин">
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <label for="exampleInputPassword1">Пароль</label>--%>
<%--                <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Пароль">--%>
<%--            </div>--%>
<%--            <br>--%>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

</div>


</body>

</html>