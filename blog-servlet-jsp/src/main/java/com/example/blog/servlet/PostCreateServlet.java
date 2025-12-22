package com.example.blog.servlet;

import com.example.blog.dao.PostDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/posts/create")
public class PostCreateServlet extends HttpServlet {

    private final PostDAO postDAO = new PostDAO();

    // Hiển thị form
    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("/WEB-INF/views/post/create.jsp")
                .forward(request, response);
    }

    // Xử lý submit form
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String title = request.getParameter("title");
        String content = request.getParameter("content");

        postDAO.insert(title, content);

        // Redirect để tránh submit lại form
        response.sendRedirect(request.getContextPath() + "/posts");
    }
}
