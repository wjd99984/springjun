<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <c:if test="${not empty message}">
        <div style="padding: 30px; background-color:floralwhite">
                ${message}
        </div>
    </c:if>
</div>

<h3>직원 정보 입력</h3>
<form action="" method="post">
    <div>
        성
        <input type="text" name="lastname">
    </div>
    <div>
        이름
        <input type="text" name="firstname">
    </div>
    <div>
        생일
        <input type="text" name="birthdate">
    </div>
    <div>
        사진
        <input type="text" name="photo">
    </div>
    <div>
        노트
        <input type="text" name="notes">
    </div>
    <div>
        <input type="submit" value="등록완료">
    </div>
</form>
</body>
</html>
