package com.ecommerce.service;

import com.ecommerce.domain.ShoppingCart;
import com.ecommerce.domain.User;
import com.ecommerce.repository.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserService {

    private static final Logger LOG = LoggerFactory.getLogger(UserService.class);

    @Autowired
    private UserRepository userRepository;

    public User saveUser(User user) {
        User savedUser = userRepository.findByUsername(user.getUsername());
        ShoppingCart shoppingCart = new ShoppingCart();
        shoppingCart.setUser(user);
        user.setShoppingCart(shoppingCart);
        savedUser = userRepository.save(user);
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
    public User findByEmail (String email) {
        return userRepository.findByEmail(email);
    }

}
