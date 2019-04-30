
//package com.codeup.adlister.dao;
//
//import com.codeup.adlister.models.Ad;
//
//import java.util.ArrayList;
//import java.util.List;
//
//public class ListAdsDao implements Ads {
//
//    private List<Ad> ads;
//    private List<Ad> ads_by_ID;
//    private String no_ads;
//
//    public List<Ad> all() {
//        return ads;
//    }
//
//    public List<Ad> search_add(String search) {
//        return ads;
//    }
//
//    public List<Ad> adds_by_user_id(int id) {
//        return ads;
//    }
//
//    public Long insert(Ad ad) {
//        ad.setId((long) ads.size());
//        ads.add(ad);
//        return ad.getId();
//    }
//
//    @Override
//    public Long delete(int delete_id) {
//        return null;
//    }
//
//
//    private String generateAds() {
//        return "There is nothing for sale in your area";
//    }
//
//}

package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.ArrayList;
import java.util.List;

public class ListAdsDao implements Ads {

    private List<Ad> ads;
    private List<Ad> ads_by_ID;
    private String no_ads;

    public List<Ad> all() {
        return ads;
    }

    public List<Ad> search_add(String search) {
        return ads;
    }

    public List<Ad> adds_by_user_id(int id) {
        return ads;
    }

    public List<Ad> adds_by_add_id(int id) {
        return ads;
    }

    public Long insert(Ad ad) {
        ad.setId((long) ads.size());
        ads.add(ad);
        return ad.getId();
    }

    @Override
    public Long delete(int delete_id) {
        return null;
    }

    @Override
    public void update_title(int id, String title) {

    }

    @Override
    public void update_description(int id, String description) {

    }

    @Override
    public void update_zipcode(int id, int zipcode) {

    }

    private String generateAds() {
        return "There is nothing for sale in your area";
    }

}

