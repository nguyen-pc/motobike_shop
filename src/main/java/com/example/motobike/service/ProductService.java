package com.example.motobike.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.example.motobike.domain.Cart;
import com.example.motobike.domain.Product;
import com.example.motobike.domain.User;
import com.example.motobike.repository.CartRepository;
import com.example.motobike.repository.ProductRepository;
import com.example.motobike.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

@Service
public class ProductService {
    private final ProductRepository productRepository;
    private final UserService userService;
    private final CartRepository cartRepository;

    public ProductService(ProductRepository productRepository, UserService userService, CartRepository cartRepository) {
        this.productRepository = productRepository;
        this.userService = userService;
        this.cartRepository = cartRepository;
    }

    public List<Product> getAllProducts() {
        return this.productRepository.findAll();
    }

    public Product createProduct(Product product) {
        return this.productRepository.save(product);
    }

    public Optional<Product> fetchProductById(long id) {
        return this.productRepository.findById(id);
    }

    public void deleteProduct(long id) {
        this.productRepository.deleteById(id);
    }

    public void handleAddProductToCart(String email, long productId, HttpSession session, long quantity) {
        User user = this.userService.getUserByEmail(email);
        if (user != null) {
            Cart cart = this.cartRepository.findByUser(user);
        }
    }

}
