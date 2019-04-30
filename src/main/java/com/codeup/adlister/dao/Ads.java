package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();

    List<Ad> search_ad(String search);

    List<Ad> ads_by_user_id(int id);
    
    Long insert(Ad ad);

    Long delete(int delete_id);

}

