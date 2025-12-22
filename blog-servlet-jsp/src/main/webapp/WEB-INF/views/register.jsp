<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head><title>Đăng ký</title></head>
<body>

<style>
    a {
        text-decoration: none;
    }
</style>

<h2>Đăng ký</h2>
<c:if test="${not empty error}">
    <p style="color:red">${error}</p>
</c:if>
<form action="${pageContext.request.contextPath}/register" method="post">
    <label>Tên đăng nhập:</label>
    <input type="text" name="username" required><br><br>

    <label>Mật khẩu:</label>
    <input type="password" name="password" required><br><br>

    <label>Xác nhận mật khẩu:</label>
    <input type="password" name="confirmPassword" required><br><br>

    <button type="submit">Đăng ký</button>
</form>
<a href="${pageContext.request.contextPath}/login">← Quay lại đăng nhập</a>
</body>
</html>
