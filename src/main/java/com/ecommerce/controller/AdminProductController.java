package com.ecommerce.controller;

import com.ecommerce.domain.CartItem;
import com.ecommerce.domain.Order;
import com.ecommerce.domain.Product;
import com.ecommerce.domain.User;
import com.ecommerce.service.OrderService;
import com.ecommerce.service.ProductService;
import com.ecommerce.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import javax.validation.Valid;
import java.nio.file.Path;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/admin")
public class AdminProductController {
    private Path path;

    @Autowired
    private ProductService productService;
    @Autowired
    private OrderService orderService;

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/product/addProduct" , method = RequestMethod.GET)
    public ModelAndView showAddProduct(Model model){
        ModelAndView modelAndView = new ModelAndView();
        Product product = new Product();
        model.addAttribute("product",product);
        model.addAttribute("pageType","/WEB-INF/jsp/addProduct.jsp");
        modelAndView.setViewName("main");
        return modelAndView;
    }
    @RequestMapping(value = "/product/addProduct", method = RequestMethod.POST)
    public ModelAndView addProduct(@Valid @ModelAttribute("product")Product product,BindingResult result , Model model){
        ModelAndView modelAndView = new ModelAndView();

        if (result.hasErrors()){
            model.addAttribute("pageType","/WEB-INF/jsp/addProduct.jsp");
            modelAndView.setViewName("main");
            return modelAndView;
        }
        productService.addProduct(product);

        modelAndView.setViewName("redirect:/admin/productInventory");
        return modelAndView;
    }
    @RequestMapping(value = "/product/editProduct/{id}", method = RequestMethod.GET)
    public ModelAndView ShowEditProduct(@PathVariable("id") Long id , Model model){
        ModelAndView modelAndView = new ModelAndView();
        Product product = productService.listProduct(id);
        model.addAttribute("product",product);
        model.addAttribute("pageType","/WEB-INF/jsp/editProduct.jsp");
        modelAndView.setViewName("main");
        return modelAndView;
    }
    @RequestMapping(value = "/product/editProduct",method = RequestMethod.POST)
    public ModelAndView editProduct(@Valid @ModelAttribute("product")Product product,BindingResult result,Model model){
        ModelAndView modelAndView = new ModelAndView();
        if (result.hasErrors()){
            model.addAttribute("pageType","/WEB-INF/jsp/editProduct.jsp");
            modelAndView.setViewName("main");
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

    @RequestMapping("/allOrders")
    public ModelAndView allOrders(Model model , ModelAndView modelAndView) {

        User user = userService.getUser(Long.parseLong("1"));
        List<Order> orderList = user.getOrderList();
        List<Order> collect = orderList.stream().filter(Objects::nonNull).filter(order -> !CollectionUtils.isEmpty(order.getCartItemList())).collect(Collectors.toList());
        // List<List<CartItem>> collect1 = collect.stream().map(Order::getCartItemList).collect(Collectors.toList());

        model.addAttribute("allOrdersList", collect);
        model.addAttribute("pageType","/WEB-INF/jsp/allOrders.jsp");
        modelAndView.setViewName("main");
        return modelAndView;
    }
}

