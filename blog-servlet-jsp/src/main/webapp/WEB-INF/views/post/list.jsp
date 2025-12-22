<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách bài viết</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0 20px;
        }

        h2 {
            text-align: center;
            margin-top: 20px;
            color: #333;
        }

        .post-card {
            border: 1px solid #ccc;
            padding: 15px 20px;
            margin-bottom: 15px;
            border-radius: 8px;
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .post-card:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 10px rgba(0,0,0,0.15);
        }

        .post-card h3 {
            margin: 0 0 10px 0;
            color: #007BFF;
        }

        .post-card h3 a {
            text-decoration: none;
            color: inherit;
        }

        .post-card p {
            color: #555;
            line-height: 1.6;
        }

        .post-actions {
            margin-top: 10px;
        }

        .post-actions a {
            text-decoration: none;
            color: #007BFF;
            margin-right: 10px;
            font-weight: bold;
        }

        .post-actions a:hover {
            text-decoration: underline;
        }
    </style>

    <style>
        a {
            text-decoration: none;
        }
    </style>
</head>

<body>

<h2>Danh sách bài viết</h2>

<c:forEach items="${posts}" var="p">
    <a href="${pageContext.request.contextPath}/posts/detail?id=${p.id}">
        <div class="post-card">
            <h3>
                ${p.title}
            </h3>
            <p>${p.content}</p>

            <c:if test="${not empty sessionScope.user && sessionScope.user.role eq 'admin'}">
                <div class="post-actions">
                    <a href="${pageContext.request.contextPath}/posts/edit?id=${p.id}">✏️ Sửa</a>
                    <a href="${pageContext.request.contextPath}/posts/delete?id=${p.id}" onclick="return confirm('Xóa bài viết này?')">🗑️ Xóa</a>
                </div>
            </c:if>
        </div>
    </a>
</c:forEach>

</body>
</html>
