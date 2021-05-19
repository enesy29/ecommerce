package com.ecommerce.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class DashboardController {

    @RequestMapping(value = {"/dashboard"})
    public ModelAndView dashboard(ModelAndView modelAndView) {
        modelAndView.setViewName("dashboard");
        return modelAndView;
    }
}
