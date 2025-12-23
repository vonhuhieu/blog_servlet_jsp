<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="model.Student" %>

<%
    Student s = (Student) request.getAttribute("student");
%>

<h2>${s == null ? "Add Student" : "Edit Student"}</h2>

<form method="post" action="student">
    <input type="hidden" name="id" value="<%= s != null ? s.getId() : "" %>">

    Name:
    <input type="text" name="name"
           value="<%= s != null ? s.getName() : "" %>"><br><br>

    Age:
    <input type="number" name="age"
           value="<%= s != null ? s.getAge() : "" %>"><br><br>

    <button type="submit">Save</button>
</form>
