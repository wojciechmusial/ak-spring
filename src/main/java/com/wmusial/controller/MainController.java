package com.wmusial.controller;

import com.wmusial.dao.UserDao;
import com.wmusial.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

    @Autowired
    private UserDao userDao;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getMainPage() {

        return "main";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String getLoginPage() {

        return "login";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String getRegisterPage() {

        return "register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@ModelAttribute User user) {

        System.out.println(user.getFirstName());

        try {
            user = userDao.save(user);
        } catch (Exception e) {

            return "redirect:/register";
        }
        return "redirect:/login";
    }


}
