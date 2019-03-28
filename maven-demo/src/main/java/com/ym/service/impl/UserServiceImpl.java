package com.ym.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ym.dao.IUserDao;
import com.ym.entity.User;
import com.ym.service.IUserService;

@Service
public class UserServiceImpl implements IUserService {

	private Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
	@Autowired
	private IUserDao userDao;

	public UserServiceImpl() {
		System.out.println("jinlail");
	}

	public List<User> selectAllUser() {
		logger.info("查询所有.......");
		List<User> users = userDao.selectAllUser();
		for (User user : users) {
			System.out.println(user.getUser_name());
		}
		logger.info("all the users={}", users);
		return users;
	}

	public String testselect() {
		return "恒成立";
	}


}
