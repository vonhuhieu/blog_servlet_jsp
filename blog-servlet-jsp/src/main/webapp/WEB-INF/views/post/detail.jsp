<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết bài viết</title>
</head>
<body>

<style>
    a {
        text-decoration: none;
    }
</style>

<h2>${post.title}</h2>
<p>${post.content}</p>
<hr>

<c:if test="${not empty sessionScope.user and sessionScope.user.role eq 'admin'}">
    <a href="${pageContext.request.contextPath}/posts/edit?id=${post.id}">✏️ Sửa bài viết</a>
    <a href="${pageContext.request.contextPath}/posts/delete?id=${post.id}"
       onclick="return confirm('Bạn có chắc muốn xóa bài viết này không?')">🗑️ Xóa bài viết</a>
</c:if>

<hr>
<a href="${pageContext.request.contextPath}/posts">← Quay lại danh sách</a>

</body>
</html>
