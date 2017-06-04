package com.xiaokangchenng.util;

import org.junit.jupiter.api.Test;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;
import java.util.Properties;

/**
 * Created by chenxiaokang on 2017/6/1.
 */
public class JdbcUtil {

    private static String url;
    private static String username;
    private static String password;
    private static String driver;
    private static Properties prop;

    @Test
    public Connection getConn(){
        try {
            prop = new Properties();
            prop.load(new FileInputStream("/Users/chenxiaokang/Documents/EclipseDemo/MainPage/user.properties"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        url = prop.getProperty("url");
        username = prop.getProperty("username");
        password = prop.getProperty("password");
        driver = prop.getProperty("driver");
        Connection conn = null;
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url,username,password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    public void closeConn(Connection conn, PreparedStatement statement, ResultSet set){
        if(conn != null){
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(statement != null){
            try {
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(set != null){
            try {
                set.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
