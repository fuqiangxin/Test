package com.ym.dao;

//import java.util.Date;

import java.util.List;

import org.junit.Test;

//import org.junit.runner.RunWith;

import org.slf4j.Logger;

import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;

import com.ym.entity.User;

//import org.springframework.test.context.ContextConfiguration;
//
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

//import static org.junit.Assert.*;

//import org.junit.Test;

//@RunWith(SpringJUnit4ClassRunner.class)

//@ContextConfiguration({ "classpath:spring-mybatis.xml" })
public class IUserDaoTest {
	private Logger logger = LoggerFactory.getLogger(IUserDaoTest.class);

	@Autowired
	private IUserDao userDao;

	@Test
	public void test() {
		List<User> users = userDao.selectAllUser();
		for (User user : users) {
			System.out.println(user.getUser_name());
		}
		System.out.println("123");
		logger.info("all the users={}", users);
	}

}
