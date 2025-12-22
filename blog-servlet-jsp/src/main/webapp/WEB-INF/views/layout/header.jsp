<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    a {
        text-decoration: none;
    }
</style>

<div style="background-color:#333; color:white; padding:10px;">
    <a href="${pageContext.request.contextPath}/posts" style="color:white; margin-right:20px;">🏠 Trang chủ</a>

    <c:if test="${not empty sessionScope.user}">
        <span>Xin chào, ${sessionScope.user.username}</span>

        <c:if test="${sessionScope.user.role eq 'admin'}">
            <a href="${pageContext.request.contextPath}/posts/create" style="color:white; margin-left:20px;">➕ Thêm bài viết</a>
        </c:if>

        <a href="${pageContext.request.contextPath}/logout" style="color:white; margin-left:20px;">Đăng xuất</a>
    </c:if>

    <c:if test="${empty sessionScope.user}">
        <a href="${pageContext.request.contextPath}/login" style="color:white; margin-left:20px;">Đăng nhập</a>
        <a href="${pageContext.request.contextPath}/register" style="color:white; margin-left:20px;">Đăng ký</a>
    </c:if>
</div>
<hr>
