package com.Servlet;

import com.DB.DatabaseConnect;
import com.Dao.BookDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/delete")
public class Delete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{

            int id = Integer.parseInt(req.getParameter("id"));
            BookDao bookDao = new BookDao(DatabaseConnect.getConnection());
            boolean delete = bookDao.deleteEdit(id);

            HttpSession session = req.getSession();
            if (delete){
                session.setAttribute("msg", "Book info deleted");
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
