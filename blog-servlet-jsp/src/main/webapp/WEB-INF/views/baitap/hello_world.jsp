<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hello JSP</title>
</head>
<body>

<h1>Hello World!</h1>
<p>Đây là Java Web JSP đầu tiên của tôi 🚀</p>

<%
    String name = "Sinh viên CNTT";
%>

<p>Xin chào: <b><%= name %></b></p>

</body>
</html>
