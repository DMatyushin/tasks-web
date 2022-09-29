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

    <%--    <div class="starter-template">--%>
    <%--        <h1>Task and project management system</h1>--%>
    <%--        <p>${userName}</p>--%>
    <%--        <p>${userRole}</p>--%>

    <%--    </div>--%>

    <jsp:include page="nav-menu.jsp" />

<%--    <ul>--%>
<%--        <c:forEach var="task" items="${tasks}">--%>
<%--            <li>--%>
<%--                <p>Title: <c:out value="${task.taskTitle}"/></p>--%>
<%--                <p>Description: <c:out value="${task.taskDescription}"/></p>--%>
<%--                <p>Author: <c:out value="${task.taskAuthor}"/></p>--%>
<%--                <p>Executor: <c:out value="${task.taskExecutor}"/></p>--%>
<%--            </li>--%>
<%--        </c:forEach>--%>
<%--    </ul>--%>

    <table class="table table-bordered border-dark table-hover">
        <tr>
            <th style="width: 5%" scope="col">id</th>
            <th style="width: 20%" scope="col">Название</th>
            <th style="width: 30%" scope="col">Описание</th>
            <th style="width: 15%" scope="col">Автор</th>
            <th style="width: 15%" scope="col">Исполнитель</th>
            <th style="width: 15%" scope="col">Дата создания</th>
        </tr>
        <c:forEach var="task" items="${tasks}">
            <tr>
                <td><c:out value="${task.id}"/></td>
                <td><c:out value="${task.taskTitle}"/></td>
                <td><c:out value="${task.taskDescription}"/></td>
                <td><c:out value="${task.taskAuthor}"/></td>
                <td><c:out value="${task.taskExecutor}"/></td>
                <td><c:out value="${task.createDate}"/></td>
            </tr>
        </c:forEach>
    </table>

</div>




</body>

</html>