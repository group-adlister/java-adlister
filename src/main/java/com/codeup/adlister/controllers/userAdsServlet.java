package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.userAdsServlet", urlPatterns = "/userAds")
public class userAdsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

        String deleteID = request.getParameter("delete");
        int edit = Integer.parseInt(request.getParameter("edit"));
        int update = Integer.parseInt(request.getParameter("update"));

        if (deleteID != null) {
            DaoFactory.getAdsDao().delete(Integer.parseInt(deleteID));
        }

        if (update == 1) {
            System.out.println("add updtated");
        }

        User user = (User) request.getSession().getAttribute("user");
        int id = (int) user.getId();
        request.setAttribute("ads", DaoFactory.getAdsDao().adds_by_user_id(id));
        request.getRequestDispatcher("/WEB-INF/ads/userAds.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {


    }

}

