package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.updateAdServlet", urlPatterns = "/editAd$")
public class updateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

        int id = Integer.parseInt(request.getParameter("edit"));

        request.setAttribute("ads", DaoFactory.getAdsDao().adds_by_add_id(id));

        request.getRequestDispatcher("/WEB-INF/ads/editAd$.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {


    }

}
