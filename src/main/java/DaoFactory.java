public class DaoFactory {
    private static Ads adsDao;
    private static Albums albumsDao;

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new ListAdsDao();
        }
        return adsDao;
    }

    public static Albums getAlbumsDao(){
        if (albumsDao == null) {
            albumsDao = new MySQLAlbumsDAO();
        }
        return albumsDao;
    }
}
