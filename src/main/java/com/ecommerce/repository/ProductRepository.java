package com.ecommerce.repository;

import com.ecommerce.domain.Product;
import org.springframework.data.jpa.repository.JpaRepository;


public interface ProductRepository extends JpaRepository<Product , Long > {
}
