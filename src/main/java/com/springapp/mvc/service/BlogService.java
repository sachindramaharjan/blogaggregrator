package com.springapp.mvc.service;

import com.springapp.mvc.entity.Blog;
import com.springapp.mvc.entity.User;
import com.springapp.mvc.repository.BlogRepository;
import com.springapp.mvc.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

/**
 * Created by sachindra on 25/05/2015.
 */
@Service
@Transactional
public class BlogService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private BlogRepository blogRepository;

    public void save(Blog blog, String name){
        User user = userRepository.findByName(name);
        blog.setUser(user);
        blogRepository.save(blog);
    }

    public Blog findOne(int id){
        return blogRepository.findOne(id);
    }

    @PreAuthorize("#blog.user.name == authentication.name or hasRole('ROLE_ADMIN')")    //check blog username with authentication name or admin
    public void delete(@P("blog") Blog blog){  //"blog" should match with #blog
        blogRepository.delete(blog);
    }
}
