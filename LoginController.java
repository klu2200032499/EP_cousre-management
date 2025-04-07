package com.klef.jfsd.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpSession;


@Controller
public class LoginController {

    @GetMapping("/")
    public String home() {
        return "signup";
    }
    @GetMapping("/home1")
    public String home1() {
        return "home1";
    }
    @GetMapping("/home2")
    public String home2() {
        return "home2";
    }
    @GetMapping("/loginA")
    public String loginPageA() {
        return "loginPageA"; 
    }
    @GetMapping("/loginS")
    public String loginPageS() {
        return "loginPageS"; 
    }
 
    @GetMapping("/signup1")
    public String signupPage() {
        return "signup"; 
    }
    @PostMapping("/signup")
    public String signup() {
       return "loginPage";
    }
    @GetMapping("/dashboard")
    public String dashboard() {
       return "dashboard";
    }
    @GetMapping("/profile")
    public String profile() {
       return "profile";
    }
    @GetMapping("/settings")
    public String settings() {
       return "settings";
    }
    @PostMapping("/logout")
    public String logout() {
        return "loginS"; 
    }
    @GetMapping("/dashboard1")
    public String dashboard1() {
       return "dashboard1";
    }
    @GetMapping("/profile1")
    public String profile1() {
       return "profile1";
    }
    @GetMapping("/settings1")
    public String settings1() {
       return "settings1";
    }

    
    


}
