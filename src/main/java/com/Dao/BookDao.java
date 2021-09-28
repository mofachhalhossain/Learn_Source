package com.Dao;

import com.Entity.BookSource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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

    public List<BookSource> getAllBookSource(){
        List<BookSource> list = new ArrayList<BookSource>();
        BookSource bookSource = null;

        try {
            String sql = "select * from source order by id desc";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                bookSource = new BookSource();
                bookSource.setId(resultSet.getInt(1));
                bookSource.setTitle(resultSet.getString(2));
                bookSource.setAuthor(resultSet.getString(3));
                bookSource.setCategory(resultSet.getString(4));
                bookSource.setLink(resultSet.getString(5));
                list.add(bookSource);
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return list;
    }
}
