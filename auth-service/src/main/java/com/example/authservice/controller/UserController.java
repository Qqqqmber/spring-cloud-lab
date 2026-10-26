package com.example.authservice.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;
import java.util.Map;

@RestController
@RequestMapping("/users")
public class UserController {

    @GetMapping("/me")
    public ResponseEntity<?> getMyProfile(Authentication authentication) {
        String email = authentication.getName(); // Берет email из JWT токена
        return ResponseEntity.ok(Map.of(
            "email", email,
            "message", "Вы успешно зашли в защищенную зону!"
        ));
    }
}