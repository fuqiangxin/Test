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

	public List<User> selectAllUser() {
		logger.info("进入selectAllUser");
		List<User> users = userDao.selectAllUser();
		logger.info("all the users={}", users);
		return users;
	}

	public boolean saveUser(User user) {
		logger.info("进入saveUser(0");
		boolean isSaveflag = userDao.saveUser(user) == 1 ? true : false;
		logger.info("isSaveflag={}", isSaveflag);
		return isSaveflag;
	}

	public boolean updateUser() {
		logger.info("进入updateUser()");
		boolean isUpdateflag = userDao.updateUser() == 1 ? true : false;
		logger.info("isUpdateflag={}", isUpdateflag);
		return isUpdateflag;
	}

	public boolean dateleUser() {
		logger.info("进入dateleUser()");
		boolean isDateleflag = userDao.dateleUser() == 1 ? true : false;
		logger.info("isSaveflag={}", isDateleflag);
		return isDateleflag;
	}

	public User selectById() {
		logger.info("进入selectById()");
		User user = userDao.selectById();
		logger.info("select the user={}", user);
		return user;
	}

}
