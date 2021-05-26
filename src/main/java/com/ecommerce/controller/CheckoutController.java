package com.ecommerce.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class CheckoutController {

    @RequestMapping("/checkout")
    public ModelAndView getCheckout(ModelAndView modelAndView){
        modelAndView.setViewName("checkout");
        return modelAndView;
    }
}
