package com.ecommerce.controller;

import com.ecommerce.domain.Product;
import com.ecommerce.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
@RequestMapping("/admin")
public class AdminHomeController {
    @Autowired
    private ProductService productService;

    @RequestMapping
    public ModelAndView adminPage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("admin");
        return modelAndView;
    }

    @RequestMapping("/productInventory")
    public ModelAndView productInventory(Model model) {
        ModelAndView modelAndView = new ModelAndView();
        List<Product> products = productService.getAllProduct();
        model.addAttribute("products", products);
        modelAndView.setViewName("productInventory");
        return modelAndView;
    }
}

