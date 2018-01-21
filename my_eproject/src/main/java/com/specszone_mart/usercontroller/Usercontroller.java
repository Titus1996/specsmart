package com.specszone_mart.usercontroller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.specszone_mart.dao.Userdao;
import com.specszone_mart.model.User;
 
@Controller
public class Usercontroller {
	@Autowired
	 private Userdao userDao;

   @RequestMapping("/signin")
    public String signin()
     {
       return "signin";	
     }

   @RequestMapping("/register")
      public String viewRegistration(Model model) 
     {
	    model.addAttribute("user", new User());  
        model.addAttribute("Users",userDao.getAllUser());
        return "signup";
    }
	
     @RequestMapping(value="/register",method = RequestMethod.POST)
    public String processRegistration(@ModelAttribute("user") User user,Model model)
    {
    	System.out.println("firstname: " + user.getFirstname());
    	System.out.println("lastname: " + user.getLastname());
    	System.out.println("username: " + user.getUsername());
        System.out.println("password: " + user.getPassword());
        System.out.println("confirmpassword: " + user.getConfirmpassword());
        System.out.println("email: " + user.getEmail());
        System.out.println("contactno : " + user.getContactno());
        model.addAttribute("user",new User());
        model.addAttribute("Users",userDao.getAllUser());
        return "registeredpage";
    }
     

@RequestMapping("/update")
public String getUserpage(@ModelAttribute("user") User user, Model model) {
	model.addAttribute("user",new User());
	model.addAttribute("Users",userDao.getAllUser());
    return "redirect:/registeredpage";
}

@RequestMapping("/add")
public String getpage(@ModelAttribute("user") User user,BindingResult result,Model model)
{
	if(result.hasErrors())
	{
	model.addAttribute("user",user);
	model.addAttribute("Users",userDao.getAllUser());
	List<User> Users=userDao.getAllUser();
	return "signup";
	}
	userDao.addUser(user);
	return "redirect:/update";
	}

}