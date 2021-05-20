package com.ecommerce.service;

import com.ecommerce.model.Order;
import com.ecommerce.model.User;
import com.ecommerce.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;

public class OrderService {

    @Autowired
    private UserRepository userRepository;

    public void buyProducts(Order order, User user) {

        // List<Order> orderList = user.getOrderList();
        // orderList.add(order);

        boolean admin = user.isAdmin();
        userRepository.save(user);
    }

}
