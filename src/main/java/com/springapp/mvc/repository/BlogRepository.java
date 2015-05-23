package com.springapp.mvc.repository;

import com.springapp.mvc.entity.Blog;
import org.springframework.data.jpa.repository.JpaRepository;


/**
 * Created by sachindra on 22/05/2015.
 */
public interface BlogRepository extends JpaRepository<Blog, Integer> {


}