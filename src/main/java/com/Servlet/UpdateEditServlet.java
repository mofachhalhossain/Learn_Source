package com.Servlet;

import com.DB.DatabaseConnect;
import com.Dao.BookDao;
import com.Entity.BookSource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/update")
public class UpdateEditServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            int id = Integer.parseInt(req.getParameter("id"));
            String title = req.getParameter("title");
            String author = req.getParameter("author");
            String category = req.getParameter("category");
            String link = req.getParameter("link");

            BookSource bookSource = new BookSource();
            bookSource.setId(id);
            bookSource.setTitle(title);
            bookSource.setAuthor(author);
            bookSource.setCategory(category);
            bookSource.setLink(link);

            HttpSession session = req.getSession();

            BookDao bookDao = new BookDao(DatabaseConnect.getConnection());
            boolean isfalse = bookDao.updateEdit(bookSource);
            if (isfalse){
                session.setAttribute("msg", "Book info updated");
                resp.sendRedirect("viewBook.jsp");
            }else {
                session.setAttribute("msg", "Error 404");
                resp.sendRedirect("viewBook.jsp");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
