package com.skilldistillery.houseplantchooser.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.houseplantchooser.data.DeviceDAO;
import com.skilldistillery.houseplantchooser.entities.Device;

@Controller
public class DeviceController {
	@Autowired
	private DeviceDAO deviceDAO;
	
	// CREATE
	@RequestMapping(path="addDevice.do", method=RequestMethod.POST)
	public String addDevice(Device device, Model model) {
		deviceDAO.addDevice(device);
		model.addAttribute("devices", deviceDAO.getAllDevices());
		return "deviceList";
	}
	
	@RequestMapping(path="addSilentDevice.do", method=RequestMethod.POST)
	public String addSilentDevice(Device device, Model model) {
		deviceDAO.addDevice(device);
		model.addAttribute("devices", deviceDAO.getAllDevices());
		return "deviceList";
	}

	//READ
	@RequestMapping(path="/", method=RequestMethod.GET)
	public String welcome(Model model) {
		model.addAttribute("devices", deviceDAO.getAllDevices());
		return "index";
	}
	
	@RequestMapping(path="viewDevices.do", method=RequestMethod.GET)
	public String viewDevices(Model model) {
		model.addAttribute("devices", deviceDAO.getAllDevices());
		return "deviceList";
	}
	
	// UPDATE
	@RequestMapping(path="updateDevice.do", method=RequestMethod.POST)
	public String updateDevice(Model model, Device device) {
		deviceDAO.updateDevice(device);
		model.addAttribute("devices", deviceDAO.getAllDevices());
		return "deviceList";
	}
	
	// DELETE
	@RequestMapping(path="deleteDevice.do", method=RequestMethod.POST)
	public String deleteDevice(Model model, int id) {
		deviceDAO.deleteDevice(deviceDAO.getDevice(id));
		model.addAttribute("devices", deviceDAO.getAllDevices());
		return "deviceList";
	}
}
