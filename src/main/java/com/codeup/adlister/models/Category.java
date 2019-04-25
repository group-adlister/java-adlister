package com.codeup.adlister.models;

public class Category {
    private long id;
    private String size;

    public Category(long id, String size) {
        this.id = id;
        this.size = size;
    }

//    public Category(long id) {
//        this.id = id;
//    }

    public Category(String size) {
        this.size = size;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String title) {
        this.size = title;
    }

}
