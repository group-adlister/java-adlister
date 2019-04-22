import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.sql.DriverManager;
import com.mysql.cj.jdbc.Driver;
//import com.codeup.adlister.models.Ad;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

public class MySQLAdsDAO implements Ads {
    private Connection connection = null;
//    private List<Ad> ads = new ArrayList<>();

    public MySQLAdsDAO(Config config){
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        List<Ad> ads = new ArrayList<>();
        Statement stmt = null;
        try {
            stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM ads");
//            return createAdsFromResults(rs);
            /////////////////
            while (rs.next()) {
                Ad newAd = new Ad(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("title"),
                rs.getString("description")
                );
            ads.add(newAd);
            }
            //////////////
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
        return ads;
    }

//    @Override
//    public Long insert(Ad ad) {
//        try {
//            Statement stmt = connection.createStatement();
//            stmt.executeUpdate(createInsertQuery(ad), Statement.RETURN_GENERATED_KEYS);
//            ResultSet rs = stmt.getGeneratedKeys();
//            rs.next();
//            return rs.getLong(1);
//        } catch (SQLException e) {
//            throw new RuntimeException("Error creating a new ad.", e);
//        }
//    }


    @Override
    public Long insert(Ad ad) {
        Long newAdId = -1L;
//        String query =
//                "INSERT INTO ads(user_id, title, description) VALUES ('"
//                        + ad.getUserId()        + "','"
//                        + ad.getTitle()         + "','"
//                        + ad.getDescription()   + "')";
        String query = String.format("INSERT INTO ads(user_id, title, description) VALUES (%d, %s, %s')",
                ad.getUserId(),
                ad.getTitle(),
                ad.getDescription());
        try{
            Statement stmt = connection.createStatement();
            stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
        } catch (Exception e) {
            throw new RuntimeException("Error creating new ad.", e);
        }
        return newAdId;
    }


    private String createInsertQuery(Ad ad) {
        return "INSERT INTO ads(user_id, title, description) VALUES "
                + "(" + ad.getUserId() + ", "
                + "'" + ad.getTitle() +"', "
                + "'" + ad.getDescription() + "')";
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("title"),
                rs.getString("description")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

//    @Override
//    public Long insert(Ad ad) {
//        return null;
//    }

//    public List<Ad> all() {
////        Statemen
//        try {
//            DriverManager.registerDriver(new Driver());
//            connection = DriverManager.getConnection(
//                    config.getUrl(),
//                    config.getUsername(),
//                    config.getPassword()
//            );
//
//            Statement stmt = connection.createStatement();
//            ResultSet rs = stmt.executeQuery("select * from ads");
//
//            while (rs.next()) {
//                ads.add(
//                        new Ad(
//                                rs.getInt("id"),
//                                rs.getInt("user_id"),
//                                rs.getString("title"),
//                                rs.getString("description")
//                        )
//                );
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return new ArrayList<>();
//    }
}


//    public MySQLAdsDAO(Connection connection) {
//            this.connection = connection;
//            connection.
//        }
