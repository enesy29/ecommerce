package com.ecommerce.controller;

import com.ecommerce.Exception.UserNotFoundException;
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

import javax.servlet.http.HttpServletRequest;

@RestController
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = {"/login"}, method = RequestMethod.POST)
    public ModelAndView userLogin(@ModelAttribute("login") User user, BindingResult bindingResult, HttpServletRequest request, RedirectAttributes redirectAttributes) throws UserNotFoundException {
        ModelAndView model = new ModelAndView();
        User userLogin = userService.login(user);
        String username = userLogin.getUsername();
        if (null != userLogin){
            redirectAttributes.addFlashAttribute("username", username);
            model.setViewName("redirect:/dashboard");
            return model;
        }
        else
            throw new UserNotFoundException();
    }

    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public ModelAndView showLogin(@ModelAttribute("login") User user, ModelAndView modelAndView) {
        modelAndView.setViewName("login");
        return modelAndView;
    }

}
