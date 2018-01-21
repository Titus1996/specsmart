package com.specszone_mart.usercontroller;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.specszone_mart.dao.Productdao;
import com.specszone_mart.model.Product;

  @Controller
public class Productcontroller {      // product controller
	@Autowired
	private Productdao productdao;
	
	@RequestMapping("/productform")
	public String productform(@ModelAttribute("product") Product product,Model model){
	model.addAttribute("product",new Product());
	model.addAttribute("products",productdao.getAllProduct());
	return "productform";
	}
	
	@RequestMapping(value="/addproduct",method=RequestMethod.POST)
	public String product(@ModelAttribute("product")Product product, Model model) {
		model.addAttribute(product);
        model.addAttribute("product",new Product());
    	model.addAttribute("products",productdao.getAllProduct());
		List<Product>products= productdao.getAllProduct();
        productdao.addProduct(product);
        return "redirect:/productform";
	}
	
	@RequestMapping("/editproduct/{id}")
	public ModelAndView editProduct(@PathVariable Integer id)
	{
		ModelAndView mv=new ModelAndView("Product");
		mv.addObject("product", productdao.getProductById(id));
		mv.setViewName("productform");
		return mv;
	
	}
	@RequestMapping("/deleteproduct/{id}")
	public String deleteProduct(@PathVariable int id)
	{
		productdao.delete(id);
		return "redirect:/productform";
		
	}

}
