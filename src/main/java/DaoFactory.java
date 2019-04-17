public class DaoFactory {
    private static Cats catsDao;
    public static Cats getCatsDao() {
        if (catsDao == null) {
            catsDao = new CatHerder();
        }
        return catsDao;
    }



}
