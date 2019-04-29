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

@WebServlet(urlPatterns = "/this_ad")
public class ThisAdIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NullPointerException {

        //GET AD INFO
        String idAsString = request.getParameter("id");
        long adID = Long.parseLong(idAsString);
        request.setAttribute("ads", DaoFactory.getAdsDao().clickOnAd(adID));
//
//
//        //get seller info
//        String sellerAsString = request.getParameter("seller");
//        long sellerID = Long.parseLong((sellerAsString));
//
//        System.out.println(sellerID);

//        DaoFactory.getUsersDao().findByUsername("jeremy");



        request.getRequestDispatcher("/WEB-INF/ads/this_ad.jsp").forward(request, response);

    }
}
