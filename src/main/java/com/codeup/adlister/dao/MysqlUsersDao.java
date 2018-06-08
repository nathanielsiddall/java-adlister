package com.codeup.adlister.dao;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;
import java.sql.*;

public  class MysqlUsersDao implements Users {
    Config config = new Config();





    @Override
    public User findByUsername(String email) throws SQLException {


            String sql = "SELECT * FROM users WHERE email LIKE ?";
            DriverManager.registerDriver(new Driver());
            Connection connection = null;
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );

        PreparedStatement statement = connection.prepareStatement(sql);

        try {

            System.out.println(email);
            statement.setString(1,"%" + email + "%");

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()){
                User user = new User();
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
                return user;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Long insert(User user) {
        long number = 1;
        try {
            DriverManager.registerDriver(new Driver());
            Connection conn = DriverManager.getConnection(

                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );

            String sql = "INSERT INTO users(email, password) VALUES (?, ?)";
            PreparedStatement stmt
                    = conn.prepareStatement(
                    sql,
                    Statement.RETURN_GENERATED_KEYS
            );
            stmt.setString(1, user.getEmail());
            stmt.setString(2, user.getPassword());
            System.out.println(sql);
            stmt.executeUpdate();

            ResultSet rs = stmt.getGeneratedKeys();

            rs.next();
            return number;

        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }
}






