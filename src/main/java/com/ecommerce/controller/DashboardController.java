package com.ecommerce.controller;

import com.ecommerce.model.User;
import com.ecommerce.service.UserService;
import com.ecommerce.service.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@RestController
public class DashboardController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = {"/dashboard"})
    public ModelAndView dashboard(ModelAndView modelAndView) {
        modelAndView.setViewName("dashboard");
        return modelAndView;
    }
    @RequestMapping(value = {"/update"} , method = RequestMethod.POST)
    public String updateUser(@ModelAttribute("user") User user){
        userService.updateUser(user);
        return "/update";
    }
}
