package com.ecommerce.service;

import com.ecommerce.model.Product;
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

        System.out.println("Kaydedilecek product :" + product);

        Product savedProduct = productRepository.save(product);

        System.out.println("Database'e yazıldıktan sonraki product : " + savedProduct);

        return savedProduct;
    }

    public void deleteProduct(Long id) {
        productRepository.deleteById(id);
        System.out.println("Product silindi " + id);
    }

    public Product updateProducts(Product product) {
        Product updatedProduct = productRepository.save(product);
        product.setProductName(updatedProduct.getProductName());
        product.setCategory(updatedProduct.getCategory());
        product.setPrice(updatedProduct.getPrice());
        product.setDescription(updatedProduct.getDescription());

        System.out.println("Product güncellendi : " + updatedProduct);
        return  updatedProduct;
    }
    public Product listProduct(Long id) {
        Product listedProduct = productRepository.findById(id).get();;
        System.out.println("listed" + listedProduct);
        return listedProduct;
    }

    public List<Product> getAllProduct() {
        List<Product> getAll = productRepository.findAll();
        return getAll;
    }
}