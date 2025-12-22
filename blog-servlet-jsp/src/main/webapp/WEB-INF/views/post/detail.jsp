<%@ page contentType="text/html; charset=UTF-8" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết bài viết</title>
</head>
<body>

<h2>${post.title}</h2>

<p>
    ${post.content}
</p>

<hr>

<a href="${pageContext.request.contextPath}/posts/edit?id=${post.id}">
    ✏️ Sửa bài viết
</a>

<hr>

<a href="${pageContext.request.contextPath}/posts/delete?id=${post.id}"
   onclick="return confirm('Bạn có chắc muốn xóa bài viết này không?')">
    🗑️ Xóa bài viết
</a>

<hr>

<a href="${pageContext.request.contextPath}/posts">
    ← Quay lại danh sách
</a>

</body>
</html>
