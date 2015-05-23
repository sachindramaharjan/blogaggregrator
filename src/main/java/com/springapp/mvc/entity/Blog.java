package com.springapp.mvc.entity;

import javax.persistence.*;
import java.util.List;

/**
 * Created by sachindra on 22/05/2015.
 */
@Entity
public class Blog {
    @Id
    @GeneratedValue
    @Column(name = "blog_id")
    private int blogid;

    @Column(name = "url")
    private String url;

    @Column(name = "name")
    private String name;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @OneToMany(mappedBy = "blog")
    private List<Item> itemlist;

    public int getBlogid() {
        return blogid;
    }

    public void setBlogid(int blogid) {
        this.blogid = blogid;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Item> getItemlist() {
        return itemlist;
    }

    public void setItemlist(List<Item> itemlist) {
        this.itemlist = itemlist;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
