package com.ahmadarif.authserver.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {
    
    @PreAuthorize("isAuthenticated()")
    @GetMapping("/api/user/me")
    @ResponseBody
    public Authentication currentUser(Authentication auth){
        return auth;
    }
    
    @RequestMapping("/login")
    public void loginPage(){}
    
    @PreAuthorize("isAuthenticated()")
    @RequestMapping("/home")
    public ModelMap homepage(Authentication currentUser){
        return new ModelMap("user", currentUser);
    }
}