package com.springapp.mvc.entity;

import javax.persistence.*;
import java.util.List;

/**
 * Created by sachindra on 22/05/2015.
 */
@Entity
public class User {
    @Id
    @GeneratedValue
    @Column(name = "user_id")
    private int userid;

    @Column(name = "name")
    private String name;

    @Column(name = "email")
    private String email;

    @Column(name = "password")
    private String password;

    @ManyToMany
    @JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "userid"),
            inverseJoinColumns = @JoinColumn(name = "roleid"))
    private List<Role> rolelist;

    @OneToMany(mappedBy = "user")
    private List<Blog> bloglist;

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<Role> getRolelist() {
        return rolelist;
    }

    public void setRolelist(List<Role> rolelist) {
        this.rolelist = rolelist;
    }
}
