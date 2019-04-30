package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


//        if (request.getSession().getAttribute("user") == null) {
//            response.sendRedirect("/login");
//            return;
//        }


//        List<Ad> ads = new ArrayList<>();

//        if (ads == DaoFactory.getAdsDao().search_add(request.getParameter("search"))){
//        String search = "";
//        if (search == "") {
            request.setAttribute("ads", DaoFactory.getAdsDao().all());
//        }
//        }


//        search = request.getParameter("search");
//        request.setAttribute("ads", DaoFactory.getAdsDao().search_ad(search));




//        ads = DaoFactory.getAdsDao().search_add(request.getParameter("search"));
//        request.setAttribute("ads", ads);

        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {



    }

}
