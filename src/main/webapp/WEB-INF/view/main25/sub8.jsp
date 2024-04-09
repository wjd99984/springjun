<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table, tr, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        table {
            width: 150%; background-color: lightblue;
            height:80px;
        }

        th{
            height: 30px; width: 8px;
            background: greenyellow;
        }
    </style>
</head>
<body>
<h3>직원 목록</h3>
<%-- action 의 값이 없거나 생략되면 현재 요청 경로로 보냄--%>
<form>
    이름
    <input value="${prevSearch}" type="text" placeholder="조회할 직원 이름을 입력하세요." name="search">
    <input type="submit" value="조회">
</form>
<hr>
<c:if test="${empty EmployeeList}" var="emptyEmployee">
    <p>조회된 직원이 없습니다.</p>
</c:if>

<c:if test="${not emptyEmployee}">
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>lastname</th>
        <th>firstname</th>
        <th>birthdate</th>
        <th>photo</th>
        <th>notes</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${EmployeeList}" var="employees">
        <tr>
            <td>${employees.id}</td>
            <td>${employees.lastname}</td>
            <td>${employees.firstname}</td>
            <td>${employees.birthdate}</td>
            <td>${employees.photo}</td>
            <td>${employees.notes}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</c:if>
<hr>
</body>
</html>
