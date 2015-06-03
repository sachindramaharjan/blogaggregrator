package com.springapp.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by sachindra on 23/05/2015.
 */
@Controller
public class LoginController {

    @RequestMapping("/login")
    public String login(){
        return "user-login";
    }

    @RequestMapping("/logout")
    public String logout(){return "user-logout";}

}
