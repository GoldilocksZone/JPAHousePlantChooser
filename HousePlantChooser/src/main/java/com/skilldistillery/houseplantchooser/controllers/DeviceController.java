package com.skilldistillery.houseplantchooser.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.houseplantchooser.data.DeviceDAO;

@Controller
public class DeviceController {
	@Autowired
	private DeviceDAO deviceDAO;
	
	@RequestMapping(path = "viewDevices.do", method=RequestMethod.GET)
	public String viewDevices(Model model) {
		model.addAttribute("devices", deviceDAO.findAll());
		return "deviceList";
	}
}
