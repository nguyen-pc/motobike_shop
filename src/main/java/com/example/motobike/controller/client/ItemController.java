package com.example.motobike.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.motobike.domain.Product;
import com.example.motobike.service.ProductService;

@Controller
public class ItemController {

    private final ProductService productService;

    public ItemController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/product/{id}")
    public String getMethodName(Model model, @PathVariable long id) {
        Product product = this.productService.fetchProductById(id).get();
        System.out.println(">>>>>>>>>>" + product);
        // System.out.println(user);
        model.addAttribute("product", product);
        model.addAttribute("id", id);

        return "/client/product/detail";
    }
}
