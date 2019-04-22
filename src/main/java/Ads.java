import java.util.List;
//import com.codeup.adlister.models.Ad;


public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
}
