package com.ecommerce.service;

import com.ecommerce.model.User;
import com.ecommerce.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public User saveUser(User user) {

        System.out.println("Kaydedilecek kullancı :" + user);

        User savedUser = userRepository.save(user);

        System.out.println("Database'e yazıldıktan sonraki kullanıcı : " + savedUser);

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
    public User findUserByUsername(String username) {
        return userRepository.findByUsername(username);
    }
}
