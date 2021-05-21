package com.ecommerce.service;

import com.ecommerce.Exception.UserNotFoundException;
import com.ecommerce.model.Admin;
import com.ecommerce.repository.AdminRepository;
import org.springframework.stereotype.Service;

@Service
public class AdminService {

    private AdminRepository adminRepository;

    public AdminService(AdminRepository adminRepository) {
        this.adminRepository = adminRepository;
    }

    public Admin login(Admin admin) {

        String username = admin.getUsername();
        String password = admin.getPassword();

        Admin findByUsername = adminRepository.findByUsernameAndPassword(username, password);

        if (findByUsername == null){
            throw new UserNotFoundException();
        }
        return findByUsername;
    }
}
