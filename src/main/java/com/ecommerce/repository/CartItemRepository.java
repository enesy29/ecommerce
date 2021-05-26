package com.ecommerce.repository;

import com.ecommerce.domain.CartItem;
import com.ecommerce.domain.Order;
import com.ecommerce.domain.ShoppingCart;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface CartItemRepository extends JpaRepository<CartItem,Long> {
    List<CartItem> findByShoppingCart(ShoppingCart shoppingCart);
    List<CartItem> findByOrder(Order order);
}
