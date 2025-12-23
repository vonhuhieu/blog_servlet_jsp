<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, model.Student" %>

<h2>Student List</h2>

<a href="addUser.jsp">Add new</a>

<table border="1">
    <tr>
        <th>ID</th><th>Name</th><th>Age</th><th>Action</th>
    </tr>

<%
    List<Student> list = (List<Student>) request.getAttribute("list");
    for (Student s : list) {
%>
<tr>
    <td><%= s.getId() %></td>
    <td><%= s.getName() %></td>
    <td><%= s.getAge() %></td>
    <td>
        <a href="student?action=edit&id=<%= s.getId() %>">Edit</a>
    </td>
</tr>
<%
    }
%>
</table>
