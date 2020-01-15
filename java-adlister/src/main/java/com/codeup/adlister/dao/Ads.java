package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
    // get a filtered list of Strings
    List<Ad> getFilteredList(String searchString);
    // get a filtered list of Strings
    List<Ad> getPreparedList(String searchString);
}
