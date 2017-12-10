package com.specszone_mart.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller
public class Registercontroller {
	@RequestMapping("/register")
     
    public String viewRegistration(Model model) 
     {
        User userForm = new User();    
        model.addAttribute("userForm", userForm);   
        return "signup";
    }
	
     @RequestMapping(value ="/register",method = RequestMethod.POST)
    public String processRegistration(@ModelAttribute("userForm") User user)
    {
    	System.out.println("name: " + user.getFirstname());
    	System.out.println("name: " + user.getLastname());
    	System.out.println("username: " + user.getUsername());
        System.out.println("password: " + user.getPassword());
        System.out.println("name: " + user.getConfirmpassword());
        System.out.println("email: " + user.getEmail());
        System.out.println("name: " + user.getContactno());
        return "registeredpage";
    }
}