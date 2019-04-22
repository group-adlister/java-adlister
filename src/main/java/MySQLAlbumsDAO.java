//import java.sql.*;
//import java.util.ArrayList;
//import java.util.List;
//import com.mysql.cj.jdbc.Driver;
//
//
//public class MySQLAlbumsDAO implements Albums {
//    private List<Album> albums = new ArrayList<>();
//
//    public List<Album> all() {
//        try {
//            DriverManager.registerDriver(new Driver());
//            Connection connection = DriverManager.getConnection(
//                    Config.getUrl(),
//                    Config.getUsername(),
//                    Config.getPassword()
//            );
//
//            Statement stmt = connection.createStatement();
//            ResultSet rs = stmt.executeQuery("select * from albums");
//
//            while(rs.next()){
//                albums.add(
//                      new Album(
//                              rs.getLong("id"),
//                              rs.getString("artist"),
//                              rs.getString("name"),
//                              rs.getString("year"),
//                              rs.getString("releaseYear"),
//                              rs.getString("genre"),
//                              rs.getDouble("sales")
//                      )
//                );
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return new ArrayList<>();
//    }
//}
//
////    public Long insert(Album album) {
////        // make sure we have ads
////        if (albums == null) {
//////            albums = generateAds();
////        }
////        // we'll assign an "id" here based on the size of the ads list
////        // really the database would handle this
////        album.setId((long) albums.size());
////        albums.add(album);
////        return album.getId();
////    }
//
////    private List<Ad> generateAds() {
////        List<Ad> ads = new ArrayList<>();
////        ads.add(new Ad(
////            1,
////            1,
////            "playstation for sale",
////            "This is a slightly used playstation"
////        ));
////        ads.add(new Ad(
////            2,
////            1,
////            "Super Nintendo",
////            "Get your game on with this old-school classic!"
////        ));
////        ads.add(new Ad(
////            3,
////            2,
////            "Junior Java Developer Position",
////            "Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript"
////        ));
////        ads.add(new Ad(
////            4,
////            2,
////            "JavaScript Developer needed",
////            "Must have strong Java skills"
////        ));
////        return ads;
////    }
