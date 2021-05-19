package com.ecommerce.service;

import com.ecommerce.model.User;
import com.ecommerce.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public User saveUser(User user) {

        System.out.println("Kaydedilecek kullancı :" + user);

        User savedUser = userRepository.save(user);

        System.out.println("Database'e yazıldıktan sonraki kullanıcı : " + savedUser);

        return savedUser;
    }

    @Override
    public User login(User user) {

        String username = user.getUsername();
        String password = user.getPassword();

        User findByUsername = userRepository.findByUsernameAndPassword(username, password);

        if(findByUsername == null){
            return null;
        }

        return findByUsername;
    }
}
