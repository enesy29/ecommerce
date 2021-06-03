package com.ecommerce.controller;

import com.ecommerce.domain.CartItem;
import com.ecommerce.domain.Product;
import com.ecommerce.service.CartItemService;
import com.ecommerce.service.ProductService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.*;

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
    public ModelAndView viewProduct(@PathVariable Long productId, Model model){
        ModelAndView modelAndView = new ModelAndView();
        Product product = productService.listProduct(productId);

        /*Map qty = new HashMap();
        Map<Integer, Integer> quantity = new LinkedHashMap<>();
        quantity.put(1,1);
        quantity.put(2,2);
        qty.put("qtyList", quantity);*/
        //model.addAttribute("qtyList", qtyList);
        //model.addAttribute("qty",qty);

        model.addAttribute("product", product);
        model.addAttribute("pageType","/WEB-INF/jsp/viewProduct.jsp");
        modelAndView.setViewName("main");
        return modelAndView;
    }

}
