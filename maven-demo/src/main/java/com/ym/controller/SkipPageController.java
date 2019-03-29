package com.ym.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/to")
public class SkipPageController {

	@RequestMapping("/add")
	public String addUser() {
		return "add";
	}

	@RequestMapping("/")
	public String index() {
		return "index";
	}
}
