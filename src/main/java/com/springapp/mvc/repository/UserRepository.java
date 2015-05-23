package com.springapp.mvc.repository;

import com.springapp.mvc.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;


/**
 * Created by sachindra on 22/05/2015.
 */
public interface UserRepository extends JpaRepository<User, Integer>{

}
