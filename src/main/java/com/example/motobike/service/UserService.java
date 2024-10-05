package com.example.motobike.service;

import java.util.*;

import org.springframework.stereotype.Service;

import com.example.motobike.domain.User;
import com.example.motobike.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository){
        this.userRepository = userRepository;
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
}
