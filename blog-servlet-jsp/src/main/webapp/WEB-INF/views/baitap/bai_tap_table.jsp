<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bài tập JSP - Table</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }

        /* ===== BẢNG CHUNG ===== */
        table {
            border-collapse: collapse;
            margin-bottom: 30px;
            width: 600px;
        }

        th, td {
            border: 1px solid #333;
            padding: 8px 12px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        /* ===== BẢNG 2: dotted đỏ ===== */
        .table-dotted,
        .table-dotted th,
        .table-dotted td {
            border: 2px dotted red;
        }
    </style>
</head>
<body>

<h2>Thông tin sinh viên</h2>

<!-- ===== BẢNG 1 ===== -->
<table class="table-normal">
    <tr>
        <th>Họ tên sinh viên</th>
        <th>MSSV</th>
    </tr>
    <tr>
        <td>Mai Hà Thi</td>
        <td>12345</td>
    </tr>
    <tr>
        <td>Nguyễn Văn A</td>
        <td>dsfdfdsf</td>
    </tr>
</table>

<table class="table-normal">
    <tr>
        <th>Lớp</th>
        <th>Tên sinh viên</th>
    </tr>
    <tr>
        <td rowspan="3">23CNTT1</td>
        <td>Nguyễn Văn A</td>
    </tr>
    <tr>
        <td>Nguyễn Văn B</td>
    </tr>
    <tr>
        <td>Lê Tấn Sang</td>
    </tr>
    <tr>
        <td rowspan="2">23CNTT2</td>
        <td>AFDEDF</td>
    </tr>
    <tr>
        <td>AFDEDFdrer</td>
    </tr>
</table>

<table class="table-normal">
    <tr>
        <th rowspan="2">Tên môn học</th>
        <th colspan="2">Điểm thay đổi</th>
    </tr>
    <tr>
        <th>Điểm chữ</th>
        <th>Điểm dạng số</th>
    </tr>
    <tr>
        <td>CSDL</td>
        <td>9</td>
        <td>Chín</td>
    </tr>
    <tr>
        <td>Lập trình mạng</td>
        <td>7</td>
        <td>Bảy</td>
    </tr>
</table>

<hr>

<h2>Bảng 2 (border dotted màu đỏ)</h2>

<!-- ===== BẢNG 2 ===== -->
<table class="table-dotted">
    <tr>
        <th>STT</th>
        <th>Họ tên</th>
        <th>Lớp</th>
    </tr>
    <tr>
        <td>1</td>
        <td>Nguyễn Văn A</td>
        <td>23CNTT1</td>
    </tr>
    <tr>
        <td>2</td>
        <td>Nguyễn Văn B</td>
        <td>23CNTT2</td>
    </tr>
</table>

</body>
</html>
