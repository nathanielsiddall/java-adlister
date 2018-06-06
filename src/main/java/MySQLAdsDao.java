import com.mysql.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public  class MySQLAdsDao implements Ads{

    public MySQLAdsDao(Connection connection) {
        this.connection = connection;
    }

    private Connection connection;

    @Override
    public List<Ad> all() throws SQLException {
        DriverManager.registerDriver(new Driver());

        Config config = new Config();

        String username = config.getUsername();
        String password = config.getPassword();
        String url = config.getUrl();

        Connection connection = DriverManager.getConnection(
            "url", "username", "password"
        );

        Statement statement = connection.createStatement();
        String sql = "Select * from ads";
        ResultSet resultSet = statement.executeQuery(sql);


        List<Ad> ads = new ArrayList<>();
        while (resultSet.next()){
            ads.add(new Ad(
                    resultSet.getInt("id"),
                    resultSet.getInt("user_id"),
                    resultSet.getString("title"),
                    resultSet.getString("description")
            ));
        }
        return ads;
    }

    @Override
    public Long insert(Ad ad) {
        return null;
    }


}
