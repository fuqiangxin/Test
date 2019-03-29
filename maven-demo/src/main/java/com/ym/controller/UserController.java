package com.ym.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ym.entity.User;
import com.ym.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private IUserService userService;

	@ResponseBody
	@RequestMapping("/selectAllUser")
	public List<User> selectAllUser() {
		return userService.selectAllUser();
	}

	@ResponseBody
	@RequestMapping("/saveUser")
	public boolean saveUser(User user) {
		return userService.saveUser(user);
	}
}
