package com.specszone_mart.usercontroller;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.specszone_mart.dao.Productdao;
import com.specszone_mart.model.Category;
import com.specszone_mart.dao.Categorydao;
import com.specszone_mart.model.Product;

  @Controller
public class Productcontroller {// product controller
	
	@Autowired
	private Productdao productdao;
	@Autowired
	private Categorydao categoryDao;
	@Autowired
    private Product product;
    
	@RequestMapping("/productform")
	public String productform(@ModelAttribute("product") Product product,Model model)
	{
	model.addAttribute("product",new Product());
	model.addAttribute("products",productdao.getAllProduct());
	model.addAttribute("categories",categoryDao.getAllCategory());
	return "productform";
	}
	
	@RequestMapping(value="/addproduct",method=RequestMethod.POST)
	public String product(@ModelAttribute("product")Product product,Model model)
	{
		    System.out.println("HI ITS ME IN PRODUCT CONTROLLER");
		    product.setCategory(categoryDao.getCategoryById(product.getCategory().getId()));
			model.addAttribute("product",product);
			model.addAttribute("products",productdao.getAllProduct());
			List<Product> products = productdao.getAllProduct();
		    productdao.addProduct(product);
	        return "uploadFile";
	}
	 
	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	public String uploadFile(@RequestParam("file") MultipartFile file, HttpServletRequest request, Model model)
	{    
		model.addAttribute("uploadFile", product);
		model.addAttribute("uploadFiles", productdao.getAllProduct());
		List<Product> products = productdao.getAllProduct();
		String imagepath = request.getServletContext().getRealPath("/resources/productimages/");
		System.out.println("Directory:" + imagepath);
		Path path = Paths.get(imagepath + File.separator + product.getProductImage() + ".jpg");
		File imageFile = new File(path.toString());
		System.out.println("Path:" + path.toString());
		if (!imageFile.exists()) {
			imageFile.mkdirs();
			System.out.println("00000"); 
		}
		try {
			file.transferTo(imageFile);
			return "redirect:/productform";
			
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	    model.addAttribute("categories",categoryDao.getAllCategory());
		return "productform";
	}
	
	 @RequestMapping(value="/category",method = RequestMethod.POST)
	  public String product(@ModelAttribute("category") Category category, Model model)
	 {
      model.addAttribute("category", category);
      List<Category> categories = categoryDao.getAllCategory();
	  model.addAttribute("categories",categoryDao.getAllCategory());
	  categoryDao.addCategory(category);
	  return "redirect:/productform"; 
	  }
	
	@RequestMapping(value ="/editproduct/{id}")
	public ModelAndView editProduct(@PathVariable Integer id,Model model )
	{
		ModelAndView mv=new ModelAndView("Product");
		mv.addObject("product", productdao.getProductById(id));
	    model.addAttribute("categories",categoryDao.getAllCategory());
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
