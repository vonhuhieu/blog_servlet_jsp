<%@ page contentType="text/html; charset=UTF-8" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Sửa bài viết</title>
</head>
<body>

<style>
    a {
        text-decoration: none;
    }
</style>

<h2>Sửa bài viết</h2>

<form action="${pageContext.request.contextPath}/posts/edit" method="post">
    <input type="hidden" name="id" value="${post.id}">

    <div>
        <label>Tiêu đề</label><br>
        <input type="text" name="title" value="${post.title}" required>
    </div>

    <br>

    <div>
        <label>Nội dung</label><br>
        <textarea name="content" rows="6" cols="50" required>${post.content}</textarea>
    </div>

    <br>

    <button type="submit">Cập nhật</button>
</form>

<br>
<a href="${pageContext.request.contextPath}/posts/detail?id=${post.id}">
    ← Hủy
</a>

</body>
</html>
