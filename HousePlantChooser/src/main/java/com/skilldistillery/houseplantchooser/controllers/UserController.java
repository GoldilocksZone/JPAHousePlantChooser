package com.skilldistillery.houseplantchooser.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.houseplantchooser.data.UserDAO;
import com.skilldistillery.houseplantchooser.entities.User;

@Controller
public class UserController {
	@Autowired
	private UserDAO userDAO;
	
	// CREATE
	@RequestMapping(path="addUser.do", method=RequestMethod.POST)
	public String addUser(User user, Model model) {
		userDAO.addUser(user);
		model.addAttribute("users", userDAO.getAllUsers());
		return "userList";
	}
	
	@RequestMapping(path="addSilentUser.do", method=RequestMethod.POST)
	public String addSilentUser(User user, Model model) {
		userDAO.addUser(user);
		model.addAttribute("users", userDAO.getAllUsers());
		return "userList";
	}

	//READ
	@RequestMapping(path="viewUsers.do", method=RequestMethod.GET)
	public String viewUsers(Model model) {
		model.addAttribute("users", userDAO.getAllUsers());
		return "userList";
	}
	
	// UPDATE
	@RequestMapping(path="updateUser.do", method=RequestMethod.POST)
	public String updateUser(Model model, User user) {
		userDAO.updateUser(user);
		model.addAttribute("users", userDAO.getAllUsers());
		return "userList";
	}
	
	// DELETE
	@RequestMapping(path="deleteUser.do", method=RequestMethod.POST)
	public String deleteUser(Model model, int id) {
		userDAO.deleteUser(userDAO.getUser(id));
		model.addAttribute("users", userDAO.getAllUsers());
		return "userList";
	}
}
