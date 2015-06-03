package com.springapp.mvc.repository;

import com.springapp.mvc.entity.Role;
import com.springapp.mvc.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;


/**
 * Created by sachindra on 22/05/2015.
 */
public interface RoleRepository extends JpaRepository<Role, Integer>{
    Role findByName(String name);
}
