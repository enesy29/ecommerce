package com.ecommerce.controller;

import com.ecommerce.model.Product;
import com.ecommerce.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/product")
public class ProductController {

    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @RequestMapping("/productList/all")
    public ModelAndView getProducts(Model model) {
        ModelAndView modelAndView = new ModelAndView();
        List<Product> products = productService.getAllProduct();
        model.addAttribute("products", products);
        modelAndView.setViewName("productList");
        return modelAndView;
    }

    @RequestMapping("/viewProduct/{productId}")
    public ModelAndView viewProduct(@PathVariable Long productId, Model model) throws IOException {
        ModelAndView modelAndView = new ModelAndView();
        Product product = productService.listProduct(productId);
        model.addAttribute("product", product);
        modelAndView.setViewName("viewProduct");
        return modelAndView;
    }

   /* @RequestMapping(value = {"/productList/all"}, method = RequestMethod.GET)
    public List<Product> viewProducts(@ModelAttribute("product") String productName){
        List<Product> productList = productService.getAllProduct();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("productList");
        System.out.println("product list : " + productList);
        return (List<Product>) modelAndView;
    }*/

    /*@RequestMapping(value = {"/product"}, method = RequestMethod.POST , consumes = MediaType.APPLICATION_JSON_VALUE)
    public ModelAndView addProducts(@ModelAttribute("product") Product product, BindingResult bindingResult, HttpServletRequest request, RedirectAttributes redirectAttributes) {
        ModelAndView model = new ModelAndView();
        Product product1 = productService.addProduct(product);
        String productName = product1.getProductName();
        System.out.println("product : " +productName);
        model.setViewName("dashboard");
        return model;
    }*/
    /*

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
    }*/
}
