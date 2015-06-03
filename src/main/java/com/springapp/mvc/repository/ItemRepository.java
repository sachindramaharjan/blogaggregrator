package com.springapp.mvc.repository;

import com.springapp.mvc.entity.Blog;
import com.springapp.mvc.entity.Item;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


/**
 * Created by sachindra on 22/05/2015.
 */
public interface ItemRepository extends JpaRepository<Item, Integer>{

    List<Item> findByBlog(Blog blog, Pageable pageable);

}
