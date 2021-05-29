package com.ecommerce.controller;

import com.ecommerce.domain.Product;
import com.ecommerce.service.ProductService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.List;

@RestController
public class ProductController {

    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @RequestMapping(value = {"/","/allProducts"})
    public ModelAndView getProducts(Model model) {
        ModelAndView modelAndView = new ModelAndView();
        List<Product> products = productService.getAllProduct();
        model.addAttribute("products", products);
        model.addAttribute("pageType","/WEB-INF/jsp/productList.jsp");
        modelAndView.setViewName("main");
        return modelAndView;
    }


    @RequestMapping("/view/{productId}")
    public ModelAndView viewProduct(@PathVariable Long productId, Model model) throws IOException {
        ModelAndView modelAndView = new ModelAndView();
        Product product = productService.listProduct(productId);
        model.addAttribute("product", product);
        model.addAttribute("pageType","/WEB-INF/jsp/viewProduct.jsp");
        modelAndView.setViewName("main");
        return modelAndView;
    }

}
