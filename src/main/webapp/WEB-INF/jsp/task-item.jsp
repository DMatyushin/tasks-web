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
<%--    <form method = "POST" modelAttribute="taskForm" action = "/modifyTask">--%>
<%--        <table id="task-item-table" class="table table-bordered border-dark table-hover">--%>
<%--            <tr>--%>
<%--                <td class="task-table-title"><label path = "id">ID</label></td>--%>
<%--                <td class="task-table-body"><input path = "id" value="${id}" readonly/></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td class="task-table-title"><label path = "taskTitle">Title</label></td>--%>
<%--                <td class="task-table-body"><input path = "taskTitle" value="${taskTitle}"/></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td class="task-table-title"><label path = "taskAuthor">Author</label></td>--%>
<%--                <td class="task-table-body"><input path = "taskAuthor" value="${taskAuthor}"/></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td class="task-table-title"><label path = "taskExecutor">Executor</label></td>--%>
<%--                <td class="task-table-body"><input path = "taskExecutor" value="${taskExecutor}"/></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td class="task-table-title"><label path = "taskDescription">Description</label></td>--%>
<%--                <td class="task-table-body"><input path = "taskDescription" value="${taskDescription}" /></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td colspan = "2">--%>
<%--                    <input class="btn btn-primary" type = "submit" value = "Обновить"/>--%>
<%--                    <input class="btn btn-warning" type = "delete" value = "Удалить"/>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--        </table>--%>
<%--    </form>--%>
    <form action="/modifyTask" method="post" >
        <pre>
            Id <input type="text" name="id" value="${id}" readonly/>
            Author <input type="text" name="taskAuthor" value="${author}" readonly/>
            Title <input type="text" name="taskTitle" value="${title}"/>
            Description <input type="text" name="taskDescription" value="${description}" />
            Executor <input type="text" name="taskExecutor" value="${executor}" />
            <td><input type="submit" name="submit" value="Submit" /></td>
            <td><input type="submit" name="delete" value="Delete" /></td>
        </pre>
    </form>

</div>




</body>

</html>