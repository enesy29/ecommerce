package com.ecommerce.controller;

import com.ecommerce.domain.User;
import com.ecommerce.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

@RestController
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = {"/login"}, method = RequestMethod.POST)
    public ModelAndView userLogin(@ModelAttribute("login") User user, RedirectAttributes redirectAttributes,
                                  Model model,HttpSession httpSession, ModelAndView modelAndView) {

        User userLogin = userService.login(user);

        if(userLogin == null){
            modelAndView.addObject("passwordOrUsernameError", "Kullanıcı adı ya da şifreniz hatalıdır.");
            model.addAttribute("pageType","/WEB-INF/jsp/login.jsp");
            modelAndView.setViewName("main");
            return modelAndView;
        }

        httpSession.setAttribute("userSession", userLogin);

        redirectAttributes.addFlashAttribute("username", userLogin.getUsername());
        modelAndView.setViewName("redirect:/");
        return modelAndView;
    }

    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public ModelAndView showLogin(@ModelAttribute("login") User user, ModelAndView modelAndView, HttpSession httpSession, RedirectAttributes redirectAttributes , Model model) {
        User userSession = (User) httpSession.getAttribute("userSession");
        if (userSession != null) {
            redirectAttributes.addFlashAttribute("username", userSession.getUsername());
            modelAndView.setViewName("redirect:/");
        } else {
            model.addAttribute("pageType","/WEB-INF/jsp/login.jsp");
            modelAndView.setViewName("main");
        }
        return modelAndView;
    }
}
