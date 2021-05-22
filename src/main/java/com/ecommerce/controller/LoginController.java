package com.ecommerce.controller;

import com.ecommerce.Exception.UserNotFoundException;
import com.ecommerce.model.User;
import com.ecommerce.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

@RestController
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = {"/login"}, method = RequestMethod.POST)
    public ModelAndView userLogin(@ModelAttribute("login") User user,RedirectAttributes redirectAttributes,@RequestParam(value = "error", required = false) String error,
                                  @RequestParam(value = "logout", required = false) String logout, Model model){
        ModelAndView modelAndView = new ModelAndView();
        User userLogin = userService.login(user);
        String username = userLogin.getUsername();

        if(error != null){
            model.addAttribute("error","Kullanıcı adı veya şifre hatalı !");
        }

        if (logout != null){
            model.addAttribute("msg","Çıkış işlemi başarılı");
        }

        redirectAttributes.addFlashAttribute("username", username);
        modelAndView.setViewName("redirect:/dashboard");
        return modelAndView;
    }

    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public ModelAndView showLogin(@ModelAttribute("login") User user, ModelAndView modelAndView) {
        modelAndView.setViewName("login");
        return modelAndView;
    }

}
