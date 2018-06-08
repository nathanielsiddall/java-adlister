package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.sql.SQLException;

public interface Users {
    User findByUsername(String username) throws SQLException;
    Long insert(User user);
}
