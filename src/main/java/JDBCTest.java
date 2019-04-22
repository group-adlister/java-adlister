////import java.sql.*;
//import java.sql.*;
//
//import com.mysql.cj.jdbc.Driver;
//
//
//public class JDBCTest {
//
//
//    public static void main(String[] args) {
//        try {
//            DriverManager.registerDriver(new Driver());
//            Connection connection = DriverManager.getConnection(
//                    "jdbc:mysql://localhost/codeup_test_db?serverTimezone=UTC&useSSL=false",
//                    "root",
//                    "password"
//            );
//
//            Statement stmt = connection.createStatement();
//            ResultSet rs = stmt.executeQuery("select * from albums");
//
//            while(rs.next()){
//                System.out.println("first name - " + rs.getString("artist")); // use alias as columnLabel
//
//                System.out.println(rs.getString(1));
//            }
//
//
//
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//}
