package dao;

import java.sql.*;
import java.util.Properties;
import java.util.logging.Logger;

public class MySQLBooksDao implements Books{
    private Connection connection = null;
        public MySQLBooksDao(BookConfig config) {

        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("error connecting to database", e);
        }
}