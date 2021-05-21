package com.ecommerce.service;

import com.ecommerce.model.Order;
import com.ecommerce.model.User;
import com.ecommerce.repository.ProductRepository;
import com.ecommerce.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private ProductRepository productRepository;

    public void buyProducts(Order order, User user) {

         List<Order> orderList = order.getProduct().getOrderList();
         orderList.add(order);
         userRepository.save(user);
        //boolean admin = user.isAdmin();
    }


}
