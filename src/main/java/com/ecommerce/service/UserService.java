package com.ecommerce.service;

import com.ecommerce.domain.ShoppingCart;
import com.ecommerce.domain.User;
import com.ecommerce.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public User saveUser(User user) {
        ShoppingCart shoppingCart = new ShoppingCart();
        shoppingCart.setUser(user);
        user.setShoppingCart(shoppingCart);
        User savedUser = userRepository.save(user);
        return savedUser;
    }

    public User login(User user) {
        String username = user.getUsername();
        String password = user.getPassword();
        User findByUsername = userRepository.findByUsernameAndPassword(username, password);
        return findByUsername;
    }
    public User updateUser(User user,Long id){
        User updatedUser = userRepository.findById(id).get();
        updatedUser.setName(user.getName());
        updatedUser.setSurname(user.getSurname());
        updatedUser.setUsername(user.getUsername());
        updatedUser.setEmail(user.getEmail());
        updatedUser.setPassword(user.getPassword());
        return userRepository.save(updatedUser);
    }
    public User getUser(Long id){
        User getUser = userRepository.findById(id).get();
        return getUser;
    }
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    public User findById(Long id){
        return userRepository.findById(id).get();
    }

    public User findByEmail (String email) {
        return userRepository.findByEmail(email);
    }
}
