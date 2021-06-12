package com.ecommerce.service;

import com.ecommerce.domain.Product;
import com.ecommerce.repository.ProductRepository;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class ProductService {

    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public Product addProduct(Product product) {

        Product savedProduct = productRepository.save(product);

        return savedProduct;
    }

    public void deleteProduct(Long id) {
        productRepository.deleteById(id);
    }

    public Product updateProducts(Product product) {
        Product updatedProduct = productRepository.save(product);
        product.setProductName(updatedProduct.getProductName());
        product.setCategory(updatedProduct.getCategory());
        product.setPrice(updatedProduct.getPrice());
        product.setStock(updatedProduct.getStock());
        product.setDescription(updatedProduct.getDescription());
        return  updatedProduct;
    }
    public Product listProduct(Long id) {
        Product listedProduct = productRepository.findById(id).get();;
        return listedProduct;
    }

    public List<Product> getAllProduct() {
        List<Product> getAll = productRepository.findAll();
        return getAll;
    }

    public Product findOne(Long id) {
        return productRepository.findById(id).get();
    }
}