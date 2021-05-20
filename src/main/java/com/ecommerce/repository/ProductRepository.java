package com.ecommerce.repository;

import com.ecommerce.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product , Long > {

    //Product findById(Long id);
    List<Product> findByProductName(String productName);
    //Product deleteById(Long id);
    //Product updateProduct(Product product);
}
