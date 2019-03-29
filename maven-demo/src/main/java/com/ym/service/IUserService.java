package com.ym.service;

import java.util.List;

import com.ym.entity.User;

public interface IUserService {
	boolean saveUser(User user);

	boolean updateUser();

	boolean dateleUser();

	User selectById();

	List<User> selectAllUser();
}
