package com.springapp.mvc.service;

import com.springapp.mvc.entity.User;
import com.springapp.mvc.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by sachindra on 22/05/2015.
 */
@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public List<User> findAllUsers(){
        return userRepository.findAll();
    }

    public User findOne(int id){
        return userRepository.findOne(id);
    }

}
