package com.codeup.adlister.dao;

/**
 * A class, ignored by git, to save configurations
 */
public class Config {
    public String getUrl() {
        return "jdbc:mysql://localhost/adlister_db?serverTimezone=UTC&useSSL=false";
    }
    public String getUser() {
        return "root";
    }
    public String getPassword() {
        return "codeup";
    }
}