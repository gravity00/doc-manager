<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title><spring:message code="document.title.list" /></title>
</head>
<body>
    <h1><spring:message code="document.header.list" /></h1>
    <c:if test="{!empty list}">
    <table>
        <thead>
            <tr>
                <th><spring:message code="document.table.id" /></th>
                <th><spring:message code="document.table.name" /></th>
                <th><spring:message code="document.table.document.type" /></th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="document" items="${list}">
            <tr>
                <td>${document.id}</td>
                <td>${document.name}</td>
                <td>${document.contentType}</td>
                <td><a href="/documents/get/${document.id}">Download</a></td>
                <td>
                    <form id="remove-form" action="/documents/remove/${role.id}" method="post">
                        <a href="javascript:" onclick="document.getElementById('remove-form').submit();"><spring:message code="table.button.remove" /></a>
                    </form>
                </td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
    </c:if>
</body>
</html>