package com.ecommerce.model;

import javax.persistence.*;

@Entity
@Table(name = "orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id ;
    private double totalPrice;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public double getTotalPrice(double sum) {
        return totalPrice;
    }

    public Object setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
        return null;
    }
}
