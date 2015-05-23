package com.springapp.mvc.service;

import com.springapp.mvc.entity.Blog;
import com.springapp.mvc.entity.Item;
import com.springapp.mvc.entity.Role;
import com.springapp.mvc.entity.User;
import com.springapp.mvc.repository.BlogRepository;
import com.springapp.mvc.repository.ItemRepository;
import com.springapp.mvc.repository.RoleRepository;
import com.springapp.mvc.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by sachindra on 22/05/2015.
 */

@Transactional
@Service
public class InitDBService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private BlogRepository blogRepository;

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private ItemRepository itemRepository;

    @PostConstruct
    public void init(){
        Role roleUser = new Role();
        roleUser.setName("USER_ROLE");
        roleRepository.save(roleUser);

        Role roleAdmin = new Role();
        roleUser.setName("USER_ADMIN");
        roleRepository.save(roleAdmin);

        User admin = new User();
        admin.setName("Admin");
        userRepository.save(admin);

        List<Role> roles = new ArrayList<Role>();
        roles.add(roleUser);
        roles.add(roleAdmin);
        admin.setRolelist(roles);

        Blog blog = new Blog();
        blog.setName("Blog1");
        blog.setUrl("https://github.com/opensearch.xml");
        blog.setUser(admin);
        blogRepository.save(blog);

        Item item1 = new Item();
        item1.setBlog(blog);
        item1.setDescription("item1 blog");
        item1.setLink("http://sachindramaharjan.com.np");
        item1.setPublisedDate("12/12/2014");
        itemRepository.save(item1);

        Item item2 = new Item();
        item2.setBlog(blog);
        item2.setDescription("item2 blog");
        item2.setLink("http://sachindramaharjan.com.np");
        item2.setPublisedDate("12/05/2014");
        itemRepository.save(item2);

    }


}
