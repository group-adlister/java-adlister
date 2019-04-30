package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();

    List<Ad> search_ad(String search);


    List<Ad> ads_by_user_id(int id);

    List<Ad> adds_by_user_id(int id);

    List<Ad> adds_by_add_id(int id);

    
    Long insert(Ad ad);

    Long delete(int delete_id);

    void update_title(int id, String title);

    void update_description(int id, String description);

    void update_zipcode(int id, int zipcode);
}

