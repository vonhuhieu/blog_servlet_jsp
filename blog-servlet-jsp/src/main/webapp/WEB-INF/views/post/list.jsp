<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách bài viết</title>
</head>

<body>

<h2>Danh sách bài viết</h2>

<c:forEach items="${posts}" var="p">
    <div style="border:1px solid #ccc; padding:10px; margin-bottom:10px; border-radius:5px;">
        <h3>
            <a href="${pageContext.request.contextPath}/posts/detail?id=${p.id}">${p.title}</a>
        </h3>
        <p>${p.content}</p>

        <c:if test="${not empty sessionScope.user && sessionScope.user.role eq 'admin'}">
            <a href="${pageContext.request.contextPath}/posts/edit?id=${p.id}">✏️ Sửa</a> |
            <a href="${pageContext.request.contextPath}/posts/delete?id=${p.id}" onclick="return confirm('Xóa bài viết này?')">🗑️ Xóa</a>
        </c:if>
    </div>
</c:forEach>

</body>
</html>
