package com.ecommerce.repository;

import com.ecommerce.domain.Order;
import com.ecommerce.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface OrderRepository extends JpaRepository<Order, Long> {
}
