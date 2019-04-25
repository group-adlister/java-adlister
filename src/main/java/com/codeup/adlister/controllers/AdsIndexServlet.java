package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NullPointerException {


        String searchTerm = request.getParameter("search");
        System.out.println(searchTerm);
        if (searchTerm == null) {
            request.setAttribute("ads", DaoFactory.getAdsDao().all());
            request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);

        }
        if (searchTerm != null) {
            System.out.println("hi");
            request.setAttribute("ads", DaoFactory.getAdsDao().searchForAds(searchTerm));
            request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
        }


    }
}
