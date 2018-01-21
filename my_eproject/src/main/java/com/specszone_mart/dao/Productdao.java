package com.specszone_mart.dao;
import java.util.List;
import com.specszone_mart.model.Product;
public interface Productdao {
	// all functions of product 1.add 2.all products 3.get product by id 4. list all product 5. delete a product
	
	public Product addProduct(Product product);
    public Product getProductById(int id); 
    public List<Product> getAllProduct();
    public void delete(int id);

}
