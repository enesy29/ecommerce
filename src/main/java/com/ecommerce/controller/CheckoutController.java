package com.ecommerce.controller;

import com.ecommerce.domain.CartItem;
import com.ecommerce.domain.Order;
import com.ecommerce.domain.ShoppingCart;
import com.ecommerce.domain.User;
import com.ecommerce.service.CartItemService;
import com.ecommerce.service.OrderService;
import com.ecommerce.service.ShoppingCartService;
import com.ecommerce.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.List;

@RestController
public class CheckoutController {
    @Autowired
    private CartItemService cartItemService;
    @Autowired
    private ShoppingCartService shoppingCartService;
    @Autowired
    private OrderService orderService;

    @RequestMapping("/checkout")
    public ModelAndView getCheckout(ModelAndView modelAndView , Model model , Long cartId , HttpSession session){
        User user = (User) session.getAttribute("userSession");
        List<CartItem> cartItemList = cartItemService.findByShoppingCart(user.getShoppingCart());
        ShoppingCart shoppingCart = user.getShoppingCart();
        model.addAttribute("cartItemList", cartItemList);
        model.addAttribute("shoppingCart", user.getShoppingCart());
        model.addAttribute("pageType","/WEB-INF/jsp/checkout.jsp");
        modelAndView.setViewName("main");
        return modelAndView;
    }

    @RequestMapping(value = "/checkout/success",method = RequestMethod.POST)
    public ModelAndView postCheckout(ModelAndView modelAndView , Model model , HttpSession session){
        User user = (User) session.getAttribute("userSession");
        ShoppingCart shoppingCart = user.getShoppingCart();
        List<CartItem> cartItemList = cartItemService.findByShoppingCart(shoppingCart);
        model.addAttribute("cartItemList", cartItemList);
        Order order = orderService.createOrder(shoppingCart,user);
        shoppingCartService.clearShoppingCart(shoppingCart);
        LocalDate today = LocalDate.now();
        modelAndView.setViewName("redirect:/profile");
        return modelAndView;
    }
}
