package profile;

public class DaoFactory {
    private static Ads adsDao;

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new ListAdsDao();
        }
        return adsDao;
    }

    private static class Ads {


        public <object> object all() {
            return null;
        }
    }

    private static class ListAdsDao extends Ads {
    }
}
