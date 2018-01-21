package com.specszone_mart.dao;
import java.util.List;
import com.specszone_mart.model.User;

public interface Userdao {
	// functions of user to 1.add a new user 2.update a user 3.update a existing user 4.get a user by id  5.to list all users 
	public void addUser(User user);
	public void updateUser(User user);
	public User getUserById(int id);
	public List<User> getAllUser();

}
