package com.ecommerce.controller;

import com.ecommerce.domain.User;
import com.ecommerce.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.Optional;

@RestController
public class RegisterController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = {"/register"}, method = RequestMethod.POST)
    public ModelAndView createUser(@Valid @ModelAttribute("createUser")User user,
                                   Model model ,
                                   BindingResult bindingResult, HttpSession httpSession, RedirectAttributes redirectAttributes){
        ModelAndView modelAndView = new ModelAndView();

        if (bindingResult.hasErrors()) {
            modelAndView.setViewName("register");
            return modelAndView;
        }
        String username = user.getUsername();
        Optional<User> optionalUser = Optional.ofNullable(userService.findByUsername(username));

        if (optionalUser.isPresent()) {
            modelAndView.addObject("alreadyExistsUser", "Kullanıcı adı başka bir kullanıcı tarafından kullanılıyor. Lütfen farklı bir kullanıcı ismi deneyin.");
            model.addAttribute("pageType","/WEB-INF/jsp/register.jsp");
            modelAndView.setViewName("main");
            return modelAndView;
        }
        userService.saveUser(user);
        httpSession.setAttribute("userSession", user);
        redirectAttributes.addFlashAttribute("username",username);
        modelAndView.setViewName("redirect:/");
        return modelAndView;
    }

    @RequestMapping(value = {"/register"}, method = RequestMethod.GET)
    public ModelAndView getRegisterPage(@ModelAttribute("createUser") User user, ModelAndView modelAndView, HttpSession httpSession, RedirectAttributes redirectAttributes, Model model){

        User userSession = (User) httpSession.getAttribute("userSession");

        if(userSession != null){
            redirectAttributes.addFlashAttribute("username",userSession.getUsername());
            modelAndView.setViewName("redirect:/");
        } else {
            model.addAttribute("pageType","/WEB-INF/jsp/register.jsp");
            modelAndView.setViewName("main");
        }
        return modelAndView;
    }

}
