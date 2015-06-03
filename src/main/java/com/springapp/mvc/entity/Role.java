package com.springapp.mvc.entity;

import org.springframework.context.annotation.EnableAspectJAutoProxy;

import javax.persistence.*;
import java.util.List;

/**
 * Created by sachindra on 22/05/2015.
 */
@Entity
@Table(name = "role")
public class Role {
    @Id
    @GeneratedValue
    @Column(name = "role_id")
    private int roleid;

    @Column(name = "name")
    private String name;

    @ManyToMany(mappedBy = "rolelist")
    private List<User> userlist;

    public int getId() {
        return roleid;
    }

    public void setId(int roleid) {
        this.roleid = roleid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
