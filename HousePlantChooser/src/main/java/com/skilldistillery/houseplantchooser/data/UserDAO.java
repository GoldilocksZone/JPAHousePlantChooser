package com.skilldistillery.houseplantchooser.data;

import java.util.List;

import com.skilldistillery.houseplantchooser.entities.User;

public interface UserDAO {
	List<User> findAll();
}
