package com.ecommerce.controller;

import com.ecommerce.model.User;
import com.ecommerce.service.UserService;
import org.dom4j.rule.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@RestController
public class ProfileController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = {"/profile"})
    public ModelAndView dashboard(ModelAndView modelAndView) {
        modelAndView.setViewName("profile");
        return modelAndView;
    }

    @RequestMapping(value = {"/editProfile/{id}"} , method = RequestMethod.GET)
    public ModelAndView ShowUpdateUser(@PathVariable("id") Long id , ModelAndView modelAndView , Model model){
        User user = userService.getUser(id);
        userService.updateUser(user,id);
        model.addAttribute("user",user);
        modelAndView.setViewName("editProfile");
        return modelAndView;
    }

    @RequestMapping(value = {"/editProfile"} , method = RequestMethod.POST)
    public ModelAndView updateUser(@Valid @ModelAttribute("user") User user, Long id , ModelAndView modelAndView, BindingResult bindingResult){

        if (bindingResult.hasErrors()){
            modelAndView.setViewName("editProfile");
            return modelAndView;
        }

        userService.updateUser(user,id);
        modelAndView.setViewName("redirect:/profile");
        return modelAndView;
    }

    @RequestMapping(value = "/logout")
    public ModelAndView logout(User user,ModelAndView modelAndView, HttpSession httpSession, RedirectAttributes redirectAttributes){
        httpSession.invalidate();
        modelAndView.setViewName("redirect:/login");
        return modelAndView;
    }

}
