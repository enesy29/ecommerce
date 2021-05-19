package com.ecommerce.controller;

import com.ecommerce.model.User;
import com.ecommerce.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

@RestController
public class RegisterController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = {"/register"}, method = RequestMethod.POST)
    public ModelAndView createUser(@ModelAttribute("createUser") User user, BindingResult bindingResult, HttpServletRequest request, RedirectAttributes redirectAttributes) throws ServletException {
        ModelAndView model = new ModelAndView();

        User databaseUser = userService.saveUser(user);
        String username = databaseUser.getUsername();

        redirectAttributes.addFlashAttribute("username",username);
        model.setViewName("redirect:/dashboard");
        return model;
    }

    @RequestMapping(value = {"/register", "/register.html"}, method = RequestMethod.GET)
    public ModelAndView createUser(@ModelAttribute("createUser") User user, ModelAndView modelAndView) {
        modelAndView.setViewName("register");
        return modelAndView;
    }

}
