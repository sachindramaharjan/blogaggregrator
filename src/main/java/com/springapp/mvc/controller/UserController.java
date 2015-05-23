package com.springapp.mvc.controller;

import com.springapp.mvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by sachindra on 22/05/2015.
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/users")
    public String users(Model model){
        model.addAttribute("users", userService.findAllUsers());
        return "users";
    }

    @RequestMapping("/users/{id}")
    public String user(Model model, @PathVariable int id){
        model.addAttribute("user", userService.findOne(id));
        return "user_detail";
    }

}
