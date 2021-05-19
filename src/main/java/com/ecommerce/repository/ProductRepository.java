package com.ecommerce.repository;

import com.ecommerce.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product , String> {

    Product findByCategoryAndId(String category,long id);
    Product findByProductName(String productName);
}
