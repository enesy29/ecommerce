package com.ecommerce.controller;

import com.ecommerce.model.User;
import com.ecommerce.service.UserService;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.Optional;

@RestController
public class RegisterController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = {"/register"}, method = RequestMethod.POST)
    public ModelAndView createUser(@Valid @ModelAttribute("createUser")User user, BindingResult bindingResult, HttpSession httpSession, RedirectAttributes redirectAttributes){
        ModelAndView model = new ModelAndView();

        if (bindingResult.hasErrors()) {
            model.setViewName("register");
            return model;
        }
        String username = user.getUsername();
        Optional<User> optionalUser = Optional.ofNullable(userService.findUserByUsername(username));

        if (optionalUser.isPresent()) {
            model.addObject("alreadyExistsUser", "Kullanıcı adı başka bir kullanıcı tarafından kullanılıyor. Lütfen farklı bir kullanıcı ismi deneyin.");
            model.setViewName("register");
            return model;
        }
        userService.saveUser(user);
        httpSession.setAttribute("userSession", user);
        redirectAttributes.addFlashAttribute("username",username);
        model.setViewName("redirect:/profile");
        return model;
    }

    @RequestMapping(value = {"/register"}, method = RequestMethod.GET)
    public ModelAndView getRegisterPage(@ModelAttribute("createUser") User user, ModelAndView modelAndView, HttpSession httpSession, RedirectAttributes redirectAttributes){

        User userSession = (User) httpSession.getAttribute("userSession");

        if(userSession != null){
            redirectAttributes.addFlashAttribute("username",userSession.getUsername());
            modelAndView.setViewName("redirect:/profile");
        } else {
            modelAndView.setViewName("register");
        }
        return modelAndView;
    }

}
