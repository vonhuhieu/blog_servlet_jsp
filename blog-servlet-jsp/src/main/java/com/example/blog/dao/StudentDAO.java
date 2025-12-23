package com.example.blog.dao;

import com.example.blog.model.Student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {

    private Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/testdb",
                "root",
                "123456"
        );
    }

    // ===== LIST =====
    public List<Student> getAll() throws Exception {
        List<Student> list = new ArrayList<>();
        String sql = "SELECT * FROM student";

        Connection conn = getConnection();
        PreparedStatement ps = conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            list.add(new Student(
                    rs.getInt("id"),
                    rs.getString("name"),
                    rs.getInt("age")
            ));
        }
        return list;
    }

    // ===== FIND BY ID (EDIT) =====
    public Student findById(int id) throws Exception {
        String sql = "SELECT * FROM student WHERE id = ?";
        Connection conn = getConnection();
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setInt(1, id);

        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            return new Student(
                    rs.getInt("id"),
                    rs.getString("name"),
                    rs.getInt("age")
            );
        }
        return null;
    }

    // ===== ADD =====
    public void insert(Student s) throws Exception {
        String sql = "INSERT INTO student(name, age) VALUES (?, ?)";
        Connection conn = getConnection();
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, s.getName());
        ps.setInt(2, s.getAge());
        ps.executeUpdate();
    }

    // ===== UPDATE =====
    public void update(Student s) throws Exception {
        String sql = "UPDATE student SET name=?, age=? WHERE id=?";
        Connection conn = getConnection();
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, s.getName());
        ps.setInt(2, s.getAge());
        ps.setInt(3, s.getId());
        ps.executeUpdate();
    }
}
