package com.skilldistillery.houseplantchooser.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.houseplantchooser.data.DeviceDAO;
import com.skilldistillery.houseplantchooser.data.LightLevelDAO;
import com.skilldistillery.houseplantchooser.data.LightReadingDAO;
import com.skilldistillery.houseplantchooser.data.PlantDAO;
import com.skilldistillery.houseplantchooser.data.UserDAO;
import com.skilldistillery.houseplantchooser.entities.Device;
import com.skilldistillery.houseplantchooser.entities.Plant;

@Controller
public class LocationController {
	@Autowired
	private LightReadingDAO lrDAO;
	@Autowired
	private LightLevelDAO llDAO;
	@Autowired
	private PlantDAO plantDAO;
	@Autowired
	private DeviceDAO deviceDAO;
	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping(path="auth.do")
	public String goAuth() {
		return "auth";
	}
	
	@RequestMapping(path="dev.do", method=RequestMethod.POST)
	public String goDev(Model model, @RequestParam String password) {
		if (userDAO.validateUserPassword(password)) {
			return "dev";
		} else {
			model.addAttribute("message", "Authentication failed.");
			return "auth";
		}
	}
	
	@RequestMapping(path="about.do")
	public String goAbout() {
		return "about";
	}
	
	@RequestMapping(path="viewLocation.do")
	public String viewLocation(Model model, @RequestParam int deviceId) {
		Integer averageReading = lrDAO.getAverageDaytimeLightReading(deviceId);
		String lightCategory = llDAO.getCategoryFromLightLevel(averageReading);
		List<Plant> plantList = plantDAO.getPlantListFromAverageReading(averageReading);
		Device device = deviceDAO.getDevice(deviceId);
		model.addAttribute("averageReading", averageReading.intValue());
		model.addAttribute("lightCategory", lightCategory);
		model.addAttribute("plantList", plantList);
		model.addAttribute("device", device);
		return "locationInfo";
	}
}
