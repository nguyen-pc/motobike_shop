package com.example.motobike.service;

import java.util.*;

import org.springframework.stereotype.Service;

import com.example.motobike.domain.Role;
import com.example.motobike.domain.User;
import com.example.motobike.domain.dto.RegisterDTO;
import com.example.motobike.repository.OrderRepository;
import com.example.motobike.repository.ProductRepository;
import com.example.motobike.repository.RoleRepository;
import com.example.motobike.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final ProductRepository productRepository;
    private final OrderRepository orderRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository,
            ProductRepository productRepository, OrderRepository orderRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.orderRepository = orderRepository;
        this.productRepository = productRepository;
    }

    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    public User handleSaveUser(User user) {
        return this.userRepository.save(user);
    }

    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    public void deleteUser(long id) {
        this.userRepository.deleteById(id);
    }

    public User getUserByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }

    public User registerDTOToUser(RegisterDTO registerDTO) {
        User user = new User();

        user.setFullName(registerDTO.getFirstName() + " " + registerDTO.getLastName());
        user.setEmail(registerDTO.getEmail());
        user.setPassword(registerDTO.getPassword());

        return user;
    }

    public boolean checkEmailExist(String email) {
        return this.userRepository.existsByEmail(email);
    }

    public long countUsers() {
        return this.userRepository.count();

    }

    public long countProducts() {
        return this.productRepository.count();
    }

    public long countOrders() {
        return this.orderRepository.count();
    }
}
