package com.example.motobike.service;

import java.util.*;

import org.springframework.stereotype.Service;

import com.example.motobike.domain.Role;
import com.example.motobike.domain.User;
import com.example.motobike.repository.RoleRepository;
import com.example.motobike.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository){
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }
    
    public List<User> getAllUsers(){
        return this.userRepository.findAll();
    }

    public User handleSaveUser(User user){
        return this.userRepository.save(user);
    }

    public User getUserById(long id){
        return this.userRepository.findById(id);
    }
    
    public void deleteUser(long id){
        this.userRepository.deleteById(id);
    }

    public User getUserByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }

    public boolean checkEmailExist(String email) {
        return this.userRepository.existsByEmail(email);
    }
}
