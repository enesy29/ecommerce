package com.ecommerce.controller;

import com.ecommerce.service.ProductService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@RestController
public class HelloController {

    private final ProductService productService;

    public HelloController(ProductService productService) {
        this.productService = productService;
    }

    @RequestMapping(value = {"/", "/index"})
    public ModelAndView indexPage(Model model, HttpServletRequest request) {
        request.setAttribute("product",productService.getAllProduct());
        request.setAttribute("mode", "ALL_PRODUCTS");
        //model.addAttribute("product",productService.getAllProduct());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        return modelAndView;
    }

}
