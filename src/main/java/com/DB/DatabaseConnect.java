package com.DB;

import java.sql.Connection;

import java.sql.DriverManager;

public class DatabaseConnect {
    private static Connection connection;

    public static Connection getConnection(){
        try {
            if (connection == null) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://localhost:{port}/{query_name}", "user", "password");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return connection;
    }

}
