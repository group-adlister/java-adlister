package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Category;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        if (request.getSession().getAttribute("user") == null) {
//            response.sendRedirect("/login");
//            return;
//        }
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
            .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String size = request.getParameter("size");
        System.out.println(size + "size sout test");
        User user = (User) request.getSession().getAttribute("user");
//        Category category = (Category) request.getAttribute("category");
//        Category category = DaoFactory.getCategoriesDao().findByCategory(cat);
//        System.out.println("asdf" + category);
//        request.getSession().setAttribute("category", category);
//        Category category = new Category();
        Category category = new Category(size);
        DaoFactory.getCategoriesDao().insert(category);
        Ad ad = new Ad(
            user.getId(),
            category.getId(),
            request.getParameter("title"),
            request.getParameter("description")
        );

        // testing //
//        boolean validAttempt = Password.check(password, user.getPassword());

//        if (validAttempt) {
//            response.sendRedirect("/profile");
//        } else {
//            response.sendRedirect("/login");
//        }
        // end testing //

        DaoFactory.getAdsDao().insert(ad);
        response.sendRedirect("/ads");
    }
}
