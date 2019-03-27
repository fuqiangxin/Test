package com.ym.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ym.entity.User;
import com.ym.service.IUserService;

@Controller
public class UserController {

	@Autowired
	private IUserService userService;

	@ResponseBody
	@RequestMapping(value = "/selectAllUser", method = RequestMethod.POST)
	public List<User> selectAllUser() {
		return userService.selectAllUser();
	}

	@RequestMapping("/")
	public String hello() {
		return "HELLO";
	}
}
