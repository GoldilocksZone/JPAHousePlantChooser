package com.skilldistillery.houseplantchooser.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.houseplantchooser.data.LightLevelDAO;
import com.skilldistillery.houseplantchooser.entities.LightLevel;

@Controller
public class LightLevelController {
	@Autowired
	private LightLevelDAO llDAO;
	
	// CREATE
	@RequestMapping(path="addLightLevel.do", method=RequestMethod.POST)
	public String addLightLevel(LightLevel lightLevel, Model model) {
		llDAO.addLightLevel(lightLevel);
		model.addAttribute("lightLevels", llDAO.getAllLightLevels());
		return "lightLevelList";
	}
	
	@RequestMapping(path="addSilentLightLevel.do", method=RequestMethod.POST)
	public String addSilentLightLevel(LightLevel lightLevel, Model model) {
		llDAO.addLightLevel(lightLevel);
		model.addAttribute("lightLevels", llDAO.getAllLightLevels());
		return "lightLevelList";
	}

	//READ
	@RequestMapping(path="viewLightLevels.do", method=RequestMethod.GET)
	public String viewLightLevels(Model model) {
		model.addAttribute("lightLevels", llDAO.getAllLightLevels());
		return "lightLevelList";
	}
	
	// UPDATE
	@RequestMapping(path="updateLightLevel.do", method=RequestMethod.POST)
	public String updateLightLevel(Model model, LightLevel lightLevel) {
		llDAO.updateLightLevel(lightLevel);
		model.addAttribute("lightLevels", llDAO.getAllLightLevels());
		return "lightLevelList";
	}
	
	// DELETE
	@RequestMapping(path="deleteLightLevel.do", method=RequestMethod.POST)
	public String deleteLightLevel(Model model, int id) {
		llDAO.deleteLightLevel(llDAO.getLightLevel(id));
		model.addAttribute("lightLevels", llDAO.getAllLightLevels());
		return "lightLevelList";
	}
}
