package com.springapp.mvc.controller;

import com.springapp.mvc.entity.User;
import com.springapp.mvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * Created by sachindra on 02/06/2015.
 */
@Controller
@RequestMapping("/register")
public class RegisterController {

    @Autowired
    private UserService userService;

    //maps form elements with object
    @ModelAttribute("user") //should be same as in form commandName
    public User constructUser() {
        return new User();
    }

    @RequestMapping
    public String showRegister() {
        return "user-register";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String doRegister(@ModelAttribute("user") User user) {
        userService.save(user);
        return "redirect:/register.html?success=true";
    }

    @RequestMapping("/available")
    @ResponseBody
    public String isAvailable(@RequestParam("username") String username) {
        Boolean available = userService.findUsername(username) == null;
        return available.toString();
    }
}
