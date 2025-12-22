<%@ page contentType="text/html; charset=UTF-8" %>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
</head>
<body>
<h2>Đăng nhập</h2>
<c:if test="${not empty error}">
    <p style="color:red">${error}</p>
</c:if>
<form action="${pageContext.request.contextPath}/login" method="post">
    <label>Tên đăng nhập:</label>
    <input type="text" name="username" required><br><br>
    <label>Mật khẩu:</label>
    <input type="password" name="password" required><br><br>
    <button type="submit">Đăng nhập</button>
</form>
</body>
</html>
