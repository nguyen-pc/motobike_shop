package com.example.motobike;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
// @SpringBootApplication(exclude =
// org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
public class MotobikeApplication {

	public static void main(String[] args) {
		SpringApplication.run(MotobikeApplication.class, args);
	}

}
