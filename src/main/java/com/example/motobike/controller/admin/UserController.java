package com.example.motobike.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {
    @GetMapping("/admin/user/show")
    public String getUserPageShow(Model model) {
        return "admin/user/show";
    }

    @GetMapping("/admin/user/create")
    public String getUserPageCreate(Model model) {
        return "admin/user/create";
    }
}
