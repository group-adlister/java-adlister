package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.Config;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.MySQLAdsDao;
import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static com.codeup.adlister.dao.MySQLAdsDao.extractAd;

@WebServlet(urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setAttribute("ads", DaoFactory.getAdsDao().all());
//
//        // testing
////        request.setAttribute("searchResults", DaoFactory.getAdsDao());
//        try {
//            PreparedStatement stmt = null;
//            Config config = new Config();
//            Connection connection;
//            DriverManager.registerDriver(new Driver());
//            connection = DriverManager.getConnection(
//                    config.getUrl(),
//                    config.getUser(),
//                    config.getPassword()
//            );
//            stmt = connection.prepareStatement("SELECT * FROM ads");
//            ResultSet rs = stmt.executeQuery();
//            Ad searchedAd = new Ad(
//                    rs.getLong("id"),
//                    rs.getLong("user_id"),
//                    rs.getLong("category_id"),
//                    rs.getString("title"),
//                    rs.getString("description")
//            );
//            List<Ad> adsList = new ArrayList<>();
//            while (rs.next()) {
//                adsList.add(searchedAd);
//            }
//            request.setAttribute("searchResults", adsList);
////            response.getWriter().println("<h1>The searched item is " + rs.toString() +
////                    ".</h1>");
//
//        } catch (SQLException e) {
//            System.out.println(e + "ASDF");
//        }
        // end test

//        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
//    }
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
