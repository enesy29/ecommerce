package com.ecommerce.controller;

import com.ecommerce.Exception.UserNotFoundException;
import com.ecommerce.model.Admin;
import com.ecommerce.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

@RestController
public class AdminLoginController {

    @Autowired
    private final AdminService adminService;

    public AdminLoginController(AdminService adminService) {
        this.adminService = adminService;
    }

    @RequestMapping(value = {"/adminLogin"}, method = RequestMethod.POST)
    public ModelAndView adminLogin(@ModelAttribute("login") Admin admin, BindingResult bindingResult, HttpServletRequest request, RedirectAttributes redirectAttributes) throws UserNotFoundException {
        ModelAndView model = new ModelAndView();
        Admin adminLogin = adminService.login(admin);

        String username = adminLogin.getUsername();
        redirectAttributes.addFlashAttribute("username", username);
        model.setViewName("redirect:/admin");
        return model;
    }

    @RequestMapping(value = {"/adminLogin"}, method = RequestMethod.GET)
    public ModelAndView showLogin(@ModelAttribute("login") Admin admin, ModelAndView modelAndView) {
        modelAndView.setViewName("adminLogin");
        return modelAndView;
    }
}
