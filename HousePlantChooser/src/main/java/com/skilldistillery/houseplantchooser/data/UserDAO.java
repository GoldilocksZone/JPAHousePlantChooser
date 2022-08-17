package com.skilldistillery.houseplantchooser.data;

import java.util.List;

import com.skilldistillery.houseplantchooser.entities.User;

public interface UserDAO {
	void addUser(User user);
	User getUser(int id);
	boolean validateUserPassword(String password);
	List<User> getAllUsers();
	void updateUser(User user);
	void deleteUser(User user);
}
