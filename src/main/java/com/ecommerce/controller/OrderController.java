package com.ecommerce.controller;

import com.ecommerce.global.GlobalData;
import com.ecommerce.model.Order;
import com.ecommerce.model.Product;
import com.ecommerce.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class OrderController {

    @Autowired
    private final OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @RequestMapping("/checkout")
    public ModelAndView checkout(GlobalData cart , ModelAndView modelAndView){
        modelAndView.addObject("cart",cart);
        modelAndView.setViewName("checkout");
        return modelAndView;
    }

    @RequestMapping(value = "/checkout/success",method = RequestMethod.POST)
    public ModelAndView checkoutPay(ModelAndView modelAndView, Order order, Model model){
        model.addAttribute("totalPrice",order.setTotalPrice(GlobalData.cart.stream().mapToDouble(Product::getPrice).sum()));
        orderService.addOrder(order);
        model.addAttribute("order",order);
        System.out.println("ödeme yapıldı : " + order);
        modelAndView.setViewName("redirect:/profile");
        return modelAndView;
    }
}
