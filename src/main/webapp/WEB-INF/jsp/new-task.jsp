<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>


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

<jsp:include page="nav-menu.jsp" />

<div class="container">

    <div class="starter-template">
        <h3>Новая задача</h3>
    </div>

    <form:form method = "POST" action = "createTask">
        <table>
            <tr>
                <td><form:label path = "taskTitle">Title</form:label></td>
                <td><form:input path = "taskTitle" /></td>
            </tr>
            <tr>
                <td><form:label path = "taskDescription">Description</form:label></td>
                <td><form:input path = "taskDescription" /></td>
            </tr>
            <tr>
                <td><form:label path = "taskAuthor">Author</form:label></td>
                <td><form:input path = "taskAuthor" /></td>
            </tr>
            <tr>
                <td><form:label path = "taskExecutor">Executor</form:label></td>
                <td><form:input path = "taskExecutor" /></td>
            </tr>
            <tr>
                <td colspan = "2">
                    <input type = "submit" value = "Submit"/>
                </td>
            </tr>
        </table>
    </form:form>



</div>

<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</body>

</html>