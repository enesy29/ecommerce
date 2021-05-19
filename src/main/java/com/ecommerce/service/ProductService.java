package com.ecommerce.service;

import com.ecommerce.model.Product;

public interface ProductService {

    Product addProduct(Product product);
    Product deleteProduct(Product product);
    Product updateProduct(Product product);
    Product listProduct(Product product);
}
