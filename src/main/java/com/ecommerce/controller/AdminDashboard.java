package com.ecommerce.controller;

import com.ecommerce.model.Product;
import com.ecommerce.service.AdminService;
import com.ecommerce.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
public class AdminDashboard {

    @Autowired
    private AdminService adminService;
    private final ProductService productService;

    public AdminDashboard(ProductService productService) {
        this.productService = productService;
    }


    @RequestMapping(value = {"/adminDashboard"})
    public ModelAndView dashboard(ModelAndView modelAndView) {
        modelAndView.setViewName("adminDashboard");
        return modelAndView;
    }
    @RequestMapping(value = {"/adminDashboard/viewProduct"})
        public List<Product> viewProduct(){
        List<Product> productList = productService.getAllProduct();
        return productList;
        }
    @RequestMapping(value = "/adminDashboard/viewProduct/addProduct", method = RequestMethod.POST)
    public ModelAndView addProduct(Model model , Product product)
    {
        Product newProduct = productService.addProduct(product);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("addProduct");
        return modelAndView;
    }
    @DeleteMapping("/adminDashboard/viewProduct/deleteProduct/{id}")
    public ModelAndView deleteProduct(@ModelAttribute("product") @PathVariable("productId") Long id, Model model){
        productService.deleteProduct(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("deleteProduct");
        return modelAndView;
    }
    @RequestMapping(value = {"/adminDashboard/viewProduct/updateProduct"}, method = RequestMethod.PUT)
    public ModelAndView updateProducts(@ModelAttribute("product") Product product) {
        Product product1 = productService.updateProducts(product);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("updateProduct");
        return modelAndView;
    }


}
