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


    <jsp:include page="nav-menu.jsp" />

        <form class="task-form" action="/modifyTask" method="post" >
            <div class="input-group mb-3">
                <span class="input-group-text" >ID</span>
                <input class="form-control" type="text" name="id" value="${id}" readonly/>
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text" >Автор</span>
                <input class="form-control" type="text" name="taskAuthor" value="${author}" readonly/>
            </div>

            <div class="input-group mb-3">
                <span class="input-group-text" >Название</span>
                <input class="form-control" type="text" name="taskTitle" value="${title}"/>
            </div>

            <div class="input-group mb-3">
                <span class="input-group-text" >Исполнитель</span>
                <input class="form-control" type="text" name="taskExecutor" value="${executor}" />
            </div>

            <p style="text-align: center">Описание</p>
            <div class="input-group mb-3">
                <textarea style="height: 350px" class="form-control" name="taskDescription" >${description}</textarea>
            </div>

            <input type="submit" name="submit" value="Submit" class="btn btn-primary" />
            <input type="submit" name="delete" value="Delete" class="btn btn-danger" />
        </form>


</div>

</body>

</html>