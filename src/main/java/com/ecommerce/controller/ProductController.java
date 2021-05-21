package com.ecommerce.controller;

import com.ecommerce.model.Product;
import com.ecommerce.service.ProductService;
import org.springframework.http.MediaType;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.persistence.Id;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Optional;

@RestController
public class ProductController {

    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @RequestMapping(value = {"/product"}, method = RequestMethod.POST , consumes = MediaType.APPLICATION_JSON_VALUE)
    public ModelAndView addProducts(@ModelAttribute("product") Product product, BindingResult bindingResult, HttpServletRequest request, RedirectAttributes redirectAttributes) {
        ModelAndView model = new ModelAndView();
        Product product1 = productService.addProduct(product);
        String productName = product1.getProductName();
        System.out.println("product : " +productName);
        model.setViewName("dashboard");
        return model;
    }

    /*@RequestMapping(value = {"/getProduct/{name}"}, method = RequestMethod.GET)
    public ModelAndView listProducts(@ModelAttribute("product") String name, ModelAndView modelAndView) {
        List<Product> product1 = productService.listProduct(name);
        modelAndView.setViewName("product");
        return modelAndView;
    }*/

    @RequestMapping(value = {"/getProduct"}, method = RequestMethod.GET)
    public List<Product> viewProducts(@ModelAttribute("product") String productName){
        List<Product> productList = productService.getAllProduct();
        System.out.println("product list : " + productList);
        return productList;
    }

    @RequestMapping(value = {"/updateProduct"}, method = RequestMethod.PUT)
    public ModelAndView updateProducts(@ModelAttribute("product") Product product, ModelAndView modelAndView) {
        Product product1 = productService.updateProducts(product);
        System.out.println("Güncellenmeden önce : " + product + " Güncellemeden sonra" + product1);
        modelAndView.setViewName("product");
        return modelAndView;
    }
    @RequestMapping(value = {"/deletedProduct/{productId}"}, method = RequestMethod.DELETE)
    public ModelAndView deleteProducts(@ModelAttribute("product") @PathVariable("productId") Long id, ModelAndView modelAndView) {
        productService.deleteProduct(id);
        modelAndView.setViewName("product");
        return modelAndView;
    }
    @RequestMapping(value = {"/product_detail/{productId}"}, method = RequestMethod.GET)
    public Product productDetail(@ModelAttribute("product") @PathVariable("productId") Long id){
        Product productDetail = productService.listProduct(id);
        System.out.println("product list : " + productDetail);
        return productDetail;
    }
}
