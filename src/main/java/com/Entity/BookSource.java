package com.Entity;

public class BookSource {
    private int id;
    private String title;
    private String author;
    private String category;
    private String link;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public BookSource() {
        super();
    }

    public BookSource(String title, String author, String category, String link) {
        this.title = title;
        this.author = author;
        this.category = category;
        this.link = link;
    }
}
