package com.ym.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ym.entity.User;

@Service
public interface IUserService {
	List<User> selectAllUser();
}
