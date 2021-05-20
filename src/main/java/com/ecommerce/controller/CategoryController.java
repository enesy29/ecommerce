package com.ecommerce.controller;

import com.ecommerce.model.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class CategoryController {
    @GetMapping(value = {"/category"})
    public String showCagetory(Model model) {
        model.addAttribute("category","category");
        return "category";
    }
    @GetMapping(value = {"/category/{productId}"})
    public ModelAndView getCategory(@PathVariable("productId")Product product, ModelAndView modelAndView)
    {
        return modelAndView;
    }

}