package com.ecommerce.service;

import com.ecommerce.model.User;

public interface UserService {

    User saveUser(User user);

    User login(User user);

    User updateUser(User user);
}
