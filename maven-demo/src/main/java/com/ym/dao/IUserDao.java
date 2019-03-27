package com.ym.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ym.entity.User;

@Repository
public interface IUserDao {

	List<User> selectAllUser();
}
