package com.ecommerce.controller;

import com.ecommerce.domain.Admin;
import com.ecommerce.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import javax.servlet.http.HttpSession;

@RestController
public class AdminLoginController {

    @Autowired
    private final AdminService adminService;

    public AdminLoginController(AdminService adminService) {
        this.adminService = adminService;
    }

    @RequestMapping(value = {"/adminLogin"}, method = RequestMethod.POST)
    public ModelAndView adminLogin(@ModelAttribute("login") Admin admin, HttpSession httpSession, RedirectAttributes redirectAttributes,ModelAndView modelAndView) {
        Admin adminLogin = adminService.login(admin);

        if (adminLogin == null){
            modelAndView.addObject("passwordOrUsernameError", "Kullanıcı adı ya da şifreniz hatalıdır.");
            modelAndView.setViewName("adminLogin");
            return modelAndView;
        }

        httpSession.setAttribute("adminSession",adminLogin);

        redirectAttributes.addFlashAttribute("username", adminLogin.getUsername());
        modelAndView.setViewName("redirect:/admin");
        return modelAndView;
    }

    @RequestMapping(value = {"/adminLogin"}, method = RequestMethod.GET)
    public ModelAndView showLogin(@ModelAttribute("login") Admin admin, ModelAndView modelAndView , HttpSession httpSession, RedirectAttributes redirectAttributes) {

        Admin adminSession = (Admin) httpSession.getAttribute("adminSession") ;

        if (adminSession != null) {
            redirectAttributes.addFlashAttribute("username", adminSession.getUsername());
            modelAndView.setViewName("redirect:/admin");
        } else {
            modelAndView.setViewName("adminLogin");
        }

        return modelAndView;
    }
}
