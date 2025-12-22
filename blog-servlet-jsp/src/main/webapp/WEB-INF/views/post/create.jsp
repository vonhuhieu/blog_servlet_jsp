<%@ page contentType="text/html; charset=UTF-8" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm bài viết</title>
</head>
<body>

<style>
    a {
        text-decoration: none;
    }
</style>

<h2>Thêm bài viết mới</h2>

<form action="${pageContext.request.contextPath}/posts/create" method="post">
    <div>
        <label>Tiêu đề</label><br>
        <input type="text" name="title" required>
    </div>

    <br>

    <div>
        <label>Nội dung</label><br>
        <textarea name="content" rows="6" cols="50" required></textarea>
    </div>

    <br>

    <button type="submit">Lưu bài viết</button>
</form>

<br>
<a href="${pageContext.request.contextPath}/posts">← Quay lại</a>

</body>
</html>
