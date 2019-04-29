package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/this_ad")
public class ThisAdIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NullPointerException {

//        request.setAttribute("ads", DaoFactory.getAdsDao().clickOnAd());
//        long adNum = request.getSession().getAttribute("ads");

        request.getRequestDispatcher("/WEB-INF/ads/this_ad.jsp").forward(request, response);
    }
}
