<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bài tập JSP - Thư viện</title>

    <style>
        body {
            font-family: Arial;
            padding: 20px;
        }

        .highlight {
            background-color: yellow;
            font-weight: bold;
        }

        .return-date {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>

<h2>Bài tập Java Web - JSP</h2>

<form method="post">
    <p>
        Tên người dùng:
        <input type="text" name="username">
    </p>

    <p>
        Số lượng sách:
        <input type="number" name="number">
    </p>

    <p>
        Hình thức đăng ký:
        <input type="radio" name="typeSub" value="year"> Theo năm
        <input type="radio" name="typeSub" value="month"> Theo tháng
    </p>

    <p>
        Thể loại sách yêu thích:
        <select name="category">
            <option value="">-- Chọn --</option>
            <option value="Khoa học">Khoa học</option>
            <option value="Lịch sử">Lịch sử</option>
            <option value="Thiên văn học">Thiên văn học</option>
        </select>
    </p>

    <p>
        Ngày mượn sách:
        <input type="date" name="borrowDate">
    </p>

    <button type="submit">Tính toán</button>
</form>

<hr>

<%
    // ===== BÀI 3: CHECK NULL =====
    String username = request.getParameter("username");
    String numberStr = request.getParameter("number");
    String typeSub = request.getParameter("typeSub");
    String category = request.getParameter("category");
    String borrowDateStr = request.getParameter("borrowDate");

    if (username != null && numberStr != null && borrowDateStr != null
            && !username.isEmpty() && !numberStr.isEmpty() && !borrowDateStr.isEmpty()) {

        int number = Integer.parseInt(numberStr);

        // ===== BÀI 1.1: TÍNH NGÀY ĐỌC =====
        int readDays = (number > 10) ? 5 : 4;

        // ===== BÀI 2: TÍNH NGÀY TRẢ =====
        LocalDate borrowDate = LocalDate.parse(borrowDateStr);
        int dayOfMonth = borrowDate.getDayOfMonth();

        int bonusDays = (dayOfMonth % 2 == 1) ? 2 : 5;
        LocalDate returnDate = borrowDate.plusDays(readDays + bonusDays);

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
%>

<h3>Kết quả</h3>

<p>
    Tên người dùng:
    <span class="<%= "year".equals(typeSub) ? "highlight" : "" %>">
        <%= username %>
    </span>
</p>

<p>Số sách mượn: <b><%= number %></b></p>

<p>Số ngày đọc: <b><%= readDays %></b> ngày</p>

<p>Thể loại yêu thích: <b><%= category %></b></p>

<p>
    Ngày trả sách:
    <span class="return-date">
        <%= returnDate.format(formatter) %>
    </span>
</p>

<%
    }
%>

</body>
</html>
