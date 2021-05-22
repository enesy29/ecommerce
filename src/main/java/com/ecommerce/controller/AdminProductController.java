package com.ecommerce.controller;

import com.ecommerce.model.Product;
import com.ecommerce.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import javax.validation.Valid;
import java.nio.file.Path;

@RestController
@RequestMapping("/admin")
public class AdminProductController {
    private Path path;

    @Autowired
    private ProductService productService;

    @RequestMapping(value = "/product/addProduct" , method = RequestMethod.GET)
    public ModelAndView showAddProduct(Model model){
        ModelAndView modelAndView = new ModelAndView();
        Product product = new Product();
        model.addAttribute("product",product);
        modelAndView.setViewName("addProduct");
        return modelAndView;
    }
    @RequestMapping(value = "/product/addProduct", method = RequestMethod.POST)
    public ModelAndView addProduct(@Valid @ModelAttribute("product")Product product,BindingResult result){
        ModelAndView modelAndView = new ModelAndView();

        if (result.hasErrors()){
            modelAndView.setViewName("addProduct");
            return modelAndView;
        }
        productService.addProduct(product);

       // MultipartFile productImage = product.getProductImage();
        modelAndView.setViewName("redirect:/admin/productInventory");
        return modelAndView;
    }
    @RequestMapping(value = "/product/editProduct/{productId}", method = RequestMethod.GET)
    public ModelAndView ShowEditProduct(@PathVariable("productId") Long id , Model model){
        ModelAndView modelAndView = new ModelAndView();
        Product product = productService.listProduct(id);
        model.addAttribute("product",product);
        modelAndView.setViewName("editProduct");
        return modelAndView;
    }
    @RequestMapping(value = "/product/editProduct",method = RequestMethod.POST)
    public ModelAndView editProduct(@Valid @ModelAttribute("product")Product product,BindingResult result){
        ModelAndView modelAndView = new ModelAndView();
        if (result.hasErrors()){
            modelAndView.setViewName("editProduct");
            return modelAndView;
        }

        productService.updateProducts(product);
        modelAndView.setViewName("redirect:/admin/productInventory");
        return modelAndView;
    }
    @RequestMapping("/product/deleteProduct/{id}")
    public ModelAndView deleteProduct(@PathVariable Long id,Model model){
        ModelAndView modelAndView = new ModelAndView();
        productService.deleteProduct(id);
        modelAndView.setViewName("redirect:/admin/productInventory");
        return modelAndView;
    }
}

