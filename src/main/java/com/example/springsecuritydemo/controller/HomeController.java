package com.example.springsecuritydemo.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("/")
	public String getHome(Principal principal, Model model) {
		model.addAttribute("username", principal.getName());
		return "index";
	}
	
}
