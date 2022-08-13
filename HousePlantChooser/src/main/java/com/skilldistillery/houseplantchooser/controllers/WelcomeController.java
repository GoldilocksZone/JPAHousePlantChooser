package com.skilldistillery.houseplantchooser.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomeController {
	@RequestMapping(path="/")
	public String index() {
		return "index";
	}
}
