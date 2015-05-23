package com.springapp.mvc.entity;

import javax.persistence.*;

/**
 * Created by sachindra on 22/05/2015.
 */
@Entity
public class Item {

    @Id
    @GeneratedValue
    @Column(name = "item_id")
    private int itemid;

    @Column(name = "description")
    private String description;

    @Column(name = "published_date")
    private String publisedDate;

    @Column(name = "link")
    private String link;

    @ManyToOne
    @JoinColumn(name = "blog_id")
    private Blog blog;

    public int getItemid() {
        return itemid;
    }

    public void setItemid(int itemid) {
        this.itemid = itemid;
    }

    public Blog getBlog() {
        return blog;
    }

    public void setBlog(Blog blog) {
        this.blog = blog;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPublisedDate() {
        return publisedDate;
    }

    public void setPublisedDate(String publisedDate) {
        this.publisedDate = publisedDate;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
}
