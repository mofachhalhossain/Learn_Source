package com.Dao;

import com.Entity.BookSource;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class BookDao {
    private Connection connection;

    public BookDao(Connection connection) {
        this.connection = connection;
    }
    public boolean addBooks(BookSource bookSource){
        boolean isfalse = false;
        try {
            String sql = "INSERT INTO source(title, author, category, link) values(?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,bookSource.getTitle());
            preparedStatement.setString(2,bookSource.getAuthor());
            preparedStatement.setString(3,bookSource.getCategory());
            preparedStatement.setString(4,bookSource.getLink());

            int executeUpdate = preparedStatement.executeUpdate();

            if(executeUpdate==1){
                isfalse = true;
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return isfalse;
    }
}
