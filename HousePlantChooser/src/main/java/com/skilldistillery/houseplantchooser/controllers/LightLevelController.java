package com.skilldistillery.houseplantchooser.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.houseplantchooser.data.LightLevelDAO;

@Controller
public class LightLevelController {
	@Autowired
	private LightLevelDAO llDAO;
	
	@RequestMapping(path="viewLightLevels.do", method=RequestMethod.GET)
	public String viewLightLevels(Model model) {
		model.addAttribute("lightLevels", llDAO.findAll());
		return "lightLevelList";
	}

}
