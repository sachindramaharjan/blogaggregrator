package com.springapp.mvc.repository;

import com.springapp.mvc.entity.Blog;
import com.springapp.mvc.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


/**
 * Created by sachindra on 22/05/2015.
 */
public interface BlogRepository extends JpaRepository<Blog, Integer> {

    List<Blog> findByUser(User user);

}