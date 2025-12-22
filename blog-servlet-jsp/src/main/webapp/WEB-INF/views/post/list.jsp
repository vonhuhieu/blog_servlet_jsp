<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách bài viết</title>
</head>

<body>

<a href="${pageContext.request.contextPath}/posts/create">
    ➕ Thêm bài viết
</a>
<hr>

<h2>Danh sách bài viết</h2>

<c:forEach items="${posts}" var="p">
    <div>
        <h3>
            <a href="${pageContext.request.contextPath}/posts/detail?id=${p.id}">
                ${p.title}
            </a>
        </h3>
        <p>${p.content}</p>

        <a href="${pageContext.request.contextPath}/posts/delete?id=${p.id}"
            onclick="return confirm('Xóa bài viết này?')">
            Xóa
        </a>

        <hr>
    </div>
</c:forEach>

</body>
</html>
