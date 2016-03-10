package com.packt.webstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	@RequestMapping(value = "/login")
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/loginfailed")
	public String failure(Model model) {
		model.addAttribute("error","true");
		return "login";
	}

	@RequestMapping(value = "/logout")
	public String logout() {
		return "redirect:welcome";
	}
		@RequestMapping(value = "/error-forbidden")
	public String forbidden() {
		return "error-forbidden";
	}
}
