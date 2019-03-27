package com.ym.dao;

import java.util.List;

import com.ym.entity.User;

public interface IUserDao {

	List<User> selectAllUser();
}
