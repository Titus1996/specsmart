package com.specszone_mart.dao;

import java.util.List;
import com.specszone_mart.model.Category;

public interface Categorydao {
	
	public void addCategory(Category category);
	public List<Category> getAllCategory();
	public Category  getCategoryById(int  id);
	public  void delete(int id);

}
