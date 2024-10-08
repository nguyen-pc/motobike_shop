package com.example.motobike.domain.dto;

import com.example.motobike.service.validator.RegisterChecked;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Size;


@RegisterChecked
public class RegisterDTO {
    @Size(min = 3, message = "FirstName phai co toi thieu 3 ki tu")
    private String firstName;

    private String lastName;

    @Email(message = "Email Không hợp lệ", regexp = ".+[@].+[\\.].+")
    private String email;
    private String password;

    private String confirmPassword;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

}
