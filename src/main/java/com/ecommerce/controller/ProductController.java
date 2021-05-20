package com.ecommerce.controller;

import com.ecommerce.model.Product;
import com.ecommerce.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
public class ProductController {

    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @RequestMapping(value = {"/product"}, method = RequestMethod.POST)
    public ModelAndView addProducts(@ModelAttribute("product") Product product, BindingResult bindingResult, HttpServletRequest request, RedirectAttributes redirectAttributes) {
        ModelAndView model = new ModelAndView();
        Product product1 = productService.addProduct(product);
        String productName = product1.getProductName();
        System.out.println("product : " +productName);
        model.setViewName("dashboard");
        return model;
    }
    @RequestMapping(value = {"/getProduct"}, method = RequestMethod.GET)
    public ModelAndView listProducts(@ModelAttribute("product") String name, ModelAndView modelAndView) {
        List<Product> product1 = productService.listProduct(name);
        modelAndView.setViewName("product");
        return modelAndView;
    }

    @RequestMapping(value = {"/updateProduct"}, method = RequestMethod.PUT)
    public ModelAndView updateProducts(@ModelAttribute("product") Product product, ModelAndView modelAndView) {
        Product product1 = productService.updateProducts(product);
        modelAndView.setViewName("product");
        return modelAndView;
    }
    @RequestMapping(value = {"/deletedProduct"}, method = RequestMethod.DELETE)
    public ModelAndView deleteProducts(@ModelAttribute("product") Long id, ModelAndView modelAndView) {
        productService.deleteProduct(id);
        modelAndView.setViewName("product");
        return modelAndView;
    }
}
