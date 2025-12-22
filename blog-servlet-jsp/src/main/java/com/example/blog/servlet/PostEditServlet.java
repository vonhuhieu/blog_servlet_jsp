package com.example.blog.servlet;

import com.example.blog.dao.PostDAO;
import com.example.blog.model.Post;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/posts/edit")
public class PostEditServlet extends HttpServlet {

    private final PostDAO postDAO = new PostDAO();

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        String idParam = request.getParameter("id");

        if (idParam == null) {
            response.sendRedirect(request.getContextPath() + "/posts");
            return;
        }

        int id = Integer.parseInt(idParam);
        Post post = postDAO.findById(id);

        if (post == null) {
            response.sendRedirect(request.getContextPath() + "/posts");
            return;
        }

        request.setAttribute("post", post);
        request.getRequestDispatcher("/WEB-INF/views/post/edit.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        String content = request.getParameter("content");

        postDAO.update(id, title, content);

        response.sendRedirect(
                request.getContextPath() + "/posts/detail?id=" + id
        );
    }
}
