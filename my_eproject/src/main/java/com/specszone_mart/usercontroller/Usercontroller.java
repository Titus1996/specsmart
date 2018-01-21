package com.specszone_mart.usercontroller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.specszone_mart.dao.Userdao;
import com.specszone_mart.model.User;
 
@Controller
public class Usercontroller {
	
	@Autowired
	 private Userdao userDao;

   @RequestMapping(value="/signin")
	public String login(Model model)
   { 
		return "signin";
	}

   @RequestMapping("/signup")
      public String viewRegistration(Model model) 
     { 
	  
	    model.addAttribute("user", new User());  
        model.addAttribute("Users",userDao.getAllUser());
        return "signup";
    }
	
     @RequestMapping("/registeredpage")
    public String processRegistration(@ModelAttribute("user") User user,Model model)
     {
        model.addAttribute("user",new User());
        model.addAttribute("Users",userDao.getAllUser());
        user.setRole("user");
        user.setEnabled(true);
        return "redirect:/home";
    }
     

      @RequestMapping("/update/{id}")
    public ModelAndView getUserpage(@PathVariable Integer id) {
	
	ModelAndView mv=new ModelAndView("User");
	mv.addObject("user",userDao.getUserById(id));
	mv.setViewName("signup");
	return mv;
	
        }

      @RequestMapping("/add")
     public String getpage(@ModelAttribute("user") User user,BindingResult result,Model model)
   {
	if(result.hasErrors())
	{
	model.addAttribute("user",user);
	model.addAttribute("Users",userDao.getAllUser());
	return "signup";
	}
	userDao.addUser(user);
	return "redirect:/registeredpage";
	}

    }