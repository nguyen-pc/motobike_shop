package com.example.motobike.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.motobike.domain.Order;
import com.example.motobike.repository.OrderDetailRepository;
import com.example.motobike.repository.OrderRepository;

@Service
public class OrderService {
    private final OrderRepository orderRepository;
    private final OrderDetailRepository orderDetailRepository;

    public OrderService(OrderDetailRepository orderDetailRepository, OrderRepository orderRepository){
        this.orderDetailRepository = orderDetailRepository;
        this.orderRepository = orderRepository;
    }

    public Page<Order> fetchAllOrders(Pageable page){
        return this.orderRepository.findAll(page);
    }
}
