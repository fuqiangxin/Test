package com.ym.service;

import java.util.List;

import com.ym.entity.User;

public interface IUserService {
	List<User> selectAllUser();
	String testselect();
}
