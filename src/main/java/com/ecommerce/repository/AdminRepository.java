package com.ecommerce.repository;

import com.ecommerce.domain.Admin;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminRepository extends JpaRepository<Admin,Long>{
    Admin findByUsernameAndPassword(String username, String password);
}
