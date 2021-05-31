package com.ecommerce.controller;

import com.ecommerce.domain.*;
import com.ecommerce.service.CartItemService;
import com.ecommerce.service.OrderService;
import com.ecommerce.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@RestController
public class ProfileController {

    @Autowired
    private UserService userService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private CartItemService cartItemService;


    /*@RequestMapping(value = {"/editProfile/{id}"} , method = RequestMethod.GET)
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
    }*/

    @RequestMapping(value = "/logout")
    public ModelAndView logout(User user,ModelAndView modelAndView, HttpSession httpSession, RedirectAttributes redirectAttributes){
        httpSession.invalidate();
        modelAndView.setViewName("redirect:/login");
        return modelAndView;
    }
    @RequestMapping("/profile")
    public ModelAndView listOrder(ModelAndView modelAndView , Model model , HttpSession session){
        User user = (User) session.getAttribute("userSession");
        model.addAttribute("user", user);
        model.addAttribute("orderList", user.getOrderList());
        model.addAttribute("pageType","/WEB-INF/jsp/profile.jsp");
        modelAndView.setViewName("main");
        return modelAndView;
    }
    @RequestMapping("/orderDetail/{orderId}")
    public ModelAndView orderDetail(
            @PathVariable("orderId") Long orderId,
             ModelAndView modelAndView, Model model, HttpSession session
    ){
        User user = (User) session.getAttribute("userSession");
        Order order = orderService.findOne(orderId);

        List<CartItem> cartItemList = cartItemService.findByOrder(order);
        model.addAttribute("cartItemList", cartItemList);
        model.addAttribute("user", user);
        model.addAttribute("order", order);
        model.addAttribute("orderList", user.getOrderList());
        model.addAttribute("pageType","/WEB-INF/jsp/orderDetail.jsp");
        modelAndView.setViewName("main");
        return modelAndView;
    }

}
