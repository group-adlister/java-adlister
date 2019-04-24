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

    public List<Ad> search_add() {
        return ads;
    }

    public Long insert(Ad ad) {
        ad.setId((long) ads.size());
        ads.add(ad);
        return ad.getId();
    }

    private String generateAds() {
        return "There is nothing for sale in your area";
    }
}
