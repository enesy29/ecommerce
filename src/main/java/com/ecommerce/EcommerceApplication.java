package com.ecommerce;

import com.ecommerce.domain.User;
import com.ecommerce.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class EcommerceApplication implements CommandLineRunner {
	@Autowired
	private UserService userService;

	public static void main(String[] args) {
		SpringApplication.run(EcommerceApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		/*User user = new User();
		user.setName("Enes");
		user.setSurname("Yakut");
		user.setUsername("enes");
		user.setEmail("enesyakut29@gmail.com");
		user.setPassword("enes");
		userService.saveUser(user);*/
	}
}
