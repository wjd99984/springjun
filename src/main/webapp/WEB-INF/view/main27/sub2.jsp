<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <style>
        table,tr,th,td {
            border: 2px solid blue;
            border-collapse: collapse;
        }

        table {
            width: 100%;
            height: 40px;
            background: aqua;
        }

        .active {
            background: #fbffca;
            color: black;
        }
    </style>
</head>
<body>
<hr>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>lastname</th>
        <th>firstname</th>
        <th>notes</th>
        <th>photo</th>
        <th>birthdate</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${employeesList}" var="employee">
        <tr>
            <td>${employee.id}</td>
            <td>${employee.lastname}</td>
            <td>${employee.firstname}</td>
            <td>${employee.notes}</td>
            <td>${employee.photo}</td>
            <td>${employee.birthdate}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div>
    <c:if test="${currentPage != 1}">
        <c:url var="firstPageLink" value="/main27/sub2">
            <c:param name="page" value="1"/>
        </c:url>
        <span><a href="${firstPageLink}">맨앞</a></span>
    </c:if>

    <c:if test="${not empty prevPageNumber}">
        <c:url var="prevPageLink" value="/main27/sub2">
            <c:param name="page" value="${prevPageNumber}"/>
        </c:url>
        <span><a href="${prevPageLink}">이전</a></span>
    </c:if>

    <c:forEach begin="${beginPageNumber}" end="${endPageNumber}" var="pageNumber">
        <c:url var="pageLink" value="/main27/sub2">
            <c:param name="page" value="${pageNumber}"/>
        </c:url>
        <span><a class="${currentPage eq pageNumber ? 'active' : ''}" href="${pageLink}">${pageNumber}</a></span>
    </c:forEach>

    <c:if test="${not empty nextPageNumber}">
        <c:url var="nextPageLink" value="/main27/sub2">
            <c:param name="page" value="${nextPageNumber}"/>
        </c:url>
        <span><a href="${nextPageLink}">다음</a></span>
    </c:if>

    <c:if test="${currentPage != lastPageNumber}">
        <c:url var="lastPageLink" value="/main27/sub2">
            <c:param name="page" value="${lastPageNumber}"/>
        </c:url>
        <span><a href="${lastPageLink}">맨뒤</a></span>
    </c:if>
</div>
</body>
</html>
