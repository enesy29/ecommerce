package com.ecommerce.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;

@Entity
@Table(name = "order2")
public class Order {

    //OneToMany
    //OneToMany

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Long BasketId;
    private BigDecimal totalPrice;

    @ManyToOne
    @JoinColumn(name = "productId")
    private Product product;

    public Order() {
        super();
    }

    public Long getBasketId() {
        return BasketId;
    }

    public void setBasketId(Long basketId) {
        BasketId = basketId;
    }

    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(BigDecimal totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    @Override
    public String toString() {
        return "Order{" +
                "BasketId=" + BasketId +
                ", totalPrice=" + totalPrice +
                ", product=" + product +
                '}';
    }

    public Order(Long basketId, BigDecimal totalPrice, Product product) {
        BasketId = basketId;
        this.totalPrice = totalPrice;
        this.product = product;
    }

    //OneToMany
    //OneToMany


}
