package com.ecommerce.repository;

import com.ecommerce.domain.CartItem;
import com.ecommerce.domain.ProductToCartItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface ProductToCartItemRepository extends JpaRepository<ProductToCartItem, Long> {
    void deleteProductToCartItemByCartItem(CartItem cartItem);
}
