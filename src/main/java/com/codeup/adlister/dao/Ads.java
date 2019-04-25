package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
    //list only a selected user's ads
    List<Ad> listUsersAds(Long userID);
    //Search
    List<Ad> searchForAds(String search);
    //Click on an ad
    List<Ad> clickOnAd(long thisID);

}

