package com.skilldistillery.houseplantchooser.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.houseplantchooser.data.PlantDAO;

@Controller
public class PlantController {
	@Autowired
	private PlantDAO plantDAO;

	@RequestMapping(path = "viewPlants.do", method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("plants", plantDAO.findAll());
		return "plantList";
	}

}
