package com.skilldistillery.houseplantchooser.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.houseplantchooser.data.LightReadingDAO;
import com.skilldistillery.houseplantchooser.entities.LightReading;

@Controller
public class LightReadingController {
	@Autowired
	private LightReadingDAO lrDAO;
	
	@RequestMapping(path="viewReadings.do", method=RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("readings", lrDAO.getAllReadings());
		return "readingList";
	}
	
	@RequestMapping(path="addReading.do", method=RequestMethod.POST)
	public String addReading(LightReading lightReading, Model model) {
		lrDAO.addReading(lightReading);
		model.addAttribute("readings", lrDAO.getAllReadings());
		return "readingList";
	}
	
	@RequestMapping(path="addSilentReading.do", method=RequestMethod.POST)
	public String addSilentReading(LightReading lightReading, Model model) {
		lrDAO.addReading(lightReading);
		model.addAttribute("readings", lrDAO.getAllReadings());
		return "readingList";
	}
}
