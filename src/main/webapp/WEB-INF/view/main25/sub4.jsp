<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>이름 조회</h3>
<form action="/main25/sub4">
    이름명 :
    <input type="text" name="search" placeholder="조회할 이름을 입력하세요">
    <input type="submit" value="조회">
</form>
<hr>
<div>
    <c:forEach items="${Customrs}" var="coustomer">
        <h4>${coustomer.id}</h4>
        <p>이름 :
            <input type="text" value="${coustomer.name}" readonly>
        </p>
        <p>
            주소 :
            <input type="text" value="${coustomer.address}" readonly>
        </p>
        <p>
            도시 :
            <input type="text" value="${coustomer.city}" readonly>
        </p>
    </c:forEach>
</div>

</body>
</html>
