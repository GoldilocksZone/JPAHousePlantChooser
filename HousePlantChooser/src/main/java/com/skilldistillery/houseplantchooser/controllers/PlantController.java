package com.skilldistillery.houseplantchooser.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.houseplantchooser.data.PlantDAO;
import com.skilldistillery.houseplantchooser.entities.Plant;

@Controller
public class PlantController {
	@Autowired
	private PlantDAO plantDAO;
	
	// CREATE
	@RequestMapping(path="addPlant.do", method=RequestMethod.POST)
	public String addPlant(Plant plant, Model model) {
		plantDAO.addPlant(plant);
		model.addAttribute("plants", plantDAO.getAllPlants());
		return "plantList";
	}
	
	@RequestMapping(path="addSilentPlant.do", method=RequestMethod.POST)
	public String addSilentPlant(Plant plant, Model model) {
		plantDAO.addPlant(plant);
		model.addAttribute("plants", plantDAO.getAllPlants());
		return "plantList";
	}

	//READ
	@RequestMapping(path="viewPlants.do", method=RequestMethod.GET)
	public String viewPlants(Model model) {
		model.addAttribute("plants", plantDAO.getAllPlants());
		return "plantList";
	}
	
	// UPDATE
	@RequestMapping(path="updatePlant.do", method=RequestMethod.POST)
	public String updatePlant(Model model, Plant plant) {
		plantDAO.updatePlant(plant);
		model.addAttribute("plants", plantDAO.getAllPlants());
		return "plantList";
	}
	
	// DELETE
	@RequestMapping(path="deletePlant.do", method=RequestMethod.POST)
	public String deletePlant(Model model, int id) {
		plantDAO.deletePlant(plantDAO.getPlant(id));
		model.addAttribute("plants", plantDAO.getAllPlants());
		return "plantList";
	}

}
