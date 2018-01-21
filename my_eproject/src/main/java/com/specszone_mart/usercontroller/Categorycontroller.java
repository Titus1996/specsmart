package com.specszone_mart.usercontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.specszone_mart.dao.Categorydao;
import com.specszone_mart.model.Category;

@Controller
public class Categorycontroller {

	@Autowired
		private Categorydao categoryDao;
		@RequestMapping("/category")
		   public String getProductPage(Model model)
		   {
			model.addAttribute("category", new Category());
			 model.addAttribute("categories",categoryDao.getAllCategory());
			 return "category";  
		   }
		 @RequestMapping(value="/addCategory", method=RequestMethod.POST)
		   public String getAddProductPage(@ModelAttribute("category")Category category)
		   {
			 categoryDao.addCategory(category);
			
			 return "redirect:/category";
		  }
		   @RequestMapping(value="/editcategory/{id}")
		   public ModelAndView editCategory(@PathVariable int id)
		   {
		ModelAndView mv=new ModelAndView("Category");
		mv.addObject("category",categoryDao.getCategoryById(id));
		return mv;
		   }	  
		   @RequestMapping(value="/deletecategory/{id}",method=RequestMethod.GET)
		   public String deleteCategory(@PathVariable int id)
			   {
			   categoryDao.delete(id);
			   return "redirect:/category";
			   }

}
