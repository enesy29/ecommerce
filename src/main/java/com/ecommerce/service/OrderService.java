package com.ecommerce.service;

import com.ecommerce.domain.*;
import com.ecommerce.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.Calendar;
import java.util.List;


@Service
public class OrderService {
    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private CartItemService cartItemService;

    public synchronized Order createOrder(ShoppingCart shoppingCart,User user) {
        Order order = new Order();

        List<CartItem> cartItemList = cartItemService.findByShoppingCart(shoppingCart);

        for(CartItem cartItem : cartItemList) {
            Product product = cartItem.getProduct();
            cartItem.setOrder(order);
            product.setStock(product.getStock() - cartItem.getQty());
        }

        order.setCartItemList(cartItemList);
        order.setOrderDate(LocalDate.now());
        order.setOrderTotal(shoppingCart.getGrandTotal());
        order.setUser(user);
        order = orderRepository.save(order);
        return order;
    }

    public Order findOne(Long id) {
        return orderRepository.findById(id).get();
    }

}
