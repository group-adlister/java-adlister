package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    public MySQLAdsDao() {

    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
        public List<Ad> search_add(String search) {
        try {
            String insertQuery = "SELECT * FROM ads WHERE title LIKE ?";
            String searchTermWithWild = "%" + search + "%";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, searchTermWithWild);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    public List<Ad> adds_by_user_id(int id) {
        try {
            String insertQuery = "SELECT * FROM ads WHERE user_id LIKE ?";
            String searchTermWithWild = "%" + id + "%";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, searchTermWithWild);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    /* --This puts an add into the data base----------------------------------------------------------------------------------------- */
    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, description, zipcode) VALUES (?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.setLong(4, ad.getZipcode());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }


    public Long delete(int delete_id) {
        try {
            String insertQuery = "DELETE FROM ads WHERE id LIKE ?";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            System.out.println("apple");
            stmt.setInt(1, delete_id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
        return null;
    }


    public List<Ad> adds_by_add_id(int id) {
        try {
            String insertQuery = "SELECT * FROM ads WHERE id LIKE ?";
            String searchTermWithWild = "%" + id + "%";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, searchTermWithWild);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    /* -edit add------------------------------------------------------------------------------------------ */
    /* ------------------------------------------------------------------------------------------- */
    /* ------------------------------------------------------------------------------------------- */
    /* ------------------------------------------------------------------------------------------- */

    public void update_title(int id, String title) {
        try {
            String insertQuery = "UPDATE ads SET title = ? WHERE id = ?";
            String searchTitle = title;
            int searchId = id;
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, searchTitle);
            stmt.setInt(2, searchId);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    public void update_description(int id, String description) {
        try {
            String insertQuery = "UPDATE ads SET description = ? WHERE id = ?";
            String searchDescription = description;
            int searchId = id;
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, searchDescription);
            stmt.setInt(2, searchId);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    public void update_zipcode(int id, int zipcode) {
        try {
            String insertQuery = "UPDATE ads SET zipcode = ? WHERE id = ?";
            int searchZipcode = zipcode;
            int searchId = id;
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setInt(1, zipcode);
            stmt.setInt(2, searchId);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }


    /* ------------------------------------------------------------------------------------------------ */
    /* ------------------------------------------------------------------------------------------- */
    /* ------------------------------------------------------------------------------------------- */
    /* ------------------------------------------------------------------------------------------- */

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
            rs.getLong("id"),
            rs.getLong("user_id"),
            rs.getString("title"),
            rs.getString("description"),
            rs.getLong("zipcode")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

    long id = 0;

    private List<Ad> createAdsFromIdResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.getLong("id") == id) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

    public static void main(String[] args) {
        Config connection = new Config();
        MySQLAdsDao test = new MySQLAdsDao(connection);

        test.update_title(7, "kife");

    }

}
