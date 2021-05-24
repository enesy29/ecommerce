package com.ecommerce.controller;

import com.ecommerce.global.GlobalData;
import com.ecommerce.model.Product;
import com.ecommerce.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class CartController {
    @Autowired
    ProductService productService;

    @RequestMapping(value = "/addToCart/{productId}",method = RequestMethod.POST)
    public ModelAndView addToCart(@PathVariable long productId){
        ModelAndView modelAndView = new ModelAndView();
        GlobalData.cart.add(productService.getProductByProductId(productId));
        modelAndView.setViewName("redirect:/view/{productId}");
        return modelAndView;
    }
    @RequestMapping(value = "/cart",method = RequestMethod.GET)
    public ModelAndView cartGet(Model model){
        Product product = new Product();
        model.addAttribute("cartCount",GlobalData.cart.size());
        model.addAttribute("total",GlobalData.cart.stream().mapToDouble(Product::getPrice).sum());
        model.addAttribute("cart",GlobalData.cart);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("cart");
        return modelAndView;
    }

    @RequestMapping(value = "/cart/removeItem/{productId}",method = RequestMethod.GET)
    public ModelAndView cartItemRemove(@PathVariable Long productId){
        GlobalData.cart.remove(productId);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/cart");
        return modelAndView;
    }
    @RequestMapping(value = "/checkout",method = RequestMethod.GET)
    public ModelAndView checkout(Model model){
        ModelAndView modelAndView = new ModelAndView();
        model.addAttribute("total",GlobalData.cart.stream()
        .mapToDouble(Product::getPrice).sum());
        modelAndView.setViewName("checkout");
        return modelAndView;
    }

}
