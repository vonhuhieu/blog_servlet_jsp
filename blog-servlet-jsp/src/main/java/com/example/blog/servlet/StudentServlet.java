package com.example.blog.servlet;

import com.example.blog.dao.StudentDAO;
import com.example.blog.model.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class StudentServlet extends HttpServlet {

    private StudentDAO dao = new StudentDAO();

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String action = req.getParameter("action");

        try {
            if ("edit".equals(action)) {
                int id = Integer.parseInt(req.getParameter("id"));
                Student s = dao.findById(id);

                req.setAttribute("student", s);
                req.getRequestDispatcher("/WEB-INF/views/baitap/student/addUser.jsp").forward(req, resp);
            } else {
                req.setAttribute("list", dao.getAll());
                req.getRequestDispatcher("/WEB-INF/views/baitap/student/listUser.jsp").forward(req, resp);
            }
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        try {
            String idStr = req.getParameter("id");
            String name = req.getParameter("name");
            int age = Integer.parseInt(req.getParameter("age"));

            if (idStr == null || idStr.isEmpty()) {
                dao.insert(new Student(0, name, age));
            } else {
                dao.update(new Student(Integer.parseInt(idStr), name, age));
            }

            resp.sendRedirect("student");

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
