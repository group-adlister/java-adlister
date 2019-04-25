package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@WebServlet(name = "controllers.AdDetailsServlet", urlPatterns = {"/ads/details"})
public class AdDetailsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//un comment when finished//////////////////////////////////////////////////////////
//        if (request.getSession().getAttribute("user") == null) {
//            response.sendRedirect("/login");
//            return;
//        }
///////////////////////////////////////////////////////////////////////////////////



//        request.setAttribute("adId", );


        request.setAttribute("ads", DaoFactory.getAdsDao().all());

        request.getRequestDispatcher("/WEB-INF/ads/details.jsp")
            .forward(request, response);
        String adId = request.getParameter("id");
        String adUrl = "/ads/details/" + adId;
        response.sendRedirect(adUrl);



    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {


//        User user = (User) request.getSession().getAttribute("user");
//        Ad ad = new Ad(
//            user.getId(),
//            request.getParameter("title"),
//            request.getParameter("description")
//        );
//        DaoFactory.getAdsDao().insert(ad);

//        response.sendRedirect("/ads/details/");

//        String adId = request.getParameter("id");
//        String adUrl = "/ads/details/" + adId;
//        response.sendRedirect(adUrl);
    }
}
