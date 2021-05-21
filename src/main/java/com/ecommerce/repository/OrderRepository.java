package com.ecommerce.repository;

import com.ecommerce.model.Order;
import org.springframework.data.jpa.repository.JpaRepository;

import javax.persistence.Id;

public interface OrderRepository extends JpaRepository<Order, Long> {
}
