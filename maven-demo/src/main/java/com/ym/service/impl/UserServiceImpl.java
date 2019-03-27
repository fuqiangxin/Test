package com.ym.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.ym.dao.IUserDao;
import com.ym.entity.User;
import com.ym.service.IUserService;

public class UserServiceImpl implements IUserService {

	private Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
	@Autowired
	private IUserDao userDao;

	@Override
	public List<User> selectAllUser() {
		logger.info("²éÑ¯ËùÓÐ.......");
		List<User> users = userDao.selectAllUser();
		for (User user : users) {
			System.out.println(user.getUser_name());
		}
		logger.info("all the users={}", users);
		return null;
	}

}
